<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.8`](#redmine328)
-	[`redmine:3.2.8-passenger`](#redmine328-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.5`](#redmine335)
-	[`redmine:3.3.5-passenger`](#redmine335-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3.4.3`](#redmine343)
-	[`redmine:3.4.3-passenger`](#redmine343-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3`

```console
$ docker pull redmine@sha256:ca8b8bb623ee85cab201f891b11f7cba95df2d3ccec998d1bc779b2251804c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3` - linux; amd64

```console
$ docker pull redmine@sha256:33cff00098889f00d1da2d7ca77329d4bee0533b7ca524f23cad339c3f9ed953
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.8 MB (241843413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3e59647e48df1ff5d1858b3d6c432e8d4ca6861ab495e86a8ac02f65de6592`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_MAJOR=2.4
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_VERSION=2.4.2
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 13 Nov 2017 16:13:59 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:13:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:18:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:18:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:18:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:18:29 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:39:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:26 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:39:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:39:30 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:39:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:39:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:59 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:39:59 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 13 Nov 2017 17:40:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:42:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:42:24 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:42:24 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:42:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:42:28 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:42:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d01efe902ac83d7ece77d07b1ae734ae6c1a17dba7627f3aeea2c0970893cd`  
		Last Modified: Mon, 13 Nov 2017 16:56:21 GMT  
		Size: 24.7 MB (24691023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e51b00a9a59c7fa333a46e0f593064a28007b574c2f716950619d6fda16b745`  
		Last Modified: Mon, 13 Nov 2017 16:56:10 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c743c043442da02714d3ba47b228d20cc1c6d40f598e1e8b10dfbf6eeda471ac`  
		Last Modified: Mon, 13 Nov 2017 17:50:38 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcf3c9e769a791cd897f3d2f4158b1b5ff7f259b631c122a96f21764475941d`  
		Last Modified: Mon, 13 Nov 2017 17:50:43 GMT  
		Size: 14.7 MB (14650354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bf4ee5ba98ead1720021cf7e4ac3a7a63fffd81c9771b0d663ffe9e149415f`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7ee5d63d9f8b75e4f790873957fe599cad3c797af0fffce2effbeb7ace7ee`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d2214839a2daf9ad439a6c2a52bc3768e1c1d24468a8fcb021df370fd3be96`  
		Last Modified: Mon, 13 Nov 2017 17:50:50 GMT  
		Size: 59.2 MB (59230431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408b1174a85d904272395109d1fe4ac0d033f5792294d13c90410d9db5c88a2b`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b5b81a236af934557a82edc1866bb50f95197e7d306b62ecbd154eea162b9`  
		Last Modified: Mon, 13 Nov 2017 17:50:33 GMT  
		Size: 2.4 MB (2449736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a98275aa7769dcd42638bbbad8d326887595bad6bdaf186de172f38f93d01`  
		Last Modified: Mon, 13 Nov 2017 17:51:10 GMT  
		Size: 77.6 MB (77551212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce725ae048a1d5dc1e85d980b991f7e179c85f1f5856d404098fc1fd3cd1003`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:c58ba8d316e14483b3b6f23b53c79fdd3728a6ea5cc1e2fe5fd0103741ff162c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234966385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a4887dc975ca437e0a4be646fb6a66291af40a920bda54c7fdfeddc95b3737f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:44:40 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 01:44:56 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:44:56 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:50:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:50:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:50:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:50:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:50:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:50:53 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:33:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:34:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:34:07 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:34:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:34:10 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:34:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:35:13 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:35:13 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:35:13 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 02:35:14 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 02:35:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:39:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:39:37 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:39:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:39:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:39:38 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:39:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32ad7242f9d45dc718f186a9032b57309c959ef6182ccb95871075357d411ae`  
		Last Modified: Sat, 04 Nov 2017 02:13:47 GMT  
		Size: 24.4 MB (24447738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb21818c59252bbaea0d5e21f4adb71f1675c053f2caa486e3113d6ebc781e`  
		Last Modified: Sat, 04 Nov 2017 02:13:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff37693d58f14345f0d67375e7b3bd3adb51d3aa8b4954f7d714188399a64b8`  
		Last Modified: Sat, 04 Nov 2017 02:50:56 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aad99e52a1d8d289f29a6fa076a9a61b14163087ff280c9f7b25a67c0668cf5`  
		Last Modified: Sat, 04 Nov 2017 02:51:08 GMT  
		Size: 14.3 MB (14347298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459476f59fe501a44d107a3fbb366bcaa9905980749c658fc0c0140d10fc84fa`  
		Last Modified: Sat, 04 Nov 2017 02:50:56 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45f25b3c34574a5513c51de49eb5bb4c5c6b127fb53923023f13532381ecb8e`  
		Last Modified: Sat, 04 Nov 2017 02:50:55 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f5915648501ce9b5cb1fb3a4489470f40e403ef9a4d253e05076e19dd2bce6b`  
		Last Modified: Sat, 04 Nov 2017 02:51:13 GMT  
		Size: 56.6 MB (56571474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a2b4a7748b00d9078c08545c4c1298717cde05eb42fdb874f72e950ecedfc9`  
		Last Modified: Sat, 04 Nov 2017 02:50:53 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17a0764cdeb519514766cd245281e96b41a4b10cea89836f59ee86d253818f`  
		Last Modified: Sat, 04 Nov 2017 02:50:53 GMT  
		Size: 2.5 MB (2450381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2703ae2fb29a899f3673ce57c24b78538512881efdb287a128d019451842ac3d`  
		Last Modified: Sat, 04 Nov 2017 02:51:55 GMT  
		Size: 76.7 MB (76653946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16d7f00e51edfbb8ab24500d4555f23452b02a069db1f714c8ba6d1c936969b`  
		Last Modified: Sat, 04 Nov 2017 02:50:52 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:92260caf8dde5abc96a18e9fba224d0275a2076172ce07760ff12f0d0f3016d4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229243942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9fdf4aa33cc698d6351f54ee0e80a5de5562e78699feb3a85e37fcb2d81cac0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:34:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:34:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 01:32:53 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:32:54 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:38:20 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:38:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:38:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:38:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:38:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:38:23 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:26:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:27:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:27:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:27:21 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:27:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:28:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:28:18 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:28:18 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:28:18 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 02:28:19 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 02:28:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:32:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:32:28 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:32:29 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:32:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:32:29 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:32:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45e4d864a6c60ee4b4a2032ca433fc05d96194e7180016527572da21c44f227`  
		Last Modified: Tue, 10 Oct 2017 01:02:32 GMT  
		Size: 8.8 MB (8761230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30bf1114e281150fe7b59eee2ce7a038a378c4970714ec63009a763b78eb919`  
		Last Modified: Tue, 10 Oct 2017 01:02:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f6c1352d70098c258e5d2d95f4b53b79839a3f541cb6c3d692b496733f25b6`  
		Last Modified: Sat, 04 Nov 2017 02:03:11 GMT  
		Size: 24.3 MB (24310987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdf27dff091ec1c87d75e53ba95608fd8165aabeb33d9438a8807d1b9bb59c`  
		Last Modified: Sat, 04 Nov 2017 02:03:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a09f24fdf3dbffb07414700cad6343cdc3662d4f5d5bd3fc32a18fea5b8e2d`  
		Last Modified: Sat, 04 Nov 2017 02:43:21 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375a5e573ac6e5daa9fa690caa6da210fb0e9b8730e96ad6b71623a51cc9afac`  
		Last Modified: Sat, 04 Nov 2017 02:43:24 GMT  
		Size: 14.1 MB (14134566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254f2f2b210f01002cda29a4f39ce26da42ae5e508d714b43cbb01b4d04548bc`  
		Last Modified: Sat, 04 Nov 2017 02:43:19 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143ec0fe9df7e060a8cf4de0615e3232abe972a71f2b22abc39660b07d822725`  
		Last Modified: Sat, 04 Nov 2017 02:43:20 GMT  
		Size: 7.3 KB (7309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4287b93ab1209a4b4bd64b99afd0d4f8359ff32097d7c1a2cd6be5a3466542a`  
		Last Modified: Sat, 04 Nov 2017 02:43:35 GMT  
		Size: 54.3 MB (54305169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e62b5ebc27f728e9eee04765cb833021457512f85d7f2a65bec5e1ca45178a`  
		Last Modified: Sat, 04 Nov 2017 02:43:18 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5279e08b852c87f0fc6bff49ce8fbb9c1b038aefbe4719d6017628562a7aaaf9`  
		Last Modified: Sat, 04 Nov 2017 02:43:20 GMT  
		Size: 2.5 MB (2450381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a966554102f63de8e9c01e7a932c5d59e02c3839afa3e8ce33781291a2abdcb7`  
		Last Modified: Sat, 04 Nov 2017 02:43:36 GMT  
		Size: 76.1 MB (76108353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ee5fee4307c3f70bb3602b32bb35925770dd886a1349eb5358f3b263ac0740`  
		Last Modified: Sat, 04 Nov 2017 02:43:18 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:5b5b4aa83ca96fd456f64609b6552d8028a1c6c63eb3f9d392d538d0cd4a08a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233888010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51e418a74c8c094f440dbc33c791200631900b5a9d4eb23d7668e029c4f1786a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 07:42:50 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 13 Nov 2017 22:21:29 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 22:21:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 22:30:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 22:30:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 22:30:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 22:30:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 22:30:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 22:30:58 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 23:46:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 23:46:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 23:46:54 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 23:46:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 23:46:59 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 23:47:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 23:49:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 23:49:22 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 23:49:24 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 23:49:25 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 13 Nov 2017 23:49:27 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 13 Nov 2017 23:49:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 23:59:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 23:59:43 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 23:59:44 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 23:59:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 23:59:45 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 23:59:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc299bd927f107bec6cb664121abce38fa8a4ee92b253ad2da8b316337f6f25e`  
		Last Modified: Mon, 13 Nov 2017 23:19:01 GMT  
		Size: 24.7 MB (24666271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933f07853810abe6ea7304d8749175f505866849fb11f28bd8f5c3bd0ffba32d`  
		Last Modified: Mon, 13 Nov 2017 23:18:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4361afaaca7e3171e1b1bca0830674126e6e7c2dd3e03e4421f661d88a096b6e`  
		Last Modified: Tue, 14 Nov 2017 00:24:34 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab81514ad54eafc4156888010bf60c759a81c1ecf9acc51df97d01bc2c8ed61`  
		Last Modified: Tue, 14 Nov 2017 00:24:41 GMT  
		Size: 14.5 MB (14462621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068fe489e486c6267e515e4eb3df3b69b6dd4ccb74240adcaf74848cc06baf9`  
		Last Modified: Tue, 14 Nov 2017 00:24:33 GMT  
		Size: 468.7 KB (468696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4c01259cfbad0495abfb2b4d96afe6d56f2ba41b327b7a51aecec3cd45c5ff`  
		Last Modified: Tue, 14 Nov 2017 00:24:32 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0315d7cf71c4f0b5dd7aa41b92cb2292aa8a6375c65d2ebc19ac5a3607e17143`  
		Last Modified: Tue, 14 Nov 2017 00:24:49 GMT  
		Size: 55.8 MB (55760350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8c3a072e70916a8a52c8e60b24e9b7a16cb1988cfcee6ab7b8a5854a24b1ed`  
		Last Modified: Tue, 14 Nov 2017 00:24:29 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbde5302321844fb4f57225ff75c92d18c43141692c7ad8dd1d6ee284d7f6c2`  
		Last Modified: Tue, 14 Nov 2017 00:24:30 GMT  
		Size: 2.4 MB (2449739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc61322cef5504068e38f94b54258403011eb640a5af29453835ec849071e61f`  
		Last Modified: Tue, 14 Nov 2017 00:24:51 GMT  
		Size: 76.8 MB (76805699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ef95b6535b31c25f12c9ccf1ec258cfa079a6267be11fdfeb9098841c726b7`  
		Last Modified: Tue, 14 Nov 2017 00:24:30 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:260cc0ad6add24266ad4e8d32e0315f94008a41f48cd5a42828a838dd2faf1b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245696917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7452a76a8b4cad95065b78d2777fd65d37fa2c37200766d5bf120b03b515d642`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 02:52:31 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 03:03:44 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 03:03:44 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 03:07:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 03:07:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 03:07:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 03:07:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 03:07:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 03:07:55 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 04:03:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 04:04:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:04:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 04:04:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 04:04:14 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 04:04:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 04:05:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:05:26 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 04:05:26 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 04:05:26 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 04:05:26 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 04:05:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 04:08:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 04:08:41 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 04:08:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 04:08:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 04:08:41 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 04:08:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7246b4d51c87e9fc2090f9371aaaed1b23937a1911cc5d0fecceb836667c8c5`  
		Last Modified: Sat, 04 Nov 2017 03:39:35 GMT  
		Size: 23.7 MB (23671130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d57d073af2320f8fe0658381109d89f14f7689faebe123a895b80f9929156`  
		Last Modified: Sat, 04 Nov 2017 03:39:28 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea9e6ae9b3571f8cec51f764c8a43d7e2e474a3a3390366270074c497017b92`  
		Last Modified: Sat, 04 Nov 2017 04:31:58 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e033b6ce1452a86143de189e1d8973eee1e6acd36bf19659aec62715555dd0`  
		Last Modified: Sat, 04 Nov 2017 04:32:03 GMT  
		Size: 14.8 MB (14817347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1836ed7036c3a47b9b87220c62dc7a2be02dac18f34412010a16a73a250151ac`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4e6f0ea6d9c16e511ca8dbecd05a87b821df22407787f6b3531dea8aee4b4c`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 8.6 KB (8563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ace09608a0ad4050963b9f6e57c594ca48a554efac8afb8d676ac62a16d26ae`  
		Last Modified: Sat, 04 Nov 2017 04:32:17 GMT  
		Size: 60.1 MB (60103887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad31b7c6c628bad3e601c22f81abfc18d14de1e63e3f6e1946f0a0aaf69f79f`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199571983f03b4e3ce47e6bfd28370bb4e35caad88b107c6449c732167f985b6`  
		Last Modified: Sat, 04 Nov 2017 04:32:02 GMT  
		Size: 2.4 MB (2449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685cfcdfab8d8a47e46b1ecd82f4a7ea0f30879c7475b4cbdbfa304ab61c1c0`  
		Last Modified: Sat, 04 Nov 2017 04:32:17 GMT  
		Size: 76.8 MB (76759991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47db838f4c0889eafd4e3eadbae73fb2a80bfd5dd7742b077da97f4e029348d`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:425097868bcfd027a032a1bdc1fc4ae2c469169c2a6c49957d032039de8d7956
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240427190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39c80feee00f2b9039484061653c0e0cb37a46b9a66b6490a3da005cc77d256a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:57:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:57:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 05:57:44 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 05:57:46 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 05:57:49 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 00:49:08 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 00:49:09 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 00:58:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 00:58:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 00:58:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 00:58:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 00:58:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 00:58:55 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 01:59:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:00:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:00:11 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:00:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:00:20 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:00:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:03:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:03:44 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:03:45 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:03:47 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 02:03:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 02:03:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:15:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:15:25 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:15:27 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:15:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:15:30 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:15:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40a8df7f5d8f2418b2f12762edbef8533b5871c7aaca1937e8db1d1506897ef`  
		Last Modified: Tue, 10 Oct 2017 06:49:02 GMT  
		Size: 10.1 MB (10133017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68873b9b142821a59413ab21afce04b7492c1b99141626f4d3d3fca54a1ffff1`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6593e28fc7d48cfd4522a059309020a78721f5c4075faec611161402b44e0564`  
		Last Modified: Sat, 04 Nov 2017 01:38:17 GMT  
		Size: 25.1 MB (25122107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70179f1b7f3cbd304455ce8acea5eab2310422082ed44619ee787028eb343e6`  
		Last Modified: Sat, 04 Nov 2017 01:38:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990ae2be35968be8b149618adeafb727501998c26057fd3e357f5fc099b4f294`  
		Last Modified: Sat, 04 Nov 2017 02:47:09 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08952f9338a5d409e505fdcc8c22ebc9d96662bbebdfaba8eeec6534c129d5f7`  
		Last Modified: Sat, 04 Nov 2017 02:47:10 GMT  
		Size: 14.7 MB (14720199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb06ae2f5e7087b36a1822bd9f6331ef7eaa2cbe45395e18d930216653c0f3b`  
		Last Modified: Sat, 04 Nov 2017 02:47:06 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa3097e13fbd5fdeada2348c44cbd660e446f4da19b782b296d6bd582910a83`  
		Last Modified: Sat, 04 Nov 2017 02:47:06 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e45c3b6765e3d3ea0ecbdad7e33d36cb1ca864126d82b72feb60beaa1092cd7`  
		Last Modified: Sat, 04 Nov 2017 02:47:20 GMT  
		Size: 58.1 MB (58098678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be27a82ba8f0ff3e91e1705f54e2cfde5120ed0efa76de8580fdd6c5afb46c2`  
		Last Modified: Sat, 04 Nov 2017 02:47:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d5d3c6e4b719d0972c27b5aefb202f09467986a9a802931f8b4999c15988b5`  
		Last Modified: Sat, 04 Nov 2017 02:47:04 GMT  
		Size: 2.5 MB (2450372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199337c5b82782921b57b94d487b2a9c60b6b25f0811aad53172f0d0347d0ed6`  
		Last Modified: Sat, 04 Nov 2017 02:47:19 GMT  
		Size: 77.6 MB (77610210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab799de0481f2009def9b5d1e0a5a24978f19d9b0d257512c1b31d082f84ad3`  
		Last Modified: Sat, 04 Nov 2017 02:47:03 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:db146e321ef9a2476999b3081e86a98bf20538449231e8a3e200c75251360f34
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244576568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe879a642c589b23761b0a1b3e994fae7916dce5dbf18338dd7eb3c44e70d8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:59:56 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 08:46:28 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 08:46:28 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 08:49:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 08:49:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 08:49:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 08:49:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 08:49:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 08:49:42 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 09:26:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 09:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:26:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:26:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 09:26:30 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 09:26:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 09:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:27:08 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 09:27:08 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 09:27:08 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 09:27:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 09:27:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 09:29:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 09:29:40 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 09:29:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 09:29:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 09:29:41 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 09:29:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfdf9be3e1a6a12a81ae49b4152d0b39604b66639ff7ecf036ef39befa5545f`  
		Last Modified: Sat, 04 Nov 2017 09:07:11 GMT  
		Size: 25.1 MB (25077028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a681b3fdcae698060da0eb4fcc2f1ad5d70baf512ef69e2dded3cde452998351`  
		Last Modified: Sat, 04 Nov 2017 09:07:04 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1c9c3b53a179bfc82a0b0b4085c033fa5b63fa3882daaf08975113dfb7a237`  
		Last Modified: Sat, 04 Nov 2017 09:36:01 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681ba562cef611e4b3a6aa4cb6d5af065a3e61467e7c74bc4200e014190df230`  
		Last Modified: Sat, 04 Nov 2017 09:36:03 GMT  
		Size: 14.8 MB (14815084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf13cfda2a1cfd5bf2f5e1c39db186cc412fe1bd766049ec6fbfe8e6e85d798`  
		Last Modified: Sat, 04 Nov 2017 09:35:59 GMT  
		Size: 486.8 KB (486820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbe843ab3cba5dec3e729fb1238282c5f41a4e3820fdace0b8131b6328b277d`  
		Last Modified: Sat, 04 Nov 2017 09:36:00 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e9dd5fcd1f515edf4c2dac82d3b4d972578abcf15de15015b6c96797ba9744`  
		Last Modified: Sat, 04 Nov 2017 09:36:09 GMT  
		Size: 59.1 MB (59082947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b662bbaaacb256281bb0bc59ddab006b35286532bd1709426d90e0fc2a384e`  
		Last Modified: Sat, 04 Nov 2017 09:35:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31633319256ee73d7a52b1702916cf1ba342527a1c7b850ab7406121062f4089`  
		Last Modified: Sat, 04 Nov 2017 09:35:59 GMT  
		Size: 2.4 MB (2449720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ec0adf4f3e220fcc8ec6888c75b884448071d39ea341f3210bf6daf39c8185`  
		Last Modified: Sat, 04 Nov 2017 09:36:09 GMT  
		Size: 79.9 MB (79902938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3113d8efdc225f8429dac842e6ccae9a6fc1937609e620934fb866ddce2e868`  
		Last Modified: Sat, 04 Nov 2017 09:35:58 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:3dd249df71476899a87f7aed6f4cd48e2267f8a63b51ddad67b2ed4faa363bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.2` - linux; amd64

```console
$ docker pull redmine@sha256:82d8e857e3313c44ffc70dc82a71eb4b0320dc6538e9050ba6dda990a8f686f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253027630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c8eb34f402741ccfe8d0ecf380f7c20bc007a124d82975583a448d56aca247`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_MAJOR=2.2
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_VERSION=2.2.8
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Mon, 13 Nov 2017 16:42:04 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:42:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:46:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:46:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:46:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:46:35 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:43:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:43:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:21 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:43:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:43:28 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:43:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:43:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:54 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:43:54 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:47:22 GMT
ENV REDMINE_VERSION=3.2.8
# Mon, 13 Nov 2017 17:47:23 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Mon, 13 Nov 2017 17:47:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:49:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:49:41 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:49:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:49:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:49:42 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:49:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b6609e6b69536fd7320e6b2f4dd27fbf12e627005fd9fc5c98aa00700b3870`  
		Last Modified: Mon, 13 Nov 2017 17:04:50 GMT  
		Size: 35.3 MB (35301255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71bf4f134e9b066b3f0ea4f129df86995ccaf74b867b407820f4a55caa80cb0`  
		Last Modified: Mon, 13 Nov 2017 17:04:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ee9491670223e582ea6d0b3d30475ea6d3f6bbda893326370f32b0a327d126`  
		Last Modified: Mon, 13 Nov 2017 17:52:21 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119b6280e17508f701210359bf0dad47c11422f5e44f3f9cbcee95faf901a8cf`  
		Last Modified: Mon, 13 Nov 2017 17:52:24 GMT  
		Size: 14.7 MB (14650334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08bd6933ac1192f1890fcf38a77bb2a399e3d664ecff47b445d55415df92b27`  
		Last Modified: Mon, 13 Nov 2017 17:52:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123c1e4837842d6b892b6661a1ef7a46f50ec4d6953281e0203e2b6e813db0b2`  
		Last Modified: Mon, 13 Nov 2017 17:52:19 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636cccb7755bbcef29f3fa15e45ba91c99d7b6f19734b440c7185d463ede0082`  
		Last Modified: Mon, 13 Nov 2017 17:52:28 GMT  
		Size: 59.2 MB (59230242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f8f7c97a5634b9b5b7f1c23a905aedbde2f3c0a8cbb08ef2dbb3451c118332`  
		Last Modified: Mon, 13 Nov 2017 17:52:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a144f556f97a418bd7a31a9714aa7b08f11284025dca0b36b0206a9fac0f511`  
		Last Modified: Mon, 13 Nov 2017 17:53:11 GMT  
		Size: 2.3 MB (2347003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1d7f9449d47678376493bd433a075e43cbc23feb042e61ee540b64941dcd97`  
		Last Modified: Mon, 13 Nov 2017 17:53:23 GMT  
		Size: 78.2 MB (78228148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e524ba22b0f5d42454257a6fa2c5d298b302afee53a7dbfdc9cb72f6c6055ab8`  
		Last Modified: Mon, 13 Nov 2017 17:53:11 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v5

```console
$ docker pull redmine@sha256:31fa0f840f39051b9941a6c625c81e2c441979654fbce6ae54ee04fcaa4e9de8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.3 MB (245306840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687b2fc337840ae8c4551b7c1686c84e4f8c561856a6bf22f744204e9d835169`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 01:06:53 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 02:04:51 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 02:04:51 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 02:09:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 02:09:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 02:09:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 02:09:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 02:09:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 02:09:13 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:39:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:40:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:40:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:40:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:40:31 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:40:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:41:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:41:27 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:41:28 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:46:08 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 04 Nov 2017 02:46:09 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 04 Nov 2017 02:46:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:50:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:50:38 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:50:39 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:50:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:50:39 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:50:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4d246fb52f7495e8dcdb66e27b622006ce2d94e2a78a573f7428b719926eab`  
		Last Modified: Sat, 04 Nov 2017 02:17:22 GMT  
		Size: 34.2 MB (34200161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90e097fa13e8e97e867b8d47271c8e5b7627fe2cd6dc6c4eccbaa9c88424a34`  
		Last Modified: Sat, 04 Nov 2017 02:17:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce6fafb28a3316dcef239f174501b88171110f698aaa513cfd067e26301d78`  
		Last Modified: Sat, 04 Nov 2017 02:52:32 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861d4cac5a37a0c22b97abce5a3a835dc54baf13592c6868a7ef76567053e002`  
		Last Modified: Sat, 04 Nov 2017 02:52:41 GMT  
		Size: 14.3 MB (14347279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5496153529c8c9ac53db70e7cab38fe909c7749c58d3d931879a9ee64dea8e4b`  
		Last Modified: Sat, 04 Nov 2017 02:52:31 GMT  
		Size: 491.1 KB (491129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c719882301a7bebcc46f0944faad2cf39a617ad58268ad2daa7c2b10b462770`  
		Last Modified: Sat, 04 Nov 2017 02:52:30 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b4a59c06781189fe27604ed71d82c6d9bf9743480257372240afc04a490719`  
		Last Modified: Sat, 04 Nov 2017 02:53:18 GMT  
		Size: 56.6 MB (56571232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04c8bf9d121c4172bca53d149d2093aac860e444a74355c19bf256a436246a1`  
		Last Modified: Sat, 04 Nov 2017 02:52:29 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edee46fa40e1f35bdba1a4526b4c6b6c3bf43f5c540c0905d16786e52e21c579`  
		Last Modified: Sat, 04 Nov 2017 02:53:50 GMT  
		Size: 2.3 MB (2347344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd28e6e5d2a0447b631b9065f48c00981b6edfa9f414f1c32fde5737230cdd51`  
		Last Modified: Sat, 04 Nov 2017 02:54:10 GMT  
		Size: 77.3 MB (77345273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5ca5a470a0058d128e0c3d2e422e84e375419d6cd5caa96de2f5d7f0618b6c`  
		Last Modified: Sat, 04 Nov 2017 02:53:47 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:2b2b6c3fe5b6ff616f9cc32d34498aea1df0f4868c3b1006aabd072f33231083
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239505666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af74c614edd3f8a3f5ade0e37245f9eabff69adc49e84254d88eb4101b9aa6d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:34:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:34:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:54:43 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:54:43 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:54:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 01:51:40 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:51:40 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:55:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:55:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:55:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:55:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:55:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:55:50 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:32:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:33:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:33:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:33:21 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:33:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:34:25 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:34:25 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:38:46 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 04 Nov 2017 02:38:47 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 04 Nov 2017 02:38:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:42:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:42:53 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:42:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:42:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:42:54 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:42:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45e4d864a6c60ee4b4a2032ca433fc05d96194e7180016527572da21c44f227`  
		Last Modified: Tue, 10 Oct 2017 01:02:32 GMT  
		Size: 8.8 MB (8761230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30bf1114e281150fe7b59eee2ce7a038a378c4970714ec63009a763b78eb919`  
		Last Modified: Tue, 10 Oct 2017 01:02:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0280372277b91c76287d83cb3e3247ee0c01296ee523d9db756e28a0f9e9a912`  
		Last Modified: Sat, 04 Nov 2017 02:10:07 GMT  
		Size: 34.0 MB (33978060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8b4cac1e575d6f2d74ad18f43437c9c403a5ca83634f1fc47aad3f03fdca8a`  
		Last Modified: Sat, 04 Nov 2017 02:09:54 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f5194a2821d21531ae4a68f297c81302af2931575a9d9f00ed9b96c88d3471`  
		Last Modified: Sat, 04 Nov 2017 02:44:15 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effb3601416a2fe25bb881076931015af85615c929384a852061c6efcc1150db`  
		Last Modified: Sat, 04 Nov 2017 02:44:19 GMT  
		Size: 14.1 MB (14134525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc24ddc623fa6c850ac1f4e6535d816e0ce2ad46305e44c9abf2e5a9d437df9d`  
		Last Modified: Sat, 04 Nov 2017 02:44:14 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52d4c8a58e17e305bfc3a254a667ebb72db37ba396ea62a0d8138f7cfd7cdad`  
		Last Modified: Sat, 04 Nov 2017 02:44:14 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee9d7d8f9863837f6dff989b7c939db4c6227d88fa09275ddac31573c8492f1`  
		Last Modified: Sat, 04 Nov 2017 02:44:29 GMT  
		Size: 54.3 MB (54305114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461b665152bfe38fd16f16e84f198928b4de4c8cc6bb6347b92bb39b15779e2e`  
		Last Modified: Sat, 04 Nov 2017 02:44:13 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48522210349f989a27fe907200dd115762377e02b4ea691126603a8cfa272143`  
		Last Modified: Sat, 04 Nov 2017 02:44:53 GMT  
		Size: 2.3 MB (2347344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3a03f59e1a7a0c4471434bd4887243751895942a86b1afceb05f273a8334ed`  
		Last Modified: Sat, 04 Nov 2017 02:45:09 GMT  
		Size: 76.8 MB (76806138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b88fe346fb24c91c3e3df5d13e8e3a7645dedea2287922263476c94d07c317d`  
		Last Modified: Sat, 04 Nov 2017 02:44:52 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b932bb4a0428ed830709542f2272d21de86809472923f8e6233d12d544a93676
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.2 MB (245227181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f058ec8194b93a7e1b37a4a53c6d4899187e11d0717c0e30c926cb6e013a46`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 08:21:32 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Mon, 13 Nov 2017 22:59:57 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 22:59:58 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 23:07:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 23:07:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 23:07:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 23:07:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 23:07:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 23:07:23 GMT
CMD ["irb"]
# Tue, 14 Nov 2017 00:00:07 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 14 Nov 2017 00:00:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Nov 2017 00:00:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 14 Nov 2017 00:00:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 14 Nov 2017 00:00:44 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 14 Nov 2017 00:00:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 14 Nov 2017 00:03:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Nov 2017 00:03:16 GMT
ENV RAILS_ENV=production
# Tue, 14 Nov 2017 00:03:17 GMT
WORKDIR /usr/src/redmine
# Tue, 14 Nov 2017 00:14:31 GMT
ENV REDMINE_VERSION=3.2.8
# Tue, 14 Nov 2017 00:14:32 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Tue, 14 Nov 2017 00:14:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 14 Nov 2017 00:23:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 14 Nov 2017 00:23:57 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 14 Nov 2017 00:23:58 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 14 Nov 2017 00:23:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Nov 2017 00:23:59 GMT
EXPOSE 3000/tcp
# Tue, 14 Nov 2017 00:24:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934fc385be7af454467a50005bed557d538846e40ce8feb5ef38ce961798d500`  
		Last Modified: Mon, 13 Nov 2017 23:28:59 GMT  
		Size: 35.4 MB (35421589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c7c1d7e871af3a296550285f6f0615eafaa59016777994ec491be36bc2d76a`  
		Last Modified: Mon, 13 Nov 2017 23:28:42 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccba4a4e9065c78d6e416ccecc1d1d8b7731f71687088ce2d9dce74e7a152672`  
		Last Modified: Tue, 14 Nov 2017 00:26:07 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c183f78b31413e6b625be4d5d553bdb075a366753d61ed2208359ad7afc843da`  
		Last Modified: Tue, 14 Nov 2017 00:26:11 GMT  
		Size: 14.5 MB (14462601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fabce0ac3d15c7b770a0e312e01bc6d0bbc3c216727ec385b09147cd89368c`  
		Last Modified: Tue, 14 Nov 2017 00:26:05 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3983c6da7237ee9d46a30186badf21ce0ea5104e41f6a232d26b34d9ddeb61e2`  
		Last Modified: Tue, 14 Nov 2017 00:26:05 GMT  
		Size: 8.2 KB (8151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0381775d80781c64c6073c5b848cd3c71802ea431f57eaff899368a7012055fd`  
		Last Modified: Tue, 14 Nov 2017 00:26:27 GMT  
		Size: 55.8 MB (55760356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa18119084e48bc14c7e8fb8bef30c3b4e5022961f969b8aa73a3f820d42aa0a`  
		Last Modified: Tue, 14 Nov 2017 00:26:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5efc5c6f7379bf3b82817cd61f6716e57b4851e0e6ab05992b647a8fe6db44`  
		Last Modified: Tue, 14 Nov 2017 00:27:06 GMT  
		Size: 2.3 MB (2347002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee815e04cdfb5bebf64b3f4dfab45fb006615e37d1b020100a1feeea2cbef9c`  
		Last Modified: Tue, 14 Nov 2017 00:27:27 GMT  
		Size: 77.5 MB (77492285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718f4f7bf8d0fa744f9f808694762fafd0f8d7418a85818b5e3e01ed5423ea24`  
		Last Modified: Tue, 14 Nov 2017 00:27:05 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; 386

```console
$ docker pull redmine@sha256:93903e8cfafb65a9ddb14748fe384656dfd8d871562ba494a4842d1bc8ce4c1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255334713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab43818c3d0331ab1b489bca5da4626d24e067a62a3a38bcaf27d04521a188f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 03:28:18 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 03:28:18 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 03:32:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 03:32:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 03:32:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 03:32:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 03:32:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 03:32:07 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 04:13:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 04:14:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:14:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 04:14:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 04:14:47 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 04:14:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 04:16:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:16:07 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 04:16:07 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 04:25:01 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 04 Nov 2017 04:25:01 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 04 Nov 2017 04:25:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 04:28:03 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 04:28:03 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 04:28:04 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 04:28:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 04:28:04 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 04:28:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448ee724385756096dcc1c1a16cd80f6881a8b54d1ca81bfb93d231649ea8ff7`  
		Last Modified: Sat, 04 Nov 2017 03:44:24 GMT  
		Size: 32.7 MB (32747639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2f3031e83ec32db9133319a2261144a81dc2e4bdfdfb568c9c5968be57c948`  
		Last Modified: Sat, 04 Nov 2017 03:44:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a761d690df99c920d0a2ada6448ffdc3ce6dae308f8312e1209d6c24e45d5`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cc91c48753a3862824dfa1d10bd937d6d2a8e089c6db7d94947c2b0b926b00`  
		Last Modified: Sat, 04 Nov 2017 04:32:57 GMT  
		Size: 14.8 MB (14817266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85025c265ad456beb6c03f8a4daa983845f7fe92c99dc3e0d10dfa60a15b1759`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da56b9a8a2d195681542d76acfca07bbe089fb4930bb4ce06dd015d8c96882ca`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e21f0d26bb867f323586cabc307716a0c38382d2919a33a38f29cdb2b4100e`  
		Last Modified: Sat, 04 Nov 2017 04:33:11 GMT  
		Size: 60.1 MB (60105314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf363a3a1b3c91fdc21dab2278fed75ada8686524cb33f9f4f9d4b077561343`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322075688da8134e08b99e6def62ec2acad286bdf80683898e0a44177ebd12e9`  
		Last Modified: Sat, 04 Nov 2017 04:38:21 GMT  
		Size: 2.3 MB (2347005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1f8b30ef5b4380f2b77bbe087529a647419f9a9f5e7d5ff693b32a811f0295`  
		Last Modified: Sat, 04 Nov 2017 04:38:33 GMT  
		Size: 77.4 MB (77422645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd23185e1bf5d11e01c8405e18b06bab9bdbf95a128aa417ef45ebdc79bd7bc`  
		Last Modified: Sat, 04 Nov 2017 04:38:19 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:f853667e8ec7436d2b43fe915d5cd36a9a3ad83b547d661105f0bd8b18dc8f3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252174501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53eeab2488ddf5d03c75ec91fd15a8ab469011180a89569934cad14f8bff49c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:57:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:57:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 06:32:11 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 06:32:15 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 06:32:19 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 01:21:01 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:21:02 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:31:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:31:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:31:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:31:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:31:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:31:58 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:15:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:16:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:16:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:16:56 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:17:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:20:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:20:27 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:20:28 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:34:23 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 04 Nov 2017 02:34:24 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 04 Nov 2017 02:34:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:46:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:46:37 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:46:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:46:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:46:42 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:46:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40a8df7f5d8f2418b2f12762edbef8533b5871c7aaca1937e8db1d1506897ef`  
		Last Modified: Tue, 10 Oct 2017 06:49:02 GMT  
		Size: 10.1 MB (10133017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68873b9b142821a59413ab21afce04b7492c1b99141626f4d3d3fca54a1ffff1`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7538df14eeb45a14e5949db39712fd74d814d2f3cd4e75ecd3d51e56794318`  
		Last Modified: Sat, 04 Nov 2017 01:43:13 GMT  
		Size: 36.3 MB (36284365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc21282b1030513a92011deb0ebc6e9e280c89f283879832b20c91eb4a37a4d`  
		Last Modified: Sat, 04 Nov 2017 01:43:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f04258f22472023fc91c19a2b2020550a84663c8d0bbe11da089d7c0d0f23b`  
		Last Modified: Sat, 04 Nov 2017 02:48:02 GMT  
		Size: 2.1 KB (2115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e651c76525f5e7898df77256e95a8ba4d5af6c804ce0ece7b09ff1da2bf3abd5`  
		Last Modified: Sat, 04 Nov 2017 02:48:04 GMT  
		Size: 14.7 MB (14720478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a197839dde538bc947c7fabe5741da9f88518f195ed94079004ba50ad230e145`  
		Last Modified: Sat, 04 Nov 2017 02:48:00 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b2dcf9a8dfefec675e067067eb1752dbdf1fcc31fcfbddc613c7b3274deba7`  
		Last Modified: Sat, 04 Nov 2017 02:47:59 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ee38b15e929ed6436ba605ac5110a02738f52ba76d4ce52fe33f1ee81cd73e`  
		Last Modified: Sat, 04 Nov 2017 02:48:09 GMT  
		Size: 58.1 MB (58099092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5807a3f820c96c48f4a20d284d739dcfde6f2c119e80f22ea9892ae9f30fb6`  
		Last Modified: Sat, 04 Nov 2017 02:47:53 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7670a4d224ce96ffdc0b95991b2703787ba0d76087932da88838f68d3842b766`  
		Last Modified: Sat, 04 Nov 2017 02:48:30 GMT  
		Size: 2.3 MB (2347344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfb4ee8b900c3a1d999e13f23a5d10e37276e2493de2a6fa25b138f49c04084`  
		Last Modified: Sat, 04 Nov 2017 02:48:58 GMT  
		Size: 78.3 MB (78297588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b6c6b455ffee6c408bf7942cbec7efa5528db84bcb078165b4c9382fb262ad`  
		Last Modified: Sat, 04 Nov 2017 02:48:29 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; s390x

```console
$ docker pull redmine@sha256:d1e5105b08c2e83a7ebab2ceb564c49da369bae73de6a6f2fe5a41d440aa5cbc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (258972291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d39617e4a88c3cab6180c3135af75220ed4901c2fc94a32f3c4adbfe105e972`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:11:57 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 09:00:52 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 09:00:52 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 09:03:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 09:03:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 09:03:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 09:03:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 09:03:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 09:03:30 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 09:29:54 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 09:30:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:30:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:30:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 09:30:10 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 09:30:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 09:30:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:30:44 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 09:30:44 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 09:33:16 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 04 Nov 2017 09:33:16 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 04 Nov 2017 09:33:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 09:35:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 09:35:34 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 09:35:34 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 09:35:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 09:35:34 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 09:35:35 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba067d76ed070697423090b335cbb1792d0bbdd37983f45bc42f86754be2517`  
		Last Modified: Sat, 04 Nov 2017 09:10:16 GMT  
		Size: 38.9 MB (38935040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d198db528442a7615f43c0f5e93b50775faafbd45fab4b7f039f5c00781236`  
		Last Modified: Sat, 04 Nov 2017 09:10:06 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b3dff80b98801174e23f4d6681c456325cb70cd38f5ec218186836da4dfe9e`  
		Last Modified: Sat, 04 Nov 2017 09:36:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4ed8ecd8b2fcddf6f82ae521bd8faf515cfbbd9c501b6399b95b83b44650d8`  
		Last Modified: Sat, 04 Nov 2017 09:36:33 GMT  
		Size: 14.8 MB (14815038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50719c86cd4020cd83dd822bd82c9923ba66865d43d4b582bfe72164778b329`  
		Last Modified: Sat, 04 Nov 2017 09:36:30 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144e362f1c26b4ce0fd54f34068b75d8d5b64905d5de7eff97988aff93419b07`  
		Last Modified: Sat, 04 Nov 2017 09:36:31 GMT  
		Size: 8.6 KB (8619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83809599c243be0167ca70ed5b74b5301ce16562d29ca65f2bccc65de256ab8`  
		Last Modified: Sat, 04 Nov 2017 09:36:40 GMT  
		Size: 59.1 MB (59082937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f5d7dd64ef50cad8531c86a3adf8daaac5449afcd8445057b5d6961116bd6c`  
		Last Modified: Sat, 04 Nov 2017 09:36:29 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ac630b6f3086368068c490d1a22453835f19473a95c5072441b0f3843c21a7`  
		Last Modified: Sat, 04 Nov 2017 09:36:52 GMT  
		Size: 2.3 MB (2347004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf74c116300a84e1be5cbfa94e25f694cbb11e5d7307d318c4fb09ec82e96d83`  
		Last Modified: Sat, 04 Nov 2017 09:37:06 GMT  
		Size: 80.5 MB (80543426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e980ed6e474287733e5e4dd5a80096e98c24c558a8fa877da2254a02bda5eb88`  
		Last Modified: Sat, 04 Nov 2017 09:36:52 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.8`

```console
$ docker pull redmine@sha256:3dd249df71476899a87f7aed6f4cd48e2267f8a63b51ddad67b2ed4faa363bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.2.8` - linux; amd64

```console
$ docker pull redmine@sha256:82d8e857e3313c44ffc70dc82a71eb4b0320dc6538e9050ba6dda990a8f686f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253027630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c8eb34f402741ccfe8d0ecf380f7c20bc007a124d82975583a448d56aca247`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_MAJOR=2.2
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_VERSION=2.2.8
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Mon, 13 Nov 2017 16:42:04 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:42:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:46:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:46:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:46:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:46:35 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:43:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:43:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:21 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:43:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:43:28 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:43:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:43:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:54 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:43:54 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:47:22 GMT
ENV REDMINE_VERSION=3.2.8
# Mon, 13 Nov 2017 17:47:23 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Mon, 13 Nov 2017 17:47:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:49:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:49:41 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:49:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:49:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:49:42 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:49:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b6609e6b69536fd7320e6b2f4dd27fbf12e627005fd9fc5c98aa00700b3870`  
		Last Modified: Mon, 13 Nov 2017 17:04:50 GMT  
		Size: 35.3 MB (35301255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71bf4f134e9b066b3f0ea4f129df86995ccaf74b867b407820f4a55caa80cb0`  
		Last Modified: Mon, 13 Nov 2017 17:04:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ee9491670223e582ea6d0b3d30475ea6d3f6bbda893326370f32b0a327d126`  
		Last Modified: Mon, 13 Nov 2017 17:52:21 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119b6280e17508f701210359bf0dad47c11422f5e44f3f9cbcee95faf901a8cf`  
		Last Modified: Mon, 13 Nov 2017 17:52:24 GMT  
		Size: 14.7 MB (14650334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08bd6933ac1192f1890fcf38a77bb2a399e3d664ecff47b445d55415df92b27`  
		Last Modified: Mon, 13 Nov 2017 17:52:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123c1e4837842d6b892b6661a1ef7a46f50ec4d6953281e0203e2b6e813db0b2`  
		Last Modified: Mon, 13 Nov 2017 17:52:19 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636cccb7755bbcef29f3fa15e45ba91c99d7b6f19734b440c7185d463ede0082`  
		Last Modified: Mon, 13 Nov 2017 17:52:28 GMT  
		Size: 59.2 MB (59230242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f8f7c97a5634b9b5b7f1c23a905aedbde2f3c0a8cbb08ef2dbb3451c118332`  
		Last Modified: Mon, 13 Nov 2017 17:52:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a144f556f97a418bd7a31a9714aa7b08f11284025dca0b36b0206a9fac0f511`  
		Last Modified: Mon, 13 Nov 2017 17:53:11 GMT  
		Size: 2.3 MB (2347003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1d7f9449d47678376493bd433a075e43cbc23feb042e61ee540b64941dcd97`  
		Last Modified: Mon, 13 Nov 2017 17:53:23 GMT  
		Size: 78.2 MB (78228148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e524ba22b0f5d42454257a6fa2c5d298b302afee53a7dbfdc9cb72f6c6055ab8`  
		Last Modified: Mon, 13 Nov 2017 17:53:11 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm variant v5

```console
$ docker pull redmine@sha256:31fa0f840f39051b9941a6c625c81e2c441979654fbce6ae54ee04fcaa4e9de8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.3 MB (245306840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687b2fc337840ae8c4551b7c1686c84e4f8c561856a6bf22f744204e9d835169`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 01:06:53 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 02:04:51 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 02:04:51 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 02:09:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 02:09:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 02:09:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 02:09:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 02:09:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 02:09:13 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:39:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:40:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:40:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:40:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:40:31 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:40:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:41:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:41:27 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:41:28 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:46:08 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 04 Nov 2017 02:46:09 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 04 Nov 2017 02:46:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:50:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:50:38 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:50:39 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:50:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:50:39 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:50:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4d246fb52f7495e8dcdb66e27b622006ce2d94e2a78a573f7428b719926eab`  
		Last Modified: Sat, 04 Nov 2017 02:17:22 GMT  
		Size: 34.2 MB (34200161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90e097fa13e8e97e867b8d47271c8e5b7627fe2cd6dc6c4eccbaa9c88424a34`  
		Last Modified: Sat, 04 Nov 2017 02:17:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce6fafb28a3316dcef239f174501b88171110f698aaa513cfd067e26301d78`  
		Last Modified: Sat, 04 Nov 2017 02:52:32 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861d4cac5a37a0c22b97abce5a3a835dc54baf13592c6868a7ef76567053e002`  
		Last Modified: Sat, 04 Nov 2017 02:52:41 GMT  
		Size: 14.3 MB (14347279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5496153529c8c9ac53db70e7cab38fe909c7749c58d3d931879a9ee64dea8e4b`  
		Last Modified: Sat, 04 Nov 2017 02:52:31 GMT  
		Size: 491.1 KB (491129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c719882301a7bebcc46f0944faad2cf39a617ad58268ad2daa7c2b10b462770`  
		Last Modified: Sat, 04 Nov 2017 02:52:30 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b4a59c06781189fe27604ed71d82c6d9bf9743480257372240afc04a490719`  
		Last Modified: Sat, 04 Nov 2017 02:53:18 GMT  
		Size: 56.6 MB (56571232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04c8bf9d121c4172bca53d149d2093aac860e444a74355c19bf256a436246a1`  
		Last Modified: Sat, 04 Nov 2017 02:52:29 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edee46fa40e1f35bdba1a4526b4c6b6c3bf43f5c540c0905d16786e52e21c579`  
		Last Modified: Sat, 04 Nov 2017 02:53:50 GMT  
		Size: 2.3 MB (2347344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd28e6e5d2a0447b631b9065f48c00981b6edfa9f414f1c32fde5737230cdd51`  
		Last Modified: Sat, 04 Nov 2017 02:54:10 GMT  
		Size: 77.3 MB (77345273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5ca5a470a0058d128e0c3d2e422e84e375419d6cd5caa96de2f5d7f0618b6c`  
		Last Modified: Sat, 04 Nov 2017 02:53:47 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm variant v7

```console
$ docker pull redmine@sha256:2b2b6c3fe5b6ff616f9cc32d34498aea1df0f4868c3b1006aabd072f33231083
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239505666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af74c614edd3f8a3f5ade0e37245f9eabff69adc49e84254d88eb4101b9aa6d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:34:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:34:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:54:43 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:54:43 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:54:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 01:51:40 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:51:40 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:55:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:55:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:55:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:55:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:55:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:55:50 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:32:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:33:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:33:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:33:21 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:33:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:34:25 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:34:25 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:38:46 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 04 Nov 2017 02:38:47 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 04 Nov 2017 02:38:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:42:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:42:53 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:42:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:42:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:42:54 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:42:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45e4d864a6c60ee4b4a2032ca433fc05d96194e7180016527572da21c44f227`  
		Last Modified: Tue, 10 Oct 2017 01:02:32 GMT  
		Size: 8.8 MB (8761230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30bf1114e281150fe7b59eee2ce7a038a378c4970714ec63009a763b78eb919`  
		Last Modified: Tue, 10 Oct 2017 01:02:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0280372277b91c76287d83cb3e3247ee0c01296ee523d9db756e28a0f9e9a912`  
		Last Modified: Sat, 04 Nov 2017 02:10:07 GMT  
		Size: 34.0 MB (33978060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8b4cac1e575d6f2d74ad18f43437c9c403a5ca83634f1fc47aad3f03fdca8a`  
		Last Modified: Sat, 04 Nov 2017 02:09:54 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f5194a2821d21531ae4a68f297c81302af2931575a9d9f00ed9b96c88d3471`  
		Last Modified: Sat, 04 Nov 2017 02:44:15 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effb3601416a2fe25bb881076931015af85615c929384a852061c6efcc1150db`  
		Last Modified: Sat, 04 Nov 2017 02:44:19 GMT  
		Size: 14.1 MB (14134525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc24ddc623fa6c850ac1f4e6535d816e0ce2ad46305e44c9abf2e5a9d437df9d`  
		Last Modified: Sat, 04 Nov 2017 02:44:14 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52d4c8a58e17e305bfc3a254a667ebb72db37ba396ea62a0d8138f7cfd7cdad`  
		Last Modified: Sat, 04 Nov 2017 02:44:14 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee9d7d8f9863837f6dff989b7c939db4c6227d88fa09275ddac31573c8492f1`  
		Last Modified: Sat, 04 Nov 2017 02:44:29 GMT  
		Size: 54.3 MB (54305114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461b665152bfe38fd16f16e84f198928b4de4c8cc6bb6347b92bb39b15779e2e`  
		Last Modified: Sat, 04 Nov 2017 02:44:13 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48522210349f989a27fe907200dd115762377e02b4ea691126603a8cfa272143`  
		Last Modified: Sat, 04 Nov 2017 02:44:53 GMT  
		Size: 2.3 MB (2347344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3a03f59e1a7a0c4471434bd4887243751895942a86b1afceb05f273a8334ed`  
		Last Modified: Sat, 04 Nov 2017 02:45:09 GMT  
		Size: 76.8 MB (76806138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b88fe346fb24c91c3e3df5d13e8e3a7645dedea2287922263476c94d07c317d`  
		Last Modified: Sat, 04 Nov 2017 02:44:52 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b932bb4a0428ed830709542f2272d21de86809472923f8e6233d12d544a93676
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.2 MB (245227181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f058ec8194b93a7e1b37a4a53c6d4899187e11d0717c0e30c926cb6e013a46`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 08:21:32 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Mon, 13 Nov 2017 22:59:57 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 22:59:58 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 23:07:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 23:07:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 23:07:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 23:07:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 23:07:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 23:07:23 GMT
CMD ["irb"]
# Tue, 14 Nov 2017 00:00:07 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 14 Nov 2017 00:00:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Nov 2017 00:00:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 14 Nov 2017 00:00:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 14 Nov 2017 00:00:44 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 14 Nov 2017 00:00:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 14 Nov 2017 00:03:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Nov 2017 00:03:16 GMT
ENV RAILS_ENV=production
# Tue, 14 Nov 2017 00:03:17 GMT
WORKDIR /usr/src/redmine
# Tue, 14 Nov 2017 00:14:31 GMT
ENV REDMINE_VERSION=3.2.8
# Tue, 14 Nov 2017 00:14:32 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Tue, 14 Nov 2017 00:14:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 14 Nov 2017 00:23:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 14 Nov 2017 00:23:57 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 14 Nov 2017 00:23:58 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 14 Nov 2017 00:23:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Nov 2017 00:23:59 GMT
EXPOSE 3000/tcp
# Tue, 14 Nov 2017 00:24:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934fc385be7af454467a50005bed557d538846e40ce8feb5ef38ce961798d500`  
		Last Modified: Mon, 13 Nov 2017 23:28:59 GMT  
		Size: 35.4 MB (35421589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c7c1d7e871af3a296550285f6f0615eafaa59016777994ec491be36bc2d76a`  
		Last Modified: Mon, 13 Nov 2017 23:28:42 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccba4a4e9065c78d6e416ccecc1d1d8b7731f71687088ce2d9dce74e7a152672`  
		Last Modified: Tue, 14 Nov 2017 00:26:07 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c183f78b31413e6b625be4d5d553bdb075a366753d61ed2208359ad7afc843da`  
		Last Modified: Tue, 14 Nov 2017 00:26:11 GMT  
		Size: 14.5 MB (14462601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fabce0ac3d15c7b770a0e312e01bc6d0bbc3c216727ec385b09147cd89368c`  
		Last Modified: Tue, 14 Nov 2017 00:26:05 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3983c6da7237ee9d46a30186badf21ce0ea5104e41f6a232d26b34d9ddeb61e2`  
		Last Modified: Tue, 14 Nov 2017 00:26:05 GMT  
		Size: 8.2 KB (8151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0381775d80781c64c6073c5b848cd3c71802ea431f57eaff899368a7012055fd`  
		Last Modified: Tue, 14 Nov 2017 00:26:27 GMT  
		Size: 55.8 MB (55760356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa18119084e48bc14c7e8fb8bef30c3b4e5022961f969b8aa73a3f820d42aa0a`  
		Last Modified: Tue, 14 Nov 2017 00:26:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5efc5c6f7379bf3b82817cd61f6716e57b4851e0e6ab05992b647a8fe6db44`  
		Last Modified: Tue, 14 Nov 2017 00:27:06 GMT  
		Size: 2.3 MB (2347002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee815e04cdfb5bebf64b3f4dfab45fb006615e37d1b020100a1feeea2cbef9c`  
		Last Modified: Tue, 14 Nov 2017 00:27:27 GMT  
		Size: 77.5 MB (77492285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718f4f7bf8d0fa744f9f808694762fafd0f8d7418a85818b5e3e01ed5423ea24`  
		Last Modified: Tue, 14 Nov 2017 00:27:05 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; 386

```console
$ docker pull redmine@sha256:93903e8cfafb65a9ddb14748fe384656dfd8d871562ba494a4842d1bc8ce4c1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255334713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab43818c3d0331ab1b489bca5da4626d24e067a62a3a38bcaf27d04521a188f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 03:28:18 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 03:28:18 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 03:32:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 03:32:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 03:32:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 03:32:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 03:32:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 03:32:07 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 04:13:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 04:14:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:14:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 04:14:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 04:14:47 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 04:14:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 04:16:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:16:07 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 04:16:07 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 04:25:01 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 04 Nov 2017 04:25:01 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 04 Nov 2017 04:25:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 04:28:03 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 04:28:03 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 04:28:04 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 04:28:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 04:28:04 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 04:28:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448ee724385756096dcc1c1a16cd80f6881a8b54d1ca81bfb93d231649ea8ff7`  
		Last Modified: Sat, 04 Nov 2017 03:44:24 GMT  
		Size: 32.7 MB (32747639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2f3031e83ec32db9133319a2261144a81dc2e4bdfdfb568c9c5968be57c948`  
		Last Modified: Sat, 04 Nov 2017 03:44:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a761d690df99c920d0a2ada6448ffdc3ce6dae308f8312e1209d6c24e45d5`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cc91c48753a3862824dfa1d10bd937d6d2a8e089c6db7d94947c2b0b926b00`  
		Last Modified: Sat, 04 Nov 2017 04:32:57 GMT  
		Size: 14.8 MB (14817266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85025c265ad456beb6c03f8a4daa983845f7fe92c99dc3e0d10dfa60a15b1759`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da56b9a8a2d195681542d76acfca07bbe089fb4930bb4ce06dd015d8c96882ca`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e21f0d26bb867f323586cabc307716a0c38382d2919a33a38f29cdb2b4100e`  
		Last Modified: Sat, 04 Nov 2017 04:33:11 GMT  
		Size: 60.1 MB (60105314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf363a3a1b3c91fdc21dab2278fed75ada8686524cb33f9f4f9d4b077561343`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322075688da8134e08b99e6def62ec2acad286bdf80683898e0a44177ebd12e9`  
		Last Modified: Sat, 04 Nov 2017 04:38:21 GMT  
		Size: 2.3 MB (2347005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1f8b30ef5b4380f2b77bbe087529a647419f9a9f5e7d5ff693b32a811f0295`  
		Last Modified: Sat, 04 Nov 2017 04:38:33 GMT  
		Size: 77.4 MB (77422645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd23185e1bf5d11e01c8405e18b06bab9bdbf95a128aa417ef45ebdc79bd7bc`  
		Last Modified: Sat, 04 Nov 2017 04:38:19 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; ppc64le

```console
$ docker pull redmine@sha256:f853667e8ec7436d2b43fe915d5cd36a9a3ad83b547d661105f0bd8b18dc8f3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252174501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53eeab2488ddf5d03c75ec91fd15a8ab469011180a89569934cad14f8bff49c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:57:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:57:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 06:32:11 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 06:32:15 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 06:32:19 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 01:21:01 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:21:02 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:31:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:31:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:31:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:31:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:31:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:31:58 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:15:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:16:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:16:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:16:56 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:17:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:20:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:20:27 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:20:28 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:34:23 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 04 Nov 2017 02:34:24 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 04 Nov 2017 02:34:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:46:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:46:37 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:46:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:46:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:46:42 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:46:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40a8df7f5d8f2418b2f12762edbef8533b5871c7aaca1937e8db1d1506897ef`  
		Last Modified: Tue, 10 Oct 2017 06:49:02 GMT  
		Size: 10.1 MB (10133017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68873b9b142821a59413ab21afce04b7492c1b99141626f4d3d3fca54a1ffff1`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7538df14eeb45a14e5949db39712fd74d814d2f3cd4e75ecd3d51e56794318`  
		Last Modified: Sat, 04 Nov 2017 01:43:13 GMT  
		Size: 36.3 MB (36284365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc21282b1030513a92011deb0ebc6e9e280c89f283879832b20c91eb4a37a4d`  
		Last Modified: Sat, 04 Nov 2017 01:43:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f04258f22472023fc91c19a2b2020550a84663c8d0bbe11da089d7c0d0f23b`  
		Last Modified: Sat, 04 Nov 2017 02:48:02 GMT  
		Size: 2.1 KB (2115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e651c76525f5e7898df77256e95a8ba4d5af6c804ce0ece7b09ff1da2bf3abd5`  
		Last Modified: Sat, 04 Nov 2017 02:48:04 GMT  
		Size: 14.7 MB (14720478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a197839dde538bc947c7fabe5741da9f88518f195ed94079004ba50ad230e145`  
		Last Modified: Sat, 04 Nov 2017 02:48:00 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b2dcf9a8dfefec675e067067eb1752dbdf1fcc31fcfbddc613c7b3274deba7`  
		Last Modified: Sat, 04 Nov 2017 02:47:59 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ee38b15e929ed6436ba605ac5110a02738f52ba76d4ce52fe33f1ee81cd73e`  
		Last Modified: Sat, 04 Nov 2017 02:48:09 GMT  
		Size: 58.1 MB (58099092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5807a3f820c96c48f4a20d284d739dcfde6f2c119e80f22ea9892ae9f30fb6`  
		Last Modified: Sat, 04 Nov 2017 02:47:53 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7670a4d224ce96ffdc0b95991b2703787ba0d76087932da88838f68d3842b766`  
		Last Modified: Sat, 04 Nov 2017 02:48:30 GMT  
		Size: 2.3 MB (2347344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfb4ee8b900c3a1d999e13f23a5d10e37276e2493de2a6fa25b138f49c04084`  
		Last Modified: Sat, 04 Nov 2017 02:48:58 GMT  
		Size: 78.3 MB (78297588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b6c6b455ffee6c408bf7942cbec7efa5528db84bcb078165b4c9382fb262ad`  
		Last Modified: Sat, 04 Nov 2017 02:48:29 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; s390x

```console
$ docker pull redmine@sha256:d1e5105b08c2e83a7ebab2ceb564c49da369bae73de6a6f2fe5a41d440aa5cbc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (258972291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d39617e4a88c3cab6180c3135af75220ed4901c2fc94a32f3c4adbfe105e972`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:11:57 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 09:00:52 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 09:00:52 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 09:03:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 09:03:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 09:03:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 09:03:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 09:03:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 09:03:30 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 09:29:54 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 09:30:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:30:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:30:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 09:30:10 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 09:30:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 09:30:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:30:44 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 09:30:44 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 09:33:16 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 04 Nov 2017 09:33:16 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 04 Nov 2017 09:33:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 09:35:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 09:35:34 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 09:35:34 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 09:35:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 09:35:34 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 09:35:35 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba067d76ed070697423090b335cbb1792d0bbdd37983f45bc42f86754be2517`  
		Last Modified: Sat, 04 Nov 2017 09:10:16 GMT  
		Size: 38.9 MB (38935040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d198db528442a7615f43c0f5e93b50775faafbd45fab4b7f039f5c00781236`  
		Last Modified: Sat, 04 Nov 2017 09:10:06 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b3dff80b98801174e23f4d6681c456325cb70cd38f5ec218186836da4dfe9e`  
		Last Modified: Sat, 04 Nov 2017 09:36:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4ed8ecd8b2fcddf6f82ae521bd8faf515cfbbd9c501b6399b95b83b44650d8`  
		Last Modified: Sat, 04 Nov 2017 09:36:33 GMT  
		Size: 14.8 MB (14815038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50719c86cd4020cd83dd822bd82c9923ba66865d43d4b582bfe72164778b329`  
		Last Modified: Sat, 04 Nov 2017 09:36:30 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144e362f1c26b4ce0fd54f34068b75d8d5b64905d5de7eff97988aff93419b07`  
		Last Modified: Sat, 04 Nov 2017 09:36:31 GMT  
		Size: 8.6 KB (8619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83809599c243be0167ca70ed5b74b5301ce16562d29ca65f2bccc65de256ab8`  
		Last Modified: Sat, 04 Nov 2017 09:36:40 GMT  
		Size: 59.1 MB (59082937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f5d7dd64ef50cad8531c86a3adf8daaac5449afcd8445057b5d6961116bd6c`  
		Last Modified: Sat, 04 Nov 2017 09:36:29 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ac630b6f3086368068c490d1a22453835f19473a95c5072441b0f3843c21a7`  
		Last Modified: Sat, 04 Nov 2017 09:36:52 GMT  
		Size: 2.3 MB (2347004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf74c116300a84e1be5cbfa94e25f694cbb11e5d7307d318c4fb09ec82e96d83`  
		Last Modified: Sat, 04 Nov 2017 09:37:06 GMT  
		Size: 80.5 MB (80543426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e980ed6e474287733e5e4dd5a80096e98c24c558a8fa877da2254a02bda5eb88`  
		Last Modified: Sat, 04 Nov 2017 09:36:52 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.8-passenger`

```console
$ docker pull redmine@sha256:d64aa6b7d660cfaac4e3e2c9b929075113e31fb845157c71b5422d4b1bb2cebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.8-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:fe6b784be4660d1815af9fe9dfd9a92faa90fd6ee9e99744033e57910bb43153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269853115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfcc6ae4aa24612f7547c3407e54e5f9bfeaf3c00127a1bdd92278c6ab8ae7f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_MAJOR=2.2
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_VERSION=2.2.8
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Mon, 13 Nov 2017 16:42:04 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:42:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:46:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:46:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:46:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:46:35 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:43:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:43:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:21 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:43:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:43:28 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:43:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:43:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:54 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:43:54 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:47:22 GMT
ENV REDMINE_VERSION=3.2.8
# Mon, 13 Nov 2017 17:47:23 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Mon, 13 Nov 2017 17:47:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:49:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:49:41 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:49:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:49:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:49:42 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:49:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 13 Nov 2017 17:49:52 GMT
ENV PASSENGER_VERSION=5.1.11
# Mon, 13 Nov 2017 17:50:14 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:50:16 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 13 Nov 2017 17:50:16 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b6609e6b69536fd7320e6b2f4dd27fbf12e627005fd9fc5c98aa00700b3870`  
		Last Modified: Mon, 13 Nov 2017 17:04:50 GMT  
		Size: 35.3 MB (35301255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71bf4f134e9b066b3f0ea4f129df86995ccaf74b867b407820f4a55caa80cb0`  
		Last Modified: Mon, 13 Nov 2017 17:04:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ee9491670223e582ea6d0b3d30475ea6d3f6bbda893326370f32b0a327d126`  
		Last Modified: Mon, 13 Nov 2017 17:52:21 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119b6280e17508f701210359bf0dad47c11422f5e44f3f9cbcee95faf901a8cf`  
		Last Modified: Mon, 13 Nov 2017 17:52:24 GMT  
		Size: 14.7 MB (14650334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08bd6933ac1192f1890fcf38a77bb2a399e3d664ecff47b445d55415df92b27`  
		Last Modified: Mon, 13 Nov 2017 17:52:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123c1e4837842d6b892b6661a1ef7a46f50ec4d6953281e0203e2b6e813db0b2`  
		Last Modified: Mon, 13 Nov 2017 17:52:19 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636cccb7755bbcef29f3fa15e45ba91c99d7b6f19734b440c7185d463ede0082`  
		Last Modified: Mon, 13 Nov 2017 17:52:28 GMT  
		Size: 59.2 MB (59230242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f8f7c97a5634b9b5b7f1c23a905aedbde2f3c0a8cbb08ef2dbb3451c118332`  
		Last Modified: Mon, 13 Nov 2017 17:52:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a144f556f97a418bd7a31a9714aa7b08f11284025dca0b36b0206a9fac0f511`  
		Last Modified: Mon, 13 Nov 2017 17:53:11 GMT  
		Size: 2.3 MB (2347003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1d7f9449d47678376493bd433a075e43cbc23feb042e61ee540b64941dcd97`  
		Last Modified: Mon, 13 Nov 2017 17:53:23 GMT  
		Size: 78.2 MB (78228148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e524ba22b0f5d42454257a6fa2c5d298b302afee53a7dbfdc9cb72f6c6055ab8`  
		Last Modified: Mon, 13 Nov 2017 17:53:11 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2def18aeb338e605f4f8f4b3d5d4509b79dd36d7034ca2beaa2688309df35f61`  
		Last Modified: Mon, 13 Nov 2017 17:53:45 GMT  
		Size: 12.7 MB (12749850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f21edb370cfa969f8d436fe2e6866148ffe882b97f8f94eb68ec251f2dd9fe9`  
		Last Modified: Mon, 13 Nov 2017 17:53:44 GMT  
		Size: 4.1 MB (4075635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:d64aa6b7d660cfaac4e3e2c9b929075113e31fb845157c71b5422d4b1bb2cebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:fe6b784be4660d1815af9fe9dfd9a92faa90fd6ee9e99744033e57910bb43153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269853115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfcc6ae4aa24612f7547c3407e54e5f9bfeaf3c00127a1bdd92278c6ab8ae7f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_MAJOR=2.2
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_VERSION=2.2.8
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Mon, 13 Nov 2017 16:42:04 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:42:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:46:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:46:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:46:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:46:35 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:43:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:43:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:21 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:43:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:43:28 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:43:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:43:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:54 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:43:54 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:47:22 GMT
ENV REDMINE_VERSION=3.2.8
# Mon, 13 Nov 2017 17:47:23 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Mon, 13 Nov 2017 17:47:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:49:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:49:41 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:49:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:49:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:49:42 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:49:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 13 Nov 2017 17:49:52 GMT
ENV PASSENGER_VERSION=5.1.11
# Mon, 13 Nov 2017 17:50:14 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:50:16 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 13 Nov 2017 17:50:16 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b6609e6b69536fd7320e6b2f4dd27fbf12e627005fd9fc5c98aa00700b3870`  
		Last Modified: Mon, 13 Nov 2017 17:04:50 GMT  
		Size: 35.3 MB (35301255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71bf4f134e9b066b3f0ea4f129df86995ccaf74b867b407820f4a55caa80cb0`  
		Last Modified: Mon, 13 Nov 2017 17:04:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ee9491670223e582ea6d0b3d30475ea6d3f6bbda893326370f32b0a327d126`  
		Last Modified: Mon, 13 Nov 2017 17:52:21 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119b6280e17508f701210359bf0dad47c11422f5e44f3f9cbcee95faf901a8cf`  
		Last Modified: Mon, 13 Nov 2017 17:52:24 GMT  
		Size: 14.7 MB (14650334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08bd6933ac1192f1890fcf38a77bb2a399e3d664ecff47b445d55415df92b27`  
		Last Modified: Mon, 13 Nov 2017 17:52:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123c1e4837842d6b892b6661a1ef7a46f50ec4d6953281e0203e2b6e813db0b2`  
		Last Modified: Mon, 13 Nov 2017 17:52:19 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636cccb7755bbcef29f3fa15e45ba91c99d7b6f19734b440c7185d463ede0082`  
		Last Modified: Mon, 13 Nov 2017 17:52:28 GMT  
		Size: 59.2 MB (59230242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f8f7c97a5634b9b5b7f1c23a905aedbde2f3c0a8cbb08ef2dbb3451c118332`  
		Last Modified: Mon, 13 Nov 2017 17:52:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a144f556f97a418bd7a31a9714aa7b08f11284025dca0b36b0206a9fac0f511`  
		Last Modified: Mon, 13 Nov 2017 17:53:11 GMT  
		Size: 2.3 MB (2347003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1d7f9449d47678376493bd433a075e43cbc23feb042e61ee540b64941dcd97`  
		Last Modified: Mon, 13 Nov 2017 17:53:23 GMT  
		Size: 78.2 MB (78228148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e524ba22b0f5d42454257a6fa2c5d298b302afee53a7dbfdc9cb72f6c6055ab8`  
		Last Modified: Mon, 13 Nov 2017 17:53:11 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2def18aeb338e605f4f8f4b3d5d4509b79dd36d7034ca2beaa2688309df35f61`  
		Last Modified: Mon, 13 Nov 2017 17:53:45 GMT  
		Size: 12.7 MB (12749850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f21edb370cfa969f8d436fe2e6866148ffe882b97f8f94eb68ec251f2dd9fe9`  
		Last Modified: Mon, 13 Nov 2017 17:53:44 GMT  
		Size: 4.1 MB (4075635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:3115a925bf7e0d7570db7a539156d3cff37092c3b521689e4b02321c69b6d567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.3` - linux; amd64

```console
$ docker pull redmine@sha256:118c6b02f95e66dc92975196d29d5638b37d621b8874700626fc412d8d74d197
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253071930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5099f98f9e27275d9e4e4315bd7ad8c8bd226e6a0096a85392abaa7716e3510`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_MAJOR=2.2
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_VERSION=2.2.8
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Mon, 13 Nov 2017 16:42:04 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:42:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:46:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:46:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:46:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:46:35 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:43:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:43:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:21 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:43:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:43:28 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:43:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:43:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:54 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:43:54 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:43:55 GMT
ENV REDMINE_VERSION=3.3.5
# Mon, 13 Nov 2017 17:43:55 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Mon, 13 Nov 2017 17:43:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:46:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:46:29 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:46:33 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:46:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:46:33 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:46:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b6609e6b69536fd7320e6b2f4dd27fbf12e627005fd9fc5c98aa00700b3870`  
		Last Modified: Mon, 13 Nov 2017 17:04:50 GMT  
		Size: 35.3 MB (35301255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71bf4f134e9b066b3f0ea4f129df86995ccaf74b867b407820f4a55caa80cb0`  
		Last Modified: Mon, 13 Nov 2017 17:04:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ee9491670223e582ea6d0b3d30475ea6d3f6bbda893326370f32b0a327d126`  
		Last Modified: Mon, 13 Nov 2017 17:52:21 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119b6280e17508f701210359bf0dad47c11422f5e44f3f9cbcee95faf901a8cf`  
		Last Modified: Mon, 13 Nov 2017 17:52:24 GMT  
		Size: 14.7 MB (14650334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08bd6933ac1192f1890fcf38a77bb2a399e3d664ecff47b445d55415df92b27`  
		Last Modified: Mon, 13 Nov 2017 17:52:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123c1e4837842d6b892b6661a1ef7a46f50ec4d6953281e0203e2b6e813db0b2`  
		Last Modified: Mon, 13 Nov 2017 17:52:19 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636cccb7755bbcef29f3fa15e45ba91c99d7b6f19734b440c7185d463ede0082`  
		Last Modified: Mon, 13 Nov 2017 17:52:28 GMT  
		Size: 59.2 MB (59230242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f8f7c97a5634b9b5b7f1c23a905aedbde2f3c0a8cbb08ef2dbb3451c118332`  
		Last Modified: Mon, 13 Nov 2017 17:52:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6fcd9a1560d8c1867838e84292c5afab5aade334f8a2c792eca1a4eab5be63`  
		Last Modified: Mon, 13 Nov 2017 17:52:18 GMT  
		Size: 2.4 MB (2390741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8308102377bea32e5f9ad0dbadb341bbab9dac0230665758c09a98af22aa85b`  
		Last Modified: Mon, 13 Nov 2017 17:52:28 GMT  
		Size: 78.2 MB (78228710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e733d728e1a38b7320e8de1d0e78e20a5827b950442547a935e318c223b3f9f1`  
		Last Modified: Mon, 13 Nov 2017 17:52:17 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:df5693fc464aee5284eef0426022d3857e427e8ef350b8a16e29334494faa284
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245350509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db888b83aec86dd34329560d5646c951e75de2c22e5d2496fba12d70557a30b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 01:06:53 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 02:04:51 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 02:04:51 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 02:09:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 02:09:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 02:09:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 02:09:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 02:09:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 02:09:13 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:39:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:40:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:40:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:40:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:40:31 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:40:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:41:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:41:27 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:41:28 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:41:28 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 04 Nov 2017 02:41:28 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 04 Nov 2017 02:41:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:45:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:45:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:45:54 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:45:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:45:54 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:45:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4d246fb52f7495e8dcdb66e27b622006ce2d94e2a78a573f7428b719926eab`  
		Last Modified: Sat, 04 Nov 2017 02:17:22 GMT  
		Size: 34.2 MB (34200161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90e097fa13e8e97e867b8d47271c8e5b7627fe2cd6dc6c4eccbaa9c88424a34`  
		Last Modified: Sat, 04 Nov 2017 02:17:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce6fafb28a3316dcef239f174501b88171110f698aaa513cfd067e26301d78`  
		Last Modified: Sat, 04 Nov 2017 02:52:32 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861d4cac5a37a0c22b97abce5a3a835dc54baf13592c6868a7ef76567053e002`  
		Last Modified: Sat, 04 Nov 2017 02:52:41 GMT  
		Size: 14.3 MB (14347279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5496153529c8c9ac53db70e7cab38fe909c7749c58d3d931879a9ee64dea8e4b`  
		Last Modified: Sat, 04 Nov 2017 02:52:31 GMT  
		Size: 491.1 KB (491129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c719882301a7bebcc46f0944faad2cf39a617ad58268ad2daa7c2b10b462770`  
		Last Modified: Sat, 04 Nov 2017 02:52:30 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b4a59c06781189fe27604ed71d82c6d9bf9743480257372240afc04a490719`  
		Last Modified: Sat, 04 Nov 2017 02:53:18 GMT  
		Size: 56.6 MB (56571232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04c8bf9d121c4172bca53d149d2093aac860e444a74355c19bf256a436246a1`  
		Last Modified: Sat, 04 Nov 2017 02:52:29 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e7b5fd341eac916eb1eca8e9e55ecf49e9e0bb44a09368f909917f24797451`  
		Last Modified: Sat, 04 Nov 2017 02:52:30 GMT  
		Size: 2.4 MB (2391001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057d36fd21b1bb3f7128e37eba0cf8084e8e0823d515a114f4050bfb040129d6`  
		Last Modified: Sat, 04 Nov 2017 02:53:32 GMT  
		Size: 77.3 MB (77345285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c114f80ae811d727448a93f76fb652f47109bf7f55d0aa67c8b561d19c658e12`  
		Last Modified: Sat, 04 Nov 2017 02:52:29 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:d9d5af65c714001952e9bcebe3fc5c121069a0a2e7ddf3538a970db43b22d845
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239549205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f41a8c79cfb17b064ab468cf8ad322386f4eb6618685ac016700a433e96d85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:34:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:34:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:54:43 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:54:43 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:54:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 01:51:40 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:51:40 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:55:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:55:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:55:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:55:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:55:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:55:50 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:32:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:33:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:33:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:33:21 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:33:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:34:25 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:34:25 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:34:25 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 04 Nov 2017 02:34:26 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 04 Nov 2017 02:34:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:38:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:38:34 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:38:34 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:38:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:38:35 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:38:35 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45e4d864a6c60ee4b4a2032ca433fc05d96194e7180016527572da21c44f227`  
		Last Modified: Tue, 10 Oct 2017 01:02:32 GMT  
		Size: 8.8 MB (8761230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30bf1114e281150fe7b59eee2ce7a038a378c4970714ec63009a763b78eb919`  
		Last Modified: Tue, 10 Oct 2017 01:02:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0280372277b91c76287d83cb3e3247ee0c01296ee523d9db756e28a0f9e9a912`  
		Last Modified: Sat, 04 Nov 2017 02:10:07 GMT  
		Size: 34.0 MB (33978060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8b4cac1e575d6f2d74ad18f43437c9c403a5ca83634f1fc47aad3f03fdca8a`  
		Last Modified: Sat, 04 Nov 2017 02:09:54 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f5194a2821d21531ae4a68f297c81302af2931575a9d9f00ed9b96c88d3471`  
		Last Modified: Sat, 04 Nov 2017 02:44:15 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effb3601416a2fe25bb881076931015af85615c929384a852061c6efcc1150db`  
		Last Modified: Sat, 04 Nov 2017 02:44:19 GMT  
		Size: 14.1 MB (14134525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc24ddc623fa6c850ac1f4e6535d816e0ce2ad46305e44c9abf2e5a9d437df9d`  
		Last Modified: Sat, 04 Nov 2017 02:44:14 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52d4c8a58e17e305bfc3a254a667ebb72db37ba396ea62a0d8138f7cfd7cdad`  
		Last Modified: Sat, 04 Nov 2017 02:44:14 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee9d7d8f9863837f6dff989b7c939db4c6227d88fa09275ddac31573c8492f1`  
		Last Modified: Sat, 04 Nov 2017 02:44:29 GMT  
		Size: 54.3 MB (54305114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461b665152bfe38fd16f16e84f198928b4de4c8cc6bb6347b92bb39b15779e2e`  
		Last Modified: Sat, 04 Nov 2017 02:44:13 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6379683254ff2133bddbc2966f58c88ef1690a01077e73b4c681ab9996c23fc7`  
		Last Modified: Sat, 04 Nov 2017 02:44:14 GMT  
		Size: 2.4 MB (2390994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343f0522f331c2abb033cca4a65a643f2825bce26bbc8a92882be171513150e2`  
		Last Modified: Sat, 04 Nov 2017 02:44:32 GMT  
		Size: 76.8 MB (76806027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bbff6fd67b8cdbbda0c7ef03bfdc902911741c3cea41cf88d30d4cde6d111b`  
		Last Modified: Sat, 04 Nov 2017 02:44:13 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b89d60b3a8307a60b52e93dcda84cdf608720a3f7812ddf17a7c55420c4b58dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.3 MB (245271122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9a30b818725f106ce3d5bf92757c779ddf1a93437ebef0fbcd5e19dea4cb16`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 08:21:32 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Mon, 13 Nov 2017 22:59:57 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 22:59:58 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 23:07:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 23:07:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 23:07:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 23:07:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 23:07:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 23:07:23 GMT
CMD ["irb"]
# Tue, 14 Nov 2017 00:00:07 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 14 Nov 2017 00:00:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Nov 2017 00:00:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 14 Nov 2017 00:00:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 14 Nov 2017 00:00:44 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 14 Nov 2017 00:00:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 14 Nov 2017 00:03:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Nov 2017 00:03:16 GMT
ENV RAILS_ENV=production
# Tue, 14 Nov 2017 00:03:17 GMT
WORKDIR /usr/src/redmine
# Tue, 14 Nov 2017 00:03:18 GMT
ENV REDMINE_VERSION=3.3.5
# Tue, 14 Nov 2017 00:03:18 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Tue, 14 Nov 2017 00:03:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 14 Nov 2017 00:13:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 14 Nov 2017 00:14:00 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 14 Nov 2017 00:14:01 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 14 Nov 2017 00:14:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Nov 2017 00:14:03 GMT
EXPOSE 3000/tcp
# Tue, 14 Nov 2017 00:14:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934fc385be7af454467a50005bed557d538846e40ce8feb5ef38ce961798d500`  
		Last Modified: Mon, 13 Nov 2017 23:28:59 GMT  
		Size: 35.4 MB (35421589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c7c1d7e871af3a296550285f6f0615eafaa59016777994ec491be36bc2d76a`  
		Last Modified: Mon, 13 Nov 2017 23:28:42 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccba4a4e9065c78d6e416ccecc1d1d8b7731f71687088ce2d9dce74e7a152672`  
		Last Modified: Tue, 14 Nov 2017 00:26:07 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c183f78b31413e6b625be4d5d553bdb075a366753d61ed2208359ad7afc843da`  
		Last Modified: Tue, 14 Nov 2017 00:26:11 GMT  
		Size: 14.5 MB (14462601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fabce0ac3d15c7b770a0e312e01bc6d0bbc3c216727ec385b09147cd89368c`  
		Last Modified: Tue, 14 Nov 2017 00:26:05 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3983c6da7237ee9d46a30186badf21ce0ea5104e41f6a232d26b34d9ddeb61e2`  
		Last Modified: Tue, 14 Nov 2017 00:26:05 GMT  
		Size: 8.2 KB (8151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0381775d80781c64c6073c5b848cd3c71802ea431f57eaff899368a7012055fd`  
		Last Modified: Tue, 14 Nov 2017 00:26:27 GMT  
		Size: 55.8 MB (55760356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa18119084e48bc14c7e8fb8bef30c3b4e5022961f969b8aa73a3f820d42aa0a`  
		Last Modified: Tue, 14 Nov 2017 00:26:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61f424afc1990bdc02c5ee3bc4865d2e0567f04231bf638fdded31e96f41054`  
		Last Modified: Tue, 14 Nov 2017 00:26:03 GMT  
		Size: 2.4 MB (2390736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4a2caa21359b042506e6bcf7909886690d34c7dc1e4ed75c5222978296ca9a`  
		Last Modified: Tue, 14 Nov 2017 00:26:25 GMT  
		Size: 77.5 MB (77492493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a717d9f224a51e580ae4b7d6f57581eabc97edc80162fdaa1353409a4a8574da`  
		Last Modified: Tue, 14 Nov 2017 00:26:02 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:3ec8fbe0cec734dbf97d746ea6e87672897180e0fc0f70b358849e75ee2b4aad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255378409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6943944a449a783f55d8401f7517bd15cb76d0523ed6d4ae506174745e2de8f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 03:28:18 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 03:28:18 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 03:32:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 03:32:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 03:32:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 03:32:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 03:32:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 03:32:07 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 04:13:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 04:14:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:14:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 04:14:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 04:14:47 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 04:14:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 04:16:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:16:07 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 04:16:07 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 04:16:07 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 04 Nov 2017 04:16:08 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 04 Nov 2017 04:16:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 04:19:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 04:19:32 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 04:19:32 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 04:19:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 04:19:32 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 04:19:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448ee724385756096dcc1c1a16cd80f6881a8b54d1ca81bfb93d231649ea8ff7`  
		Last Modified: Sat, 04 Nov 2017 03:44:24 GMT  
		Size: 32.7 MB (32747639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2f3031e83ec32db9133319a2261144a81dc2e4bdfdfb568c9c5968be57c948`  
		Last Modified: Sat, 04 Nov 2017 03:44:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a761d690df99c920d0a2ada6448ffdc3ce6dae308f8312e1209d6c24e45d5`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cc91c48753a3862824dfa1d10bd937d6d2a8e089c6db7d94947c2b0b926b00`  
		Last Modified: Sat, 04 Nov 2017 04:32:57 GMT  
		Size: 14.8 MB (14817266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85025c265ad456beb6c03f8a4daa983845f7fe92c99dc3e0d10dfa60a15b1759`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da56b9a8a2d195681542d76acfca07bbe089fb4930bb4ce06dd015d8c96882ca`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e21f0d26bb867f323586cabc307716a0c38382d2919a33a38f29cdb2b4100e`  
		Last Modified: Sat, 04 Nov 2017 04:33:11 GMT  
		Size: 60.1 MB (60105314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf363a3a1b3c91fdc21dab2278fed75ada8686524cb33f9f4f9d4b077561343`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04be9a9b9fe0d9ec25d07aa4094911c47a1e65e7a027bb5bde166bb0be5dcc6d`  
		Last Modified: Sat, 04 Nov 2017 04:32:57 GMT  
		Size: 2.4 MB (2390732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa7d4961fc3b35c87b17beed564078670658662ae6df4e388786fd521bc6b06`  
		Last Modified: Sat, 04 Nov 2017 04:33:09 GMT  
		Size: 77.4 MB (77422615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2b96dfece6af42fd9c1306ecf3fff57178da848434a9f854c2c7fdbcd10fa3`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:5a4d8cd93e2f8ffe86cda613227f4ce1afffe555f4929fa3b3cce20e3a15a48d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252218599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f442221254f18ad708a173f63595b3a951c1f4e6dfd7e40c966d27579287e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:57:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:57:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 06:32:11 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 06:32:15 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 06:32:19 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 01:21:01 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:21:02 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:31:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:31:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:31:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:31:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:31:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:31:58 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:15:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:16:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:16:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:16:56 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:17:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:20:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:20:27 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:20:28 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:20:29 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 04 Nov 2017 02:20:31 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 04 Nov 2017 02:20:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:33:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:33:55 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:33:56 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:33:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:33:59 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:34:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40a8df7f5d8f2418b2f12762edbef8533b5871c7aaca1937e8db1d1506897ef`  
		Last Modified: Tue, 10 Oct 2017 06:49:02 GMT  
		Size: 10.1 MB (10133017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68873b9b142821a59413ab21afce04b7492c1b99141626f4d3d3fca54a1ffff1`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7538df14eeb45a14e5949db39712fd74d814d2f3cd4e75ecd3d51e56794318`  
		Last Modified: Sat, 04 Nov 2017 01:43:13 GMT  
		Size: 36.3 MB (36284365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc21282b1030513a92011deb0ebc6e9e280c89f283879832b20c91eb4a37a4d`  
		Last Modified: Sat, 04 Nov 2017 01:43:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f04258f22472023fc91c19a2b2020550a84663c8d0bbe11da089d7c0d0f23b`  
		Last Modified: Sat, 04 Nov 2017 02:48:02 GMT  
		Size: 2.1 KB (2115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e651c76525f5e7898df77256e95a8ba4d5af6c804ce0ece7b09ff1da2bf3abd5`  
		Last Modified: Sat, 04 Nov 2017 02:48:04 GMT  
		Size: 14.7 MB (14720478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a197839dde538bc947c7fabe5741da9f88518f195ed94079004ba50ad230e145`  
		Last Modified: Sat, 04 Nov 2017 02:48:00 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b2dcf9a8dfefec675e067067eb1752dbdf1fcc31fcfbddc613c7b3274deba7`  
		Last Modified: Sat, 04 Nov 2017 02:47:59 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ee38b15e929ed6436ba605ac5110a02738f52ba76d4ce52fe33f1ee81cd73e`  
		Last Modified: Sat, 04 Nov 2017 02:48:09 GMT  
		Size: 58.1 MB (58099092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5807a3f820c96c48f4a20d284d739dcfde6f2c119e80f22ea9892ae9f30fb6`  
		Last Modified: Sat, 04 Nov 2017 02:47:53 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7ad78a25d1e8e920c3153b7740e9d97ee22274c202b72636055da00bd46ae1`  
		Last Modified: Sat, 04 Nov 2017 02:47:54 GMT  
		Size: 2.4 MB (2390990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f0e445647f5dc1a745eeb1c4e58220e196ed37c2da81d85f50518c5017e4d9`  
		Last Modified: Sat, 04 Nov 2017 02:48:09 GMT  
		Size: 78.3 MB (78298040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffe26f5dd30f74f235896bd1ff3145c0d3ce26c167a8cffce20f9550b49e967`  
		Last Modified: Sat, 04 Nov 2017 02:47:53 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:7d0ecdef5b75eb495bf2788bd5c94b086c3cdb015147dd76204e236393afb2fa
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (259016588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a612916602c6875953b1611eb89c90cd78994ed5a390a5aa4e2862e8ac6484`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:11:57 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 09:00:52 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 09:00:52 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 09:03:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 09:03:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 09:03:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 09:03:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 09:03:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 09:03:30 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 09:29:54 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 09:30:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:30:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:30:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 09:30:10 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 09:30:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 09:30:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:30:44 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 09:30:44 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 09:30:45 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 04 Nov 2017 09:30:45 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 04 Nov 2017 09:30:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 09:33:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 09:33:07 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 09:33:07 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 09:33:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 09:33:08 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 09:33:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba067d76ed070697423090b335cbb1792d0bbdd37983f45bc42f86754be2517`  
		Last Modified: Sat, 04 Nov 2017 09:10:16 GMT  
		Size: 38.9 MB (38935040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d198db528442a7615f43c0f5e93b50775faafbd45fab4b7f039f5c00781236`  
		Last Modified: Sat, 04 Nov 2017 09:10:06 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b3dff80b98801174e23f4d6681c456325cb70cd38f5ec218186836da4dfe9e`  
		Last Modified: Sat, 04 Nov 2017 09:36:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4ed8ecd8b2fcddf6f82ae521bd8faf515cfbbd9c501b6399b95b83b44650d8`  
		Last Modified: Sat, 04 Nov 2017 09:36:33 GMT  
		Size: 14.8 MB (14815038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50719c86cd4020cd83dd822bd82c9923ba66865d43d4b582bfe72164778b329`  
		Last Modified: Sat, 04 Nov 2017 09:36:30 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144e362f1c26b4ce0fd54f34068b75d8d5b64905d5de7eff97988aff93419b07`  
		Last Modified: Sat, 04 Nov 2017 09:36:31 GMT  
		Size: 8.6 KB (8619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83809599c243be0167ca70ed5b74b5301ce16562d29ca65f2bccc65de256ab8`  
		Last Modified: Sat, 04 Nov 2017 09:36:40 GMT  
		Size: 59.1 MB (59082937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f5d7dd64ef50cad8531c86a3adf8daaac5449afcd8445057b5d6961116bd6c`  
		Last Modified: Sat, 04 Nov 2017 09:36:29 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee583c617dff80e975aa9035723099bc2129c3fc061eb3bdc3660a63610172a`  
		Last Modified: Sat, 04 Nov 2017 09:36:29 GMT  
		Size: 2.4 MB (2390736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec7695b7083f3ee47084e3528f47534d8de871d7846a51834f5e036e5898f88`  
		Last Modified: Sat, 04 Nov 2017 09:36:40 GMT  
		Size: 80.5 MB (80543991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fd2c92abfd412f984e7ac541aa09d96375cf0d14876843dc4d6afff403ad60`  
		Last Modified: Sat, 04 Nov 2017 09:36:29 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.5`

```console
$ docker pull redmine@sha256:3115a925bf7e0d7570db7a539156d3cff37092c3b521689e4b02321c69b6d567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.3.5` - linux; amd64

```console
$ docker pull redmine@sha256:118c6b02f95e66dc92975196d29d5638b37d621b8874700626fc412d8d74d197
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253071930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5099f98f9e27275d9e4e4315bd7ad8c8bd226e6a0096a85392abaa7716e3510`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_MAJOR=2.2
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_VERSION=2.2.8
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Mon, 13 Nov 2017 16:42:04 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:42:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:46:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:46:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:46:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:46:35 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:43:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:43:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:21 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:43:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:43:28 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:43:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:43:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:54 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:43:54 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:43:55 GMT
ENV REDMINE_VERSION=3.3.5
# Mon, 13 Nov 2017 17:43:55 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Mon, 13 Nov 2017 17:43:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:46:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:46:29 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:46:33 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:46:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:46:33 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:46:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b6609e6b69536fd7320e6b2f4dd27fbf12e627005fd9fc5c98aa00700b3870`  
		Last Modified: Mon, 13 Nov 2017 17:04:50 GMT  
		Size: 35.3 MB (35301255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71bf4f134e9b066b3f0ea4f129df86995ccaf74b867b407820f4a55caa80cb0`  
		Last Modified: Mon, 13 Nov 2017 17:04:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ee9491670223e582ea6d0b3d30475ea6d3f6bbda893326370f32b0a327d126`  
		Last Modified: Mon, 13 Nov 2017 17:52:21 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119b6280e17508f701210359bf0dad47c11422f5e44f3f9cbcee95faf901a8cf`  
		Last Modified: Mon, 13 Nov 2017 17:52:24 GMT  
		Size: 14.7 MB (14650334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08bd6933ac1192f1890fcf38a77bb2a399e3d664ecff47b445d55415df92b27`  
		Last Modified: Mon, 13 Nov 2017 17:52:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123c1e4837842d6b892b6661a1ef7a46f50ec4d6953281e0203e2b6e813db0b2`  
		Last Modified: Mon, 13 Nov 2017 17:52:19 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636cccb7755bbcef29f3fa15e45ba91c99d7b6f19734b440c7185d463ede0082`  
		Last Modified: Mon, 13 Nov 2017 17:52:28 GMT  
		Size: 59.2 MB (59230242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f8f7c97a5634b9b5b7f1c23a905aedbde2f3c0a8cbb08ef2dbb3451c118332`  
		Last Modified: Mon, 13 Nov 2017 17:52:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6fcd9a1560d8c1867838e84292c5afab5aade334f8a2c792eca1a4eab5be63`  
		Last Modified: Mon, 13 Nov 2017 17:52:18 GMT  
		Size: 2.4 MB (2390741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8308102377bea32e5f9ad0dbadb341bbab9dac0230665758c09a98af22aa85b`  
		Last Modified: Mon, 13 Nov 2017 17:52:28 GMT  
		Size: 78.2 MB (78228710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e733d728e1a38b7320e8de1d0e78e20a5827b950442547a935e318c223b3f9f1`  
		Last Modified: Mon, 13 Nov 2017 17:52:17 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm variant v5

```console
$ docker pull redmine@sha256:df5693fc464aee5284eef0426022d3857e427e8ef350b8a16e29334494faa284
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245350509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db888b83aec86dd34329560d5646c951e75de2c22e5d2496fba12d70557a30b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 01:06:53 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 02:04:51 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 02:04:51 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 02:09:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 02:09:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 02:09:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 02:09:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 02:09:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 02:09:13 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:39:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:40:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:40:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:40:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:40:31 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:40:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:41:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:41:27 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:41:28 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:41:28 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 04 Nov 2017 02:41:28 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 04 Nov 2017 02:41:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:45:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:45:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:45:54 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:45:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:45:54 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:45:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4d246fb52f7495e8dcdb66e27b622006ce2d94e2a78a573f7428b719926eab`  
		Last Modified: Sat, 04 Nov 2017 02:17:22 GMT  
		Size: 34.2 MB (34200161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90e097fa13e8e97e867b8d47271c8e5b7627fe2cd6dc6c4eccbaa9c88424a34`  
		Last Modified: Sat, 04 Nov 2017 02:17:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce6fafb28a3316dcef239f174501b88171110f698aaa513cfd067e26301d78`  
		Last Modified: Sat, 04 Nov 2017 02:52:32 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861d4cac5a37a0c22b97abce5a3a835dc54baf13592c6868a7ef76567053e002`  
		Last Modified: Sat, 04 Nov 2017 02:52:41 GMT  
		Size: 14.3 MB (14347279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5496153529c8c9ac53db70e7cab38fe909c7749c58d3d931879a9ee64dea8e4b`  
		Last Modified: Sat, 04 Nov 2017 02:52:31 GMT  
		Size: 491.1 KB (491129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c719882301a7bebcc46f0944faad2cf39a617ad58268ad2daa7c2b10b462770`  
		Last Modified: Sat, 04 Nov 2017 02:52:30 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b4a59c06781189fe27604ed71d82c6d9bf9743480257372240afc04a490719`  
		Last Modified: Sat, 04 Nov 2017 02:53:18 GMT  
		Size: 56.6 MB (56571232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04c8bf9d121c4172bca53d149d2093aac860e444a74355c19bf256a436246a1`  
		Last Modified: Sat, 04 Nov 2017 02:52:29 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e7b5fd341eac916eb1eca8e9e55ecf49e9e0bb44a09368f909917f24797451`  
		Last Modified: Sat, 04 Nov 2017 02:52:30 GMT  
		Size: 2.4 MB (2391001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057d36fd21b1bb3f7128e37eba0cf8084e8e0823d515a114f4050bfb040129d6`  
		Last Modified: Sat, 04 Nov 2017 02:53:32 GMT  
		Size: 77.3 MB (77345285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c114f80ae811d727448a93f76fb652f47109bf7f55d0aa67c8b561d19c658e12`  
		Last Modified: Sat, 04 Nov 2017 02:52:29 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm variant v7

```console
$ docker pull redmine@sha256:d9d5af65c714001952e9bcebe3fc5c121069a0a2e7ddf3538a970db43b22d845
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239549205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f41a8c79cfb17b064ab468cf8ad322386f4eb6618685ac016700a433e96d85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:34:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:34:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:54:43 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:54:43 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:54:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 01:51:40 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:51:40 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:55:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:55:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:55:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:55:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:55:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:55:50 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:32:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:33:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:33:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:33:21 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:33:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:34:25 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:34:25 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:34:25 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 04 Nov 2017 02:34:26 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 04 Nov 2017 02:34:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:38:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:38:34 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:38:34 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:38:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:38:35 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:38:35 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45e4d864a6c60ee4b4a2032ca433fc05d96194e7180016527572da21c44f227`  
		Last Modified: Tue, 10 Oct 2017 01:02:32 GMT  
		Size: 8.8 MB (8761230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30bf1114e281150fe7b59eee2ce7a038a378c4970714ec63009a763b78eb919`  
		Last Modified: Tue, 10 Oct 2017 01:02:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0280372277b91c76287d83cb3e3247ee0c01296ee523d9db756e28a0f9e9a912`  
		Last Modified: Sat, 04 Nov 2017 02:10:07 GMT  
		Size: 34.0 MB (33978060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8b4cac1e575d6f2d74ad18f43437c9c403a5ca83634f1fc47aad3f03fdca8a`  
		Last Modified: Sat, 04 Nov 2017 02:09:54 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f5194a2821d21531ae4a68f297c81302af2931575a9d9f00ed9b96c88d3471`  
		Last Modified: Sat, 04 Nov 2017 02:44:15 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effb3601416a2fe25bb881076931015af85615c929384a852061c6efcc1150db`  
		Last Modified: Sat, 04 Nov 2017 02:44:19 GMT  
		Size: 14.1 MB (14134525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc24ddc623fa6c850ac1f4e6535d816e0ce2ad46305e44c9abf2e5a9d437df9d`  
		Last Modified: Sat, 04 Nov 2017 02:44:14 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52d4c8a58e17e305bfc3a254a667ebb72db37ba396ea62a0d8138f7cfd7cdad`  
		Last Modified: Sat, 04 Nov 2017 02:44:14 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee9d7d8f9863837f6dff989b7c939db4c6227d88fa09275ddac31573c8492f1`  
		Last Modified: Sat, 04 Nov 2017 02:44:29 GMT  
		Size: 54.3 MB (54305114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461b665152bfe38fd16f16e84f198928b4de4c8cc6bb6347b92bb39b15779e2e`  
		Last Modified: Sat, 04 Nov 2017 02:44:13 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6379683254ff2133bddbc2966f58c88ef1690a01077e73b4c681ab9996c23fc7`  
		Last Modified: Sat, 04 Nov 2017 02:44:14 GMT  
		Size: 2.4 MB (2390994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343f0522f331c2abb033cca4a65a643f2825bce26bbc8a92882be171513150e2`  
		Last Modified: Sat, 04 Nov 2017 02:44:32 GMT  
		Size: 76.8 MB (76806027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bbff6fd67b8cdbbda0c7ef03bfdc902911741c3cea41cf88d30d4cde6d111b`  
		Last Modified: Sat, 04 Nov 2017 02:44:13 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b89d60b3a8307a60b52e93dcda84cdf608720a3f7812ddf17a7c55420c4b58dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.3 MB (245271122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9a30b818725f106ce3d5bf92757c779ddf1a93437ebef0fbcd5e19dea4cb16`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 08:21:32 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Mon, 13 Nov 2017 22:59:57 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 22:59:58 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 23:07:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 23:07:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 23:07:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 23:07:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 23:07:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 23:07:23 GMT
CMD ["irb"]
# Tue, 14 Nov 2017 00:00:07 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 14 Nov 2017 00:00:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Nov 2017 00:00:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 14 Nov 2017 00:00:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 14 Nov 2017 00:00:44 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 14 Nov 2017 00:00:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 14 Nov 2017 00:03:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Nov 2017 00:03:16 GMT
ENV RAILS_ENV=production
# Tue, 14 Nov 2017 00:03:17 GMT
WORKDIR /usr/src/redmine
# Tue, 14 Nov 2017 00:03:18 GMT
ENV REDMINE_VERSION=3.3.5
# Tue, 14 Nov 2017 00:03:18 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Tue, 14 Nov 2017 00:03:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 14 Nov 2017 00:13:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 14 Nov 2017 00:14:00 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 14 Nov 2017 00:14:01 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 14 Nov 2017 00:14:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Nov 2017 00:14:03 GMT
EXPOSE 3000/tcp
# Tue, 14 Nov 2017 00:14:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934fc385be7af454467a50005bed557d538846e40ce8feb5ef38ce961798d500`  
		Last Modified: Mon, 13 Nov 2017 23:28:59 GMT  
		Size: 35.4 MB (35421589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c7c1d7e871af3a296550285f6f0615eafaa59016777994ec491be36bc2d76a`  
		Last Modified: Mon, 13 Nov 2017 23:28:42 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccba4a4e9065c78d6e416ccecc1d1d8b7731f71687088ce2d9dce74e7a152672`  
		Last Modified: Tue, 14 Nov 2017 00:26:07 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c183f78b31413e6b625be4d5d553bdb075a366753d61ed2208359ad7afc843da`  
		Last Modified: Tue, 14 Nov 2017 00:26:11 GMT  
		Size: 14.5 MB (14462601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fabce0ac3d15c7b770a0e312e01bc6d0bbc3c216727ec385b09147cd89368c`  
		Last Modified: Tue, 14 Nov 2017 00:26:05 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3983c6da7237ee9d46a30186badf21ce0ea5104e41f6a232d26b34d9ddeb61e2`  
		Last Modified: Tue, 14 Nov 2017 00:26:05 GMT  
		Size: 8.2 KB (8151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0381775d80781c64c6073c5b848cd3c71802ea431f57eaff899368a7012055fd`  
		Last Modified: Tue, 14 Nov 2017 00:26:27 GMT  
		Size: 55.8 MB (55760356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa18119084e48bc14c7e8fb8bef30c3b4e5022961f969b8aa73a3f820d42aa0a`  
		Last Modified: Tue, 14 Nov 2017 00:26:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61f424afc1990bdc02c5ee3bc4865d2e0567f04231bf638fdded31e96f41054`  
		Last Modified: Tue, 14 Nov 2017 00:26:03 GMT  
		Size: 2.4 MB (2390736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4a2caa21359b042506e6bcf7909886690d34c7dc1e4ed75c5222978296ca9a`  
		Last Modified: Tue, 14 Nov 2017 00:26:25 GMT  
		Size: 77.5 MB (77492493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a717d9f224a51e580ae4b7d6f57581eabc97edc80162fdaa1353409a4a8574da`  
		Last Modified: Tue, 14 Nov 2017 00:26:02 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; 386

```console
$ docker pull redmine@sha256:3ec8fbe0cec734dbf97d746ea6e87672897180e0fc0f70b358849e75ee2b4aad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255378409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6943944a449a783f55d8401f7517bd15cb76d0523ed6d4ae506174745e2de8f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 03:28:18 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 03:28:18 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 03:32:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 03:32:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 03:32:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 03:32:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 03:32:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 03:32:07 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 04:13:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 04:14:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:14:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 04:14:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 04:14:47 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 04:14:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 04:16:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:16:07 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 04:16:07 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 04:16:07 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 04 Nov 2017 04:16:08 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 04 Nov 2017 04:16:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 04:19:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 04:19:32 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 04:19:32 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 04:19:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 04:19:32 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 04:19:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448ee724385756096dcc1c1a16cd80f6881a8b54d1ca81bfb93d231649ea8ff7`  
		Last Modified: Sat, 04 Nov 2017 03:44:24 GMT  
		Size: 32.7 MB (32747639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2f3031e83ec32db9133319a2261144a81dc2e4bdfdfb568c9c5968be57c948`  
		Last Modified: Sat, 04 Nov 2017 03:44:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a761d690df99c920d0a2ada6448ffdc3ce6dae308f8312e1209d6c24e45d5`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cc91c48753a3862824dfa1d10bd937d6d2a8e089c6db7d94947c2b0b926b00`  
		Last Modified: Sat, 04 Nov 2017 04:32:57 GMT  
		Size: 14.8 MB (14817266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85025c265ad456beb6c03f8a4daa983845f7fe92c99dc3e0d10dfa60a15b1759`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da56b9a8a2d195681542d76acfca07bbe089fb4930bb4ce06dd015d8c96882ca`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e21f0d26bb867f323586cabc307716a0c38382d2919a33a38f29cdb2b4100e`  
		Last Modified: Sat, 04 Nov 2017 04:33:11 GMT  
		Size: 60.1 MB (60105314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf363a3a1b3c91fdc21dab2278fed75ada8686524cb33f9f4f9d4b077561343`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04be9a9b9fe0d9ec25d07aa4094911c47a1e65e7a027bb5bde166bb0be5dcc6d`  
		Last Modified: Sat, 04 Nov 2017 04:32:57 GMT  
		Size: 2.4 MB (2390732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa7d4961fc3b35c87b17beed564078670658662ae6df4e388786fd521bc6b06`  
		Last Modified: Sat, 04 Nov 2017 04:33:09 GMT  
		Size: 77.4 MB (77422615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2b96dfece6af42fd9c1306ecf3fff57178da848434a9f854c2c7fdbcd10fa3`  
		Last Modified: Sat, 04 Nov 2017 04:32:53 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; ppc64le

```console
$ docker pull redmine@sha256:5a4d8cd93e2f8ffe86cda613227f4ce1afffe555f4929fa3b3cce20e3a15a48d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252218599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f442221254f18ad708a173f63595b3a951c1f4e6dfd7e40c966d27579287e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:57:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:57:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 06:32:11 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 06:32:15 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 06:32:19 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 01:21:01 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:21:02 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:31:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:31:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:31:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:31:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:31:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:31:58 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:15:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:16:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:16:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:16:56 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:17:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:20:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:20:27 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:20:28 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:20:29 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 04 Nov 2017 02:20:31 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 04 Nov 2017 02:20:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:33:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:33:55 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:33:56 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:33:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:33:59 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:34:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40a8df7f5d8f2418b2f12762edbef8533b5871c7aaca1937e8db1d1506897ef`  
		Last Modified: Tue, 10 Oct 2017 06:49:02 GMT  
		Size: 10.1 MB (10133017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68873b9b142821a59413ab21afce04b7492c1b99141626f4d3d3fca54a1ffff1`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7538df14eeb45a14e5949db39712fd74d814d2f3cd4e75ecd3d51e56794318`  
		Last Modified: Sat, 04 Nov 2017 01:43:13 GMT  
		Size: 36.3 MB (36284365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc21282b1030513a92011deb0ebc6e9e280c89f283879832b20c91eb4a37a4d`  
		Last Modified: Sat, 04 Nov 2017 01:43:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f04258f22472023fc91c19a2b2020550a84663c8d0bbe11da089d7c0d0f23b`  
		Last Modified: Sat, 04 Nov 2017 02:48:02 GMT  
		Size: 2.1 KB (2115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e651c76525f5e7898df77256e95a8ba4d5af6c804ce0ece7b09ff1da2bf3abd5`  
		Last Modified: Sat, 04 Nov 2017 02:48:04 GMT  
		Size: 14.7 MB (14720478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a197839dde538bc947c7fabe5741da9f88518f195ed94079004ba50ad230e145`  
		Last Modified: Sat, 04 Nov 2017 02:48:00 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b2dcf9a8dfefec675e067067eb1752dbdf1fcc31fcfbddc613c7b3274deba7`  
		Last Modified: Sat, 04 Nov 2017 02:47:59 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ee38b15e929ed6436ba605ac5110a02738f52ba76d4ce52fe33f1ee81cd73e`  
		Last Modified: Sat, 04 Nov 2017 02:48:09 GMT  
		Size: 58.1 MB (58099092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5807a3f820c96c48f4a20d284d739dcfde6f2c119e80f22ea9892ae9f30fb6`  
		Last Modified: Sat, 04 Nov 2017 02:47:53 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7ad78a25d1e8e920c3153b7740e9d97ee22274c202b72636055da00bd46ae1`  
		Last Modified: Sat, 04 Nov 2017 02:47:54 GMT  
		Size: 2.4 MB (2390990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f0e445647f5dc1a745eeb1c4e58220e196ed37c2da81d85f50518c5017e4d9`  
		Last Modified: Sat, 04 Nov 2017 02:48:09 GMT  
		Size: 78.3 MB (78298040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffe26f5dd30f74f235896bd1ff3145c0d3ce26c167a8cffce20f9550b49e967`  
		Last Modified: Sat, 04 Nov 2017 02:47:53 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; s390x

```console
$ docker pull redmine@sha256:7d0ecdef5b75eb495bf2788bd5c94b086c3cdb015147dd76204e236393afb2fa
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (259016588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a612916602c6875953b1611eb89c90cd78994ed5a390a5aa4e2862e8ac6484`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:11:57 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Sat, 04 Nov 2017 09:00:52 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 09:00:52 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 09:03:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 09:03:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 09:03:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 09:03:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 09:03:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 09:03:30 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 09:29:54 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 09:30:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:30:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:30:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 09:30:10 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 09:30:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 09:30:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:30:44 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 09:30:44 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 09:30:45 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 04 Nov 2017 09:30:45 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 04 Nov 2017 09:30:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 09:33:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 09:33:07 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 09:33:07 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 09:33:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 09:33:08 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 09:33:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba067d76ed070697423090b335cbb1792d0bbdd37983f45bc42f86754be2517`  
		Last Modified: Sat, 04 Nov 2017 09:10:16 GMT  
		Size: 38.9 MB (38935040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d198db528442a7615f43c0f5e93b50775faafbd45fab4b7f039f5c00781236`  
		Last Modified: Sat, 04 Nov 2017 09:10:06 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b3dff80b98801174e23f4d6681c456325cb70cd38f5ec218186836da4dfe9e`  
		Last Modified: Sat, 04 Nov 2017 09:36:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4ed8ecd8b2fcddf6f82ae521bd8faf515cfbbd9c501b6399b95b83b44650d8`  
		Last Modified: Sat, 04 Nov 2017 09:36:33 GMT  
		Size: 14.8 MB (14815038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50719c86cd4020cd83dd822bd82c9923ba66865d43d4b582bfe72164778b329`  
		Last Modified: Sat, 04 Nov 2017 09:36:30 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144e362f1c26b4ce0fd54f34068b75d8d5b64905d5de7eff97988aff93419b07`  
		Last Modified: Sat, 04 Nov 2017 09:36:31 GMT  
		Size: 8.6 KB (8619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83809599c243be0167ca70ed5b74b5301ce16562d29ca65f2bccc65de256ab8`  
		Last Modified: Sat, 04 Nov 2017 09:36:40 GMT  
		Size: 59.1 MB (59082937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f5d7dd64ef50cad8531c86a3adf8daaac5449afcd8445057b5d6961116bd6c`  
		Last Modified: Sat, 04 Nov 2017 09:36:29 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee583c617dff80e975aa9035723099bc2129c3fc061eb3bdc3660a63610172a`  
		Last Modified: Sat, 04 Nov 2017 09:36:29 GMT  
		Size: 2.4 MB (2390736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec7695b7083f3ee47084e3528f47534d8de871d7846a51834f5e036e5898f88`  
		Last Modified: Sat, 04 Nov 2017 09:36:40 GMT  
		Size: 80.5 MB (80543991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fd2c92abfd412f984e7ac541aa09d96375cf0d14876843dc4d6afff403ad60`  
		Last Modified: Sat, 04 Nov 2017 09:36:29 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.5-passenger`

```console
$ docker pull redmine@sha256:9a03a0c50b58130d7fa48dd26d8c2ff22085fccde3b839a4f43a9d64e62688d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.5-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:d6695e3e5c034a21ee6820e7f9168466e52571e1ea72f3fe59a73151d1c12898
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269897453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7fb58e9f7b38c3dc71ee4720bca4147ffac0935bc28bd8005c001c8cc5796d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_MAJOR=2.2
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_VERSION=2.2.8
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Mon, 13 Nov 2017 16:42:04 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:42:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:46:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:46:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:46:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:46:35 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:43:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:43:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:21 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:43:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:43:28 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:43:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:43:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:54 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:43:54 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:43:55 GMT
ENV REDMINE_VERSION=3.3.5
# Mon, 13 Nov 2017 17:43:55 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Mon, 13 Nov 2017 17:43:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:46:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:46:29 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:46:33 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:46:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:46:33 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:46:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 13 Nov 2017 17:46:55 GMT
ENV PASSENGER_VERSION=5.1.11
# Mon, 13 Nov 2017 17:47:13 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:47:17 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 13 Nov 2017 17:47:17 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b6609e6b69536fd7320e6b2f4dd27fbf12e627005fd9fc5c98aa00700b3870`  
		Last Modified: Mon, 13 Nov 2017 17:04:50 GMT  
		Size: 35.3 MB (35301255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71bf4f134e9b066b3f0ea4f129df86995ccaf74b867b407820f4a55caa80cb0`  
		Last Modified: Mon, 13 Nov 2017 17:04:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ee9491670223e582ea6d0b3d30475ea6d3f6bbda893326370f32b0a327d126`  
		Last Modified: Mon, 13 Nov 2017 17:52:21 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119b6280e17508f701210359bf0dad47c11422f5e44f3f9cbcee95faf901a8cf`  
		Last Modified: Mon, 13 Nov 2017 17:52:24 GMT  
		Size: 14.7 MB (14650334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08bd6933ac1192f1890fcf38a77bb2a399e3d664ecff47b445d55415df92b27`  
		Last Modified: Mon, 13 Nov 2017 17:52:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123c1e4837842d6b892b6661a1ef7a46f50ec4d6953281e0203e2b6e813db0b2`  
		Last Modified: Mon, 13 Nov 2017 17:52:19 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636cccb7755bbcef29f3fa15e45ba91c99d7b6f19734b440c7185d463ede0082`  
		Last Modified: Mon, 13 Nov 2017 17:52:28 GMT  
		Size: 59.2 MB (59230242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f8f7c97a5634b9b5b7f1c23a905aedbde2f3c0a8cbb08ef2dbb3451c118332`  
		Last Modified: Mon, 13 Nov 2017 17:52:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6fcd9a1560d8c1867838e84292c5afab5aade334f8a2c792eca1a4eab5be63`  
		Last Modified: Mon, 13 Nov 2017 17:52:18 GMT  
		Size: 2.4 MB (2390741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8308102377bea32e5f9ad0dbadb341bbab9dac0230665758c09a98af22aa85b`  
		Last Modified: Mon, 13 Nov 2017 17:52:28 GMT  
		Size: 78.2 MB (78228710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e733d728e1a38b7320e8de1d0e78e20a5827b950442547a935e318c223b3f9f1`  
		Last Modified: Mon, 13 Nov 2017 17:52:17 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb32f39d0e5b2b30307a2b10e3971304446c25b630d98139ebd32c267840d95`  
		Last Modified: Mon, 13 Nov 2017 17:52:50 GMT  
		Size: 12.7 MB (12749892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d02f150d8ad408c946b394a35b55705f385519f7d92c2727d7af09b028951bb`  
		Last Modified: Mon, 13 Nov 2017 17:52:51 GMT  
		Size: 4.1 MB (4075631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:9a03a0c50b58130d7fa48dd26d8c2ff22085fccde3b839a4f43a9d64e62688d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:d6695e3e5c034a21ee6820e7f9168466e52571e1ea72f3fe59a73151d1c12898
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269897453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7fb58e9f7b38c3dc71ee4720bca4147ffac0935bc28bd8005c001c8cc5796d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_MAJOR=2.2
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_VERSION=2.2.8
# Sat, 04 Nov 2017 06:20:46 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Mon, 13 Nov 2017 16:42:04 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:42:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:46:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:46:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:46:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:46:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:46:35 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:43:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:43:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:21 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:43:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:43:28 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:43:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:43:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:43:54 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:43:54 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:43:55 GMT
ENV REDMINE_VERSION=3.3.5
# Mon, 13 Nov 2017 17:43:55 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Mon, 13 Nov 2017 17:43:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:46:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:46:29 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:46:33 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:46:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:46:33 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:46:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 13 Nov 2017 17:46:55 GMT
ENV PASSENGER_VERSION=5.1.11
# Mon, 13 Nov 2017 17:47:13 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:47:17 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 13 Nov 2017 17:47:17 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b6609e6b69536fd7320e6b2f4dd27fbf12e627005fd9fc5c98aa00700b3870`  
		Last Modified: Mon, 13 Nov 2017 17:04:50 GMT  
		Size: 35.3 MB (35301255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71bf4f134e9b066b3f0ea4f129df86995ccaf74b867b407820f4a55caa80cb0`  
		Last Modified: Mon, 13 Nov 2017 17:04:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ee9491670223e582ea6d0b3d30475ea6d3f6bbda893326370f32b0a327d126`  
		Last Modified: Mon, 13 Nov 2017 17:52:21 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119b6280e17508f701210359bf0dad47c11422f5e44f3f9cbcee95faf901a8cf`  
		Last Modified: Mon, 13 Nov 2017 17:52:24 GMT  
		Size: 14.7 MB (14650334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08bd6933ac1192f1890fcf38a77bb2a399e3d664ecff47b445d55415df92b27`  
		Last Modified: Mon, 13 Nov 2017 17:52:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123c1e4837842d6b892b6661a1ef7a46f50ec4d6953281e0203e2b6e813db0b2`  
		Last Modified: Mon, 13 Nov 2017 17:52:19 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636cccb7755bbcef29f3fa15e45ba91c99d7b6f19734b440c7185d463ede0082`  
		Last Modified: Mon, 13 Nov 2017 17:52:28 GMT  
		Size: 59.2 MB (59230242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f8f7c97a5634b9b5b7f1c23a905aedbde2f3c0a8cbb08ef2dbb3451c118332`  
		Last Modified: Mon, 13 Nov 2017 17:52:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6fcd9a1560d8c1867838e84292c5afab5aade334f8a2c792eca1a4eab5be63`  
		Last Modified: Mon, 13 Nov 2017 17:52:18 GMT  
		Size: 2.4 MB (2390741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8308102377bea32e5f9ad0dbadb341bbab9dac0230665758c09a98af22aa85b`  
		Last Modified: Mon, 13 Nov 2017 17:52:28 GMT  
		Size: 78.2 MB (78228710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e733d728e1a38b7320e8de1d0e78e20a5827b950442547a935e318c223b3f9f1`  
		Last Modified: Mon, 13 Nov 2017 17:52:17 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb32f39d0e5b2b30307a2b10e3971304446c25b630d98139ebd32c267840d95`  
		Last Modified: Mon, 13 Nov 2017 17:52:50 GMT  
		Size: 12.7 MB (12749892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d02f150d8ad408c946b394a35b55705f385519f7d92c2727d7af09b028951bb`  
		Last Modified: Mon, 13 Nov 2017 17:52:51 GMT  
		Size: 4.1 MB (4075631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:ca8b8bb623ee85cab201f891b11f7cba95df2d3ccec998d1bc779b2251804c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.4` - linux; amd64

```console
$ docker pull redmine@sha256:33cff00098889f00d1da2d7ca77329d4bee0533b7ca524f23cad339c3f9ed953
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.8 MB (241843413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3e59647e48df1ff5d1858b3d6c432e8d4ca6861ab495e86a8ac02f65de6592`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_MAJOR=2.4
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_VERSION=2.4.2
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 13 Nov 2017 16:13:59 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:13:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:18:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:18:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:18:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:18:29 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:39:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:26 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:39:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:39:30 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:39:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:39:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:59 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:39:59 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 13 Nov 2017 17:40:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:42:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:42:24 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:42:24 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:42:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:42:28 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:42:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d01efe902ac83d7ece77d07b1ae734ae6c1a17dba7627f3aeea2c0970893cd`  
		Last Modified: Mon, 13 Nov 2017 16:56:21 GMT  
		Size: 24.7 MB (24691023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e51b00a9a59c7fa333a46e0f593064a28007b574c2f716950619d6fda16b745`  
		Last Modified: Mon, 13 Nov 2017 16:56:10 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c743c043442da02714d3ba47b228d20cc1c6d40f598e1e8b10dfbf6eeda471ac`  
		Last Modified: Mon, 13 Nov 2017 17:50:38 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcf3c9e769a791cd897f3d2f4158b1b5ff7f259b631c122a96f21764475941d`  
		Last Modified: Mon, 13 Nov 2017 17:50:43 GMT  
		Size: 14.7 MB (14650354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bf4ee5ba98ead1720021cf7e4ac3a7a63fffd81c9771b0d663ffe9e149415f`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7ee5d63d9f8b75e4f790873957fe599cad3c797af0fffce2effbeb7ace7ee`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d2214839a2daf9ad439a6c2a52bc3768e1c1d24468a8fcb021df370fd3be96`  
		Last Modified: Mon, 13 Nov 2017 17:50:50 GMT  
		Size: 59.2 MB (59230431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408b1174a85d904272395109d1fe4ac0d033f5792294d13c90410d9db5c88a2b`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b5b81a236af934557a82edc1866bb50f95197e7d306b62ecbd154eea162b9`  
		Last Modified: Mon, 13 Nov 2017 17:50:33 GMT  
		Size: 2.4 MB (2449736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a98275aa7769dcd42638bbbad8d326887595bad6bdaf186de172f38f93d01`  
		Last Modified: Mon, 13 Nov 2017 17:51:10 GMT  
		Size: 77.6 MB (77551212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce725ae048a1d5dc1e85d980b991f7e179c85f1f5856d404098fc1fd3cd1003`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:c58ba8d316e14483b3b6f23b53c79fdd3728a6ea5cc1e2fe5fd0103741ff162c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234966385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a4887dc975ca437e0a4be646fb6a66291af40a920bda54c7fdfeddc95b3737f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:44:40 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 01:44:56 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:44:56 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:50:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:50:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:50:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:50:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:50:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:50:53 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:33:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:34:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:34:07 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:34:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:34:10 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:34:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:35:13 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:35:13 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:35:13 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 02:35:14 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 02:35:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:39:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:39:37 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:39:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:39:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:39:38 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:39:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32ad7242f9d45dc718f186a9032b57309c959ef6182ccb95871075357d411ae`  
		Last Modified: Sat, 04 Nov 2017 02:13:47 GMT  
		Size: 24.4 MB (24447738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb21818c59252bbaea0d5e21f4adb71f1675c053f2caa486e3113d6ebc781e`  
		Last Modified: Sat, 04 Nov 2017 02:13:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff37693d58f14345f0d67375e7b3bd3adb51d3aa8b4954f7d714188399a64b8`  
		Last Modified: Sat, 04 Nov 2017 02:50:56 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aad99e52a1d8d289f29a6fa076a9a61b14163087ff280c9f7b25a67c0668cf5`  
		Last Modified: Sat, 04 Nov 2017 02:51:08 GMT  
		Size: 14.3 MB (14347298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459476f59fe501a44d107a3fbb366bcaa9905980749c658fc0c0140d10fc84fa`  
		Last Modified: Sat, 04 Nov 2017 02:50:56 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45f25b3c34574a5513c51de49eb5bb4c5c6b127fb53923023f13532381ecb8e`  
		Last Modified: Sat, 04 Nov 2017 02:50:55 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f5915648501ce9b5cb1fb3a4489470f40e403ef9a4d253e05076e19dd2bce6b`  
		Last Modified: Sat, 04 Nov 2017 02:51:13 GMT  
		Size: 56.6 MB (56571474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a2b4a7748b00d9078c08545c4c1298717cde05eb42fdb874f72e950ecedfc9`  
		Last Modified: Sat, 04 Nov 2017 02:50:53 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17a0764cdeb519514766cd245281e96b41a4b10cea89836f59ee86d253818f`  
		Last Modified: Sat, 04 Nov 2017 02:50:53 GMT  
		Size: 2.5 MB (2450381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2703ae2fb29a899f3673ce57c24b78538512881efdb287a128d019451842ac3d`  
		Last Modified: Sat, 04 Nov 2017 02:51:55 GMT  
		Size: 76.7 MB (76653946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16d7f00e51edfbb8ab24500d4555f23452b02a069db1f714c8ba6d1c936969b`  
		Last Modified: Sat, 04 Nov 2017 02:50:52 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:92260caf8dde5abc96a18e9fba224d0275a2076172ce07760ff12f0d0f3016d4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229243942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9fdf4aa33cc698d6351f54ee0e80a5de5562e78699feb3a85e37fcb2d81cac0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:34:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:34:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 01:32:53 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:32:54 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:38:20 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:38:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:38:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:38:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:38:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:38:23 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:26:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:27:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:27:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:27:21 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:27:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:28:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:28:18 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:28:18 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:28:18 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 02:28:19 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 02:28:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:32:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:32:28 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:32:29 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:32:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:32:29 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:32:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45e4d864a6c60ee4b4a2032ca433fc05d96194e7180016527572da21c44f227`  
		Last Modified: Tue, 10 Oct 2017 01:02:32 GMT  
		Size: 8.8 MB (8761230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30bf1114e281150fe7b59eee2ce7a038a378c4970714ec63009a763b78eb919`  
		Last Modified: Tue, 10 Oct 2017 01:02:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f6c1352d70098c258e5d2d95f4b53b79839a3f541cb6c3d692b496733f25b6`  
		Last Modified: Sat, 04 Nov 2017 02:03:11 GMT  
		Size: 24.3 MB (24310987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdf27dff091ec1c87d75e53ba95608fd8165aabeb33d9438a8807d1b9bb59c`  
		Last Modified: Sat, 04 Nov 2017 02:03:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a09f24fdf3dbffb07414700cad6343cdc3662d4f5d5bd3fc32a18fea5b8e2d`  
		Last Modified: Sat, 04 Nov 2017 02:43:21 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375a5e573ac6e5daa9fa690caa6da210fb0e9b8730e96ad6b71623a51cc9afac`  
		Last Modified: Sat, 04 Nov 2017 02:43:24 GMT  
		Size: 14.1 MB (14134566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254f2f2b210f01002cda29a4f39ce26da42ae5e508d714b43cbb01b4d04548bc`  
		Last Modified: Sat, 04 Nov 2017 02:43:19 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143ec0fe9df7e060a8cf4de0615e3232abe972a71f2b22abc39660b07d822725`  
		Last Modified: Sat, 04 Nov 2017 02:43:20 GMT  
		Size: 7.3 KB (7309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4287b93ab1209a4b4bd64b99afd0d4f8359ff32097d7c1a2cd6be5a3466542a`  
		Last Modified: Sat, 04 Nov 2017 02:43:35 GMT  
		Size: 54.3 MB (54305169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e62b5ebc27f728e9eee04765cb833021457512f85d7f2a65bec5e1ca45178a`  
		Last Modified: Sat, 04 Nov 2017 02:43:18 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5279e08b852c87f0fc6bff49ce8fbb9c1b038aefbe4719d6017628562a7aaaf9`  
		Last Modified: Sat, 04 Nov 2017 02:43:20 GMT  
		Size: 2.5 MB (2450381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a966554102f63de8e9c01e7a932c5d59e02c3839afa3e8ce33781291a2abdcb7`  
		Last Modified: Sat, 04 Nov 2017 02:43:36 GMT  
		Size: 76.1 MB (76108353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ee5fee4307c3f70bb3602b32bb35925770dd886a1349eb5358f3b263ac0740`  
		Last Modified: Sat, 04 Nov 2017 02:43:18 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:5b5b4aa83ca96fd456f64609b6552d8028a1c6c63eb3f9d392d538d0cd4a08a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233888010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51e418a74c8c094f440dbc33c791200631900b5a9d4eb23d7668e029c4f1786a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 07:42:50 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 13 Nov 2017 22:21:29 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 22:21:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 22:30:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 22:30:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 22:30:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 22:30:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 22:30:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 22:30:58 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 23:46:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 23:46:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 23:46:54 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 23:46:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 23:46:59 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 23:47:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 23:49:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 23:49:22 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 23:49:24 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 23:49:25 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 13 Nov 2017 23:49:27 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 13 Nov 2017 23:49:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 23:59:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 23:59:43 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 23:59:44 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 23:59:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 23:59:45 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 23:59:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc299bd927f107bec6cb664121abce38fa8a4ee92b253ad2da8b316337f6f25e`  
		Last Modified: Mon, 13 Nov 2017 23:19:01 GMT  
		Size: 24.7 MB (24666271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933f07853810abe6ea7304d8749175f505866849fb11f28bd8f5c3bd0ffba32d`  
		Last Modified: Mon, 13 Nov 2017 23:18:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4361afaaca7e3171e1b1bca0830674126e6e7c2dd3e03e4421f661d88a096b6e`  
		Last Modified: Tue, 14 Nov 2017 00:24:34 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab81514ad54eafc4156888010bf60c759a81c1ecf9acc51df97d01bc2c8ed61`  
		Last Modified: Tue, 14 Nov 2017 00:24:41 GMT  
		Size: 14.5 MB (14462621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068fe489e486c6267e515e4eb3df3b69b6dd4ccb74240adcaf74848cc06baf9`  
		Last Modified: Tue, 14 Nov 2017 00:24:33 GMT  
		Size: 468.7 KB (468696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4c01259cfbad0495abfb2b4d96afe6d56f2ba41b327b7a51aecec3cd45c5ff`  
		Last Modified: Tue, 14 Nov 2017 00:24:32 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0315d7cf71c4f0b5dd7aa41b92cb2292aa8a6375c65d2ebc19ac5a3607e17143`  
		Last Modified: Tue, 14 Nov 2017 00:24:49 GMT  
		Size: 55.8 MB (55760350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8c3a072e70916a8a52c8e60b24e9b7a16cb1988cfcee6ab7b8a5854a24b1ed`  
		Last Modified: Tue, 14 Nov 2017 00:24:29 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbde5302321844fb4f57225ff75c92d18c43141692c7ad8dd1d6ee284d7f6c2`  
		Last Modified: Tue, 14 Nov 2017 00:24:30 GMT  
		Size: 2.4 MB (2449739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc61322cef5504068e38f94b54258403011eb640a5af29453835ec849071e61f`  
		Last Modified: Tue, 14 Nov 2017 00:24:51 GMT  
		Size: 76.8 MB (76805699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ef95b6535b31c25f12c9ccf1ec258cfa079a6267be11fdfeb9098841c726b7`  
		Last Modified: Tue, 14 Nov 2017 00:24:30 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:260cc0ad6add24266ad4e8d32e0315f94008a41f48cd5a42828a838dd2faf1b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245696917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7452a76a8b4cad95065b78d2777fd65d37fa2c37200766d5bf120b03b515d642`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 02:52:31 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 03:03:44 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 03:03:44 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 03:07:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 03:07:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 03:07:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 03:07:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 03:07:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 03:07:55 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 04:03:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 04:04:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:04:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 04:04:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 04:04:14 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 04:04:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 04:05:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:05:26 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 04:05:26 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 04:05:26 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 04:05:26 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 04:05:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 04:08:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 04:08:41 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 04:08:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 04:08:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 04:08:41 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 04:08:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7246b4d51c87e9fc2090f9371aaaed1b23937a1911cc5d0fecceb836667c8c5`  
		Last Modified: Sat, 04 Nov 2017 03:39:35 GMT  
		Size: 23.7 MB (23671130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d57d073af2320f8fe0658381109d89f14f7689faebe123a895b80f9929156`  
		Last Modified: Sat, 04 Nov 2017 03:39:28 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea9e6ae9b3571f8cec51f764c8a43d7e2e474a3a3390366270074c497017b92`  
		Last Modified: Sat, 04 Nov 2017 04:31:58 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e033b6ce1452a86143de189e1d8973eee1e6acd36bf19659aec62715555dd0`  
		Last Modified: Sat, 04 Nov 2017 04:32:03 GMT  
		Size: 14.8 MB (14817347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1836ed7036c3a47b9b87220c62dc7a2be02dac18f34412010a16a73a250151ac`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4e6f0ea6d9c16e511ca8dbecd05a87b821df22407787f6b3531dea8aee4b4c`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 8.6 KB (8563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ace09608a0ad4050963b9f6e57c594ca48a554efac8afb8d676ac62a16d26ae`  
		Last Modified: Sat, 04 Nov 2017 04:32:17 GMT  
		Size: 60.1 MB (60103887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad31b7c6c628bad3e601c22f81abfc18d14de1e63e3f6e1946f0a0aaf69f79f`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199571983f03b4e3ce47e6bfd28370bb4e35caad88b107c6449c732167f985b6`  
		Last Modified: Sat, 04 Nov 2017 04:32:02 GMT  
		Size: 2.4 MB (2449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685cfcdfab8d8a47e46b1ecd82f4a7ea0f30879c7475b4cbdbfa304ab61c1c0`  
		Last Modified: Sat, 04 Nov 2017 04:32:17 GMT  
		Size: 76.8 MB (76759991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47db838f4c0889eafd4e3eadbae73fb2a80bfd5dd7742b077da97f4e029348d`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:425097868bcfd027a032a1bdc1fc4ae2c469169c2a6c49957d032039de8d7956
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240427190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39c80feee00f2b9039484061653c0e0cb37a46b9a66b6490a3da005cc77d256a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:57:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:57:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 05:57:44 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 05:57:46 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 05:57:49 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 00:49:08 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 00:49:09 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 00:58:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 00:58:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 00:58:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 00:58:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 00:58:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 00:58:55 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 01:59:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:00:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:00:11 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:00:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:00:20 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:00:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:03:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:03:44 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:03:45 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:03:47 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 02:03:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 02:03:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:15:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:15:25 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:15:27 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:15:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:15:30 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:15:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40a8df7f5d8f2418b2f12762edbef8533b5871c7aaca1937e8db1d1506897ef`  
		Last Modified: Tue, 10 Oct 2017 06:49:02 GMT  
		Size: 10.1 MB (10133017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68873b9b142821a59413ab21afce04b7492c1b99141626f4d3d3fca54a1ffff1`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6593e28fc7d48cfd4522a059309020a78721f5c4075faec611161402b44e0564`  
		Last Modified: Sat, 04 Nov 2017 01:38:17 GMT  
		Size: 25.1 MB (25122107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70179f1b7f3cbd304455ce8acea5eab2310422082ed44619ee787028eb343e6`  
		Last Modified: Sat, 04 Nov 2017 01:38:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990ae2be35968be8b149618adeafb727501998c26057fd3e357f5fc099b4f294`  
		Last Modified: Sat, 04 Nov 2017 02:47:09 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08952f9338a5d409e505fdcc8c22ebc9d96662bbebdfaba8eeec6534c129d5f7`  
		Last Modified: Sat, 04 Nov 2017 02:47:10 GMT  
		Size: 14.7 MB (14720199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb06ae2f5e7087b36a1822bd9f6331ef7eaa2cbe45395e18d930216653c0f3b`  
		Last Modified: Sat, 04 Nov 2017 02:47:06 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa3097e13fbd5fdeada2348c44cbd660e446f4da19b782b296d6bd582910a83`  
		Last Modified: Sat, 04 Nov 2017 02:47:06 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e45c3b6765e3d3ea0ecbdad7e33d36cb1ca864126d82b72feb60beaa1092cd7`  
		Last Modified: Sat, 04 Nov 2017 02:47:20 GMT  
		Size: 58.1 MB (58098678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be27a82ba8f0ff3e91e1705f54e2cfde5120ed0efa76de8580fdd6c5afb46c2`  
		Last Modified: Sat, 04 Nov 2017 02:47:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d5d3c6e4b719d0972c27b5aefb202f09467986a9a802931f8b4999c15988b5`  
		Last Modified: Sat, 04 Nov 2017 02:47:04 GMT  
		Size: 2.5 MB (2450372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199337c5b82782921b57b94d487b2a9c60b6b25f0811aad53172f0d0347d0ed6`  
		Last Modified: Sat, 04 Nov 2017 02:47:19 GMT  
		Size: 77.6 MB (77610210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab799de0481f2009def9b5d1e0a5a24978f19d9b0d257512c1b31d082f84ad3`  
		Last Modified: Sat, 04 Nov 2017 02:47:03 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:db146e321ef9a2476999b3081e86a98bf20538449231e8a3e200c75251360f34
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244576568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe879a642c589b23761b0a1b3e994fae7916dce5dbf18338dd7eb3c44e70d8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:59:56 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 08:46:28 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 08:46:28 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 08:49:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 08:49:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 08:49:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 08:49:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 08:49:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 08:49:42 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 09:26:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 09:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:26:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:26:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 09:26:30 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 09:26:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 09:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:27:08 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 09:27:08 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 09:27:08 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 09:27:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 09:27:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 09:29:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 09:29:40 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 09:29:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 09:29:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 09:29:41 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 09:29:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfdf9be3e1a6a12a81ae49b4152d0b39604b66639ff7ecf036ef39befa5545f`  
		Last Modified: Sat, 04 Nov 2017 09:07:11 GMT  
		Size: 25.1 MB (25077028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a681b3fdcae698060da0eb4fcc2f1ad5d70baf512ef69e2dded3cde452998351`  
		Last Modified: Sat, 04 Nov 2017 09:07:04 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1c9c3b53a179bfc82a0b0b4085c033fa5b63fa3882daaf08975113dfb7a237`  
		Last Modified: Sat, 04 Nov 2017 09:36:01 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681ba562cef611e4b3a6aa4cb6d5af065a3e61467e7c74bc4200e014190df230`  
		Last Modified: Sat, 04 Nov 2017 09:36:03 GMT  
		Size: 14.8 MB (14815084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf13cfda2a1cfd5bf2f5e1c39db186cc412fe1bd766049ec6fbfe8e6e85d798`  
		Last Modified: Sat, 04 Nov 2017 09:35:59 GMT  
		Size: 486.8 KB (486820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbe843ab3cba5dec3e729fb1238282c5f41a4e3820fdace0b8131b6328b277d`  
		Last Modified: Sat, 04 Nov 2017 09:36:00 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e9dd5fcd1f515edf4c2dac82d3b4d972578abcf15de15015b6c96797ba9744`  
		Last Modified: Sat, 04 Nov 2017 09:36:09 GMT  
		Size: 59.1 MB (59082947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b662bbaaacb256281bb0bc59ddab006b35286532bd1709426d90e0fc2a384e`  
		Last Modified: Sat, 04 Nov 2017 09:35:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31633319256ee73d7a52b1702916cf1ba342527a1c7b850ab7406121062f4089`  
		Last Modified: Sat, 04 Nov 2017 09:35:59 GMT  
		Size: 2.4 MB (2449720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ec0adf4f3e220fcc8ec6888c75b884448071d39ea341f3210bf6daf39c8185`  
		Last Modified: Sat, 04 Nov 2017 09:36:09 GMT  
		Size: 79.9 MB (79902938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3113d8efdc225f8429dac842e6ccae9a6fc1937609e620934fb866ddce2e868`  
		Last Modified: Sat, 04 Nov 2017 09:35:58 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.3`

```console
$ docker pull redmine@sha256:ca8b8bb623ee85cab201f891b11f7cba95df2d3ccec998d1bc779b2251804c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.4.3` - linux; amd64

```console
$ docker pull redmine@sha256:33cff00098889f00d1da2d7ca77329d4bee0533b7ca524f23cad339c3f9ed953
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.8 MB (241843413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3e59647e48df1ff5d1858b3d6c432e8d4ca6861ab495e86a8ac02f65de6592`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_MAJOR=2.4
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_VERSION=2.4.2
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 13 Nov 2017 16:13:59 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:13:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:18:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:18:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:18:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:18:29 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:39:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:26 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:39:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:39:30 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:39:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:39:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:59 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:39:59 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 13 Nov 2017 17:40:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:42:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:42:24 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:42:24 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:42:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:42:28 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:42:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d01efe902ac83d7ece77d07b1ae734ae6c1a17dba7627f3aeea2c0970893cd`  
		Last Modified: Mon, 13 Nov 2017 16:56:21 GMT  
		Size: 24.7 MB (24691023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e51b00a9a59c7fa333a46e0f593064a28007b574c2f716950619d6fda16b745`  
		Last Modified: Mon, 13 Nov 2017 16:56:10 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c743c043442da02714d3ba47b228d20cc1c6d40f598e1e8b10dfbf6eeda471ac`  
		Last Modified: Mon, 13 Nov 2017 17:50:38 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcf3c9e769a791cd897f3d2f4158b1b5ff7f259b631c122a96f21764475941d`  
		Last Modified: Mon, 13 Nov 2017 17:50:43 GMT  
		Size: 14.7 MB (14650354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bf4ee5ba98ead1720021cf7e4ac3a7a63fffd81c9771b0d663ffe9e149415f`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7ee5d63d9f8b75e4f790873957fe599cad3c797af0fffce2effbeb7ace7ee`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d2214839a2daf9ad439a6c2a52bc3768e1c1d24468a8fcb021df370fd3be96`  
		Last Modified: Mon, 13 Nov 2017 17:50:50 GMT  
		Size: 59.2 MB (59230431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408b1174a85d904272395109d1fe4ac0d033f5792294d13c90410d9db5c88a2b`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b5b81a236af934557a82edc1866bb50f95197e7d306b62ecbd154eea162b9`  
		Last Modified: Mon, 13 Nov 2017 17:50:33 GMT  
		Size: 2.4 MB (2449736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a98275aa7769dcd42638bbbad8d326887595bad6bdaf186de172f38f93d01`  
		Last Modified: Mon, 13 Nov 2017 17:51:10 GMT  
		Size: 77.6 MB (77551212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce725ae048a1d5dc1e85d980b991f7e179c85f1f5856d404098fc1fd3cd1003`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:c58ba8d316e14483b3b6f23b53c79fdd3728a6ea5cc1e2fe5fd0103741ff162c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234966385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a4887dc975ca437e0a4be646fb6a66291af40a920bda54c7fdfeddc95b3737f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:44:40 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 01:44:56 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:44:56 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:50:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:50:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:50:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:50:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:50:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:50:53 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:33:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:34:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:34:07 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:34:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:34:10 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:34:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:35:13 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:35:13 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:35:13 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 02:35:14 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 02:35:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:39:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:39:37 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:39:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:39:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:39:38 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:39:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32ad7242f9d45dc718f186a9032b57309c959ef6182ccb95871075357d411ae`  
		Last Modified: Sat, 04 Nov 2017 02:13:47 GMT  
		Size: 24.4 MB (24447738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb21818c59252bbaea0d5e21f4adb71f1675c053f2caa486e3113d6ebc781e`  
		Last Modified: Sat, 04 Nov 2017 02:13:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff37693d58f14345f0d67375e7b3bd3adb51d3aa8b4954f7d714188399a64b8`  
		Last Modified: Sat, 04 Nov 2017 02:50:56 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aad99e52a1d8d289f29a6fa076a9a61b14163087ff280c9f7b25a67c0668cf5`  
		Last Modified: Sat, 04 Nov 2017 02:51:08 GMT  
		Size: 14.3 MB (14347298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459476f59fe501a44d107a3fbb366bcaa9905980749c658fc0c0140d10fc84fa`  
		Last Modified: Sat, 04 Nov 2017 02:50:56 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45f25b3c34574a5513c51de49eb5bb4c5c6b127fb53923023f13532381ecb8e`  
		Last Modified: Sat, 04 Nov 2017 02:50:55 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f5915648501ce9b5cb1fb3a4489470f40e403ef9a4d253e05076e19dd2bce6b`  
		Last Modified: Sat, 04 Nov 2017 02:51:13 GMT  
		Size: 56.6 MB (56571474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a2b4a7748b00d9078c08545c4c1298717cde05eb42fdb874f72e950ecedfc9`  
		Last Modified: Sat, 04 Nov 2017 02:50:53 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17a0764cdeb519514766cd245281e96b41a4b10cea89836f59ee86d253818f`  
		Last Modified: Sat, 04 Nov 2017 02:50:53 GMT  
		Size: 2.5 MB (2450381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2703ae2fb29a899f3673ce57c24b78538512881efdb287a128d019451842ac3d`  
		Last Modified: Sat, 04 Nov 2017 02:51:55 GMT  
		Size: 76.7 MB (76653946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16d7f00e51edfbb8ab24500d4555f23452b02a069db1f714c8ba6d1c936969b`  
		Last Modified: Sat, 04 Nov 2017 02:50:52 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:92260caf8dde5abc96a18e9fba224d0275a2076172ce07760ff12f0d0f3016d4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229243942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9fdf4aa33cc698d6351f54ee0e80a5de5562e78699feb3a85e37fcb2d81cac0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:34:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:34:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 01:32:53 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:32:54 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:38:20 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:38:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:38:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:38:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:38:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:38:23 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:26:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:27:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:27:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:27:21 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:27:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:28:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:28:18 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:28:18 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:28:18 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 02:28:19 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 02:28:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:32:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:32:28 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:32:29 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:32:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:32:29 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:32:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45e4d864a6c60ee4b4a2032ca433fc05d96194e7180016527572da21c44f227`  
		Last Modified: Tue, 10 Oct 2017 01:02:32 GMT  
		Size: 8.8 MB (8761230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30bf1114e281150fe7b59eee2ce7a038a378c4970714ec63009a763b78eb919`  
		Last Modified: Tue, 10 Oct 2017 01:02:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f6c1352d70098c258e5d2d95f4b53b79839a3f541cb6c3d692b496733f25b6`  
		Last Modified: Sat, 04 Nov 2017 02:03:11 GMT  
		Size: 24.3 MB (24310987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdf27dff091ec1c87d75e53ba95608fd8165aabeb33d9438a8807d1b9bb59c`  
		Last Modified: Sat, 04 Nov 2017 02:03:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a09f24fdf3dbffb07414700cad6343cdc3662d4f5d5bd3fc32a18fea5b8e2d`  
		Last Modified: Sat, 04 Nov 2017 02:43:21 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375a5e573ac6e5daa9fa690caa6da210fb0e9b8730e96ad6b71623a51cc9afac`  
		Last Modified: Sat, 04 Nov 2017 02:43:24 GMT  
		Size: 14.1 MB (14134566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254f2f2b210f01002cda29a4f39ce26da42ae5e508d714b43cbb01b4d04548bc`  
		Last Modified: Sat, 04 Nov 2017 02:43:19 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143ec0fe9df7e060a8cf4de0615e3232abe972a71f2b22abc39660b07d822725`  
		Last Modified: Sat, 04 Nov 2017 02:43:20 GMT  
		Size: 7.3 KB (7309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4287b93ab1209a4b4bd64b99afd0d4f8359ff32097d7c1a2cd6be5a3466542a`  
		Last Modified: Sat, 04 Nov 2017 02:43:35 GMT  
		Size: 54.3 MB (54305169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e62b5ebc27f728e9eee04765cb833021457512f85d7f2a65bec5e1ca45178a`  
		Last Modified: Sat, 04 Nov 2017 02:43:18 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5279e08b852c87f0fc6bff49ce8fbb9c1b038aefbe4719d6017628562a7aaaf9`  
		Last Modified: Sat, 04 Nov 2017 02:43:20 GMT  
		Size: 2.5 MB (2450381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a966554102f63de8e9c01e7a932c5d59e02c3839afa3e8ce33781291a2abdcb7`  
		Last Modified: Sat, 04 Nov 2017 02:43:36 GMT  
		Size: 76.1 MB (76108353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ee5fee4307c3f70bb3602b32bb35925770dd886a1349eb5358f3b263ac0740`  
		Last Modified: Sat, 04 Nov 2017 02:43:18 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:5b5b4aa83ca96fd456f64609b6552d8028a1c6c63eb3f9d392d538d0cd4a08a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233888010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51e418a74c8c094f440dbc33c791200631900b5a9d4eb23d7668e029c4f1786a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 07:42:50 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 13 Nov 2017 22:21:29 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 22:21:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 22:30:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 22:30:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 22:30:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 22:30:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 22:30:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 22:30:58 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 23:46:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 23:46:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 23:46:54 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 23:46:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 23:46:59 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 23:47:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 23:49:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 23:49:22 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 23:49:24 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 23:49:25 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 13 Nov 2017 23:49:27 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 13 Nov 2017 23:49:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 23:59:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 23:59:43 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 23:59:44 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 23:59:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 23:59:45 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 23:59:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc299bd927f107bec6cb664121abce38fa8a4ee92b253ad2da8b316337f6f25e`  
		Last Modified: Mon, 13 Nov 2017 23:19:01 GMT  
		Size: 24.7 MB (24666271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933f07853810abe6ea7304d8749175f505866849fb11f28bd8f5c3bd0ffba32d`  
		Last Modified: Mon, 13 Nov 2017 23:18:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4361afaaca7e3171e1b1bca0830674126e6e7c2dd3e03e4421f661d88a096b6e`  
		Last Modified: Tue, 14 Nov 2017 00:24:34 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab81514ad54eafc4156888010bf60c759a81c1ecf9acc51df97d01bc2c8ed61`  
		Last Modified: Tue, 14 Nov 2017 00:24:41 GMT  
		Size: 14.5 MB (14462621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068fe489e486c6267e515e4eb3df3b69b6dd4ccb74240adcaf74848cc06baf9`  
		Last Modified: Tue, 14 Nov 2017 00:24:33 GMT  
		Size: 468.7 KB (468696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4c01259cfbad0495abfb2b4d96afe6d56f2ba41b327b7a51aecec3cd45c5ff`  
		Last Modified: Tue, 14 Nov 2017 00:24:32 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0315d7cf71c4f0b5dd7aa41b92cb2292aa8a6375c65d2ebc19ac5a3607e17143`  
		Last Modified: Tue, 14 Nov 2017 00:24:49 GMT  
		Size: 55.8 MB (55760350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8c3a072e70916a8a52c8e60b24e9b7a16cb1988cfcee6ab7b8a5854a24b1ed`  
		Last Modified: Tue, 14 Nov 2017 00:24:29 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbde5302321844fb4f57225ff75c92d18c43141692c7ad8dd1d6ee284d7f6c2`  
		Last Modified: Tue, 14 Nov 2017 00:24:30 GMT  
		Size: 2.4 MB (2449739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc61322cef5504068e38f94b54258403011eb640a5af29453835ec849071e61f`  
		Last Modified: Tue, 14 Nov 2017 00:24:51 GMT  
		Size: 76.8 MB (76805699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ef95b6535b31c25f12c9ccf1ec258cfa079a6267be11fdfeb9098841c726b7`  
		Last Modified: Tue, 14 Nov 2017 00:24:30 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; 386

```console
$ docker pull redmine@sha256:260cc0ad6add24266ad4e8d32e0315f94008a41f48cd5a42828a838dd2faf1b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245696917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7452a76a8b4cad95065b78d2777fd65d37fa2c37200766d5bf120b03b515d642`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 02:52:31 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 03:03:44 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 03:03:44 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 03:07:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 03:07:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 03:07:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 03:07:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 03:07:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 03:07:55 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 04:03:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 04:04:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:04:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 04:04:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 04:04:14 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 04:04:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 04:05:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:05:26 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 04:05:26 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 04:05:26 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 04:05:26 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 04:05:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 04:08:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 04:08:41 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 04:08:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 04:08:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 04:08:41 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 04:08:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7246b4d51c87e9fc2090f9371aaaed1b23937a1911cc5d0fecceb836667c8c5`  
		Last Modified: Sat, 04 Nov 2017 03:39:35 GMT  
		Size: 23.7 MB (23671130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d57d073af2320f8fe0658381109d89f14f7689faebe123a895b80f9929156`  
		Last Modified: Sat, 04 Nov 2017 03:39:28 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea9e6ae9b3571f8cec51f764c8a43d7e2e474a3a3390366270074c497017b92`  
		Last Modified: Sat, 04 Nov 2017 04:31:58 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e033b6ce1452a86143de189e1d8973eee1e6acd36bf19659aec62715555dd0`  
		Last Modified: Sat, 04 Nov 2017 04:32:03 GMT  
		Size: 14.8 MB (14817347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1836ed7036c3a47b9b87220c62dc7a2be02dac18f34412010a16a73a250151ac`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4e6f0ea6d9c16e511ca8dbecd05a87b821df22407787f6b3531dea8aee4b4c`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 8.6 KB (8563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ace09608a0ad4050963b9f6e57c594ca48a554efac8afb8d676ac62a16d26ae`  
		Last Modified: Sat, 04 Nov 2017 04:32:17 GMT  
		Size: 60.1 MB (60103887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad31b7c6c628bad3e601c22f81abfc18d14de1e63e3f6e1946f0a0aaf69f79f`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199571983f03b4e3ce47e6bfd28370bb4e35caad88b107c6449c732167f985b6`  
		Last Modified: Sat, 04 Nov 2017 04:32:02 GMT  
		Size: 2.4 MB (2449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685cfcdfab8d8a47e46b1ecd82f4a7ea0f30879c7475b4cbdbfa304ab61c1c0`  
		Last Modified: Sat, 04 Nov 2017 04:32:17 GMT  
		Size: 76.8 MB (76759991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47db838f4c0889eafd4e3eadbae73fb2a80bfd5dd7742b077da97f4e029348d`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:425097868bcfd027a032a1bdc1fc4ae2c469169c2a6c49957d032039de8d7956
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240427190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39c80feee00f2b9039484061653c0e0cb37a46b9a66b6490a3da005cc77d256a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:57:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:57:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 05:57:44 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 05:57:46 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 05:57:49 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 00:49:08 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 00:49:09 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 00:58:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 00:58:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 00:58:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 00:58:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 00:58:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 00:58:55 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 01:59:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:00:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:00:11 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:00:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:00:20 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:00:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:03:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:03:44 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:03:45 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:03:47 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 02:03:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 02:03:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:15:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:15:25 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:15:27 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:15:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:15:30 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:15:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40a8df7f5d8f2418b2f12762edbef8533b5871c7aaca1937e8db1d1506897ef`  
		Last Modified: Tue, 10 Oct 2017 06:49:02 GMT  
		Size: 10.1 MB (10133017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68873b9b142821a59413ab21afce04b7492c1b99141626f4d3d3fca54a1ffff1`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6593e28fc7d48cfd4522a059309020a78721f5c4075faec611161402b44e0564`  
		Last Modified: Sat, 04 Nov 2017 01:38:17 GMT  
		Size: 25.1 MB (25122107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70179f1b7f3cbd304455ce8acea5eab2310422082ed44619ee787028eb343e6`  
		Last Modified: Sat, 04 Nov 2017 01:38:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990ae2be35968be8b149618adeafb727501998c26057fd3e357f5fc099b4f294`  
		Last Modified: Sat, 04 Nov 2017 02:47:09 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08952f9338a5d409e505fdcc8c22ebc9d96662bbebdfaba8eeec6534c129d5f7`  
		Last Modified: Sat, 04 Nov 2017 02:47:10 GMT  
		Size: 14.7 MB (14720199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb06ae2f5e7087b36a1822bd9f6331ef7eaa2cbe45395e18d930216653c0f3b`  
		Last Modified: Sat, 04 Nov 2017 02:47:06 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa3097e13fbd5fdeada2348c44cbd660e446f4da19b782b296d6bd582910a83`  
		Last Modified: Sat, 04 Nov 2017 02:47:06 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e45c3b6765e3d3ea0ecbdad7e33d36cb1ca864126d82b72feb60beaa1092cd7`  
		Last Modified: Sat, 04 Nov 2017 02:47:20 GMT  
		Size: 58.1 MB (58098678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be27a82ba8f0ff3e91e1705f54e2cfde5120ed0efa76de8580fdd6c5afb46c2`  
		Last Modified: Sat, 04 Nov 2017 02:47:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d5d3c6e4b719d0972c27b5aefb202f09467986a9a802931f8b4999c15988b5`  
		Last Modified: Sat, 04 Nov 2017 02:47:04 GMT  
		Size: 2.5 MB (2450372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199337c5b82782921b57b94d487b2a9c60b6b25f0811aad53172f0d0347d0ed6`  
		Last Modified: Sat, 04 Nov 2017 02:47:19 GMT  
		Size: 77.6 MB (77610210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab799de0481f2009def9b5d1e0a5a24978f19d9b0d257512c1b31d082f84ad3`  
		Last Modified: Sat, 04 Nov 2017 02:47:03 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; s390x

```console
$ docker pull redmine@sha256:db146e321ef9a2476999b3081e86a98bf20538449231e8a3e200c75251360f34
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244576568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe879a642c589b23761b0a1b3e994fae7916dce5dbf18338dd7eb3c44e70d8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:59:56 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 08:46:28 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 08:46:28 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 08:49:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 08:49:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 08:49:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 08:49:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 08:49:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 08:49:42 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 09:26:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 09:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:26:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:26:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 09:26:30 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 09:26:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 09:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:27:08 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 09:27:08 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 09:27:08 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 09:27:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 09:27:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 09:29:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 09:29:40 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 09:29:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 09:29:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 09:29:41 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 09:29:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfdf9be3e1a6a12a81ae49b4152d0b39604b66639ff7ecf036ef39befa5545f`  
		Last Modified: Sat, 04 Nov 2017 09:07:11 GMT  
		Size: 25.1 MB (25077028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a681b3fdcae698060da0eb4fcc2f1ad5d70baf512ef69e2dded3cde452998351`  
		Last Modified: Sat, 04 Nov 2017 09:07:04 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1c9c3b53a179bfc82a0b0b4085c033fa5b63fa3882daaf08975113dfb7a237`  
		Last Modified: Sat, 04 Nov 2017 09:36:01 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681ba562cef611e4b3a6aa4cb6d5af065a3e61467e7c74bc4200e014190df230`  
		Last Modified: Sat, 04 Nov 2017 09:36:03 GMT  
		Size: 14.8 MB (14815084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf13cfda2a1cfd5bf2f5e1c39db186cc412fe1bd766049ec6fbfe8e6e85d798`  
		Last Modified: Sat, 04 Nov 2017 09:35:59 GMT  
		Size: 486.8 KB (486820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbe843ab3cba5dec3e729fb1238282c5f41a4e3820fdace0b8131b6328b277d`  
		Last Modified: Sat, 04 Nov 2017 09:36:00 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e9dd5fcd1f515edf4c2dac82d3b4d972578abcf15de15015b6c96797ba9744`  
		Last Modified: Sat, 04 Nov 2017 09:36:09 GMT  
		Size: 59.1 MB (59082947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b662bbaaacb256281bb0bc59ddab006b35286532bd1709426d90e0fc2a384e`  
		Last Modified: Sat, 04 Nov 2017 09:35:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31633319256ee73d7a52b1702916cf1ba342527a1c7b850ab7406121062f4089`  
		Last Modified: Sat, 04 Nov 2017 09:35:59 GMT  
		Size: 2.4 MB (2449720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ec0adf4f3e220fcc8ec6888c75b884448071d39ea341f3210bf6daf39c8185`  
		Last Modified: Sat, 04 Nov 2017 09:36:09 GMT  
		Size: 79.9 MB (79902938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3113d8efdc225f8429dac842e6ccae9a6fc1937609e620934fb866ddce2e868`  
		Last Modified: Sat, 04 Nov 2017 09:35:58 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.3-passenger`

```console
$ docker pull redmine@sha256:6d9a002ee4a22df8e08fa8f910676fdb3e89897d496ccbc8f04acd94a2f477ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:1f97d371ad2be2f5210fd4027a119ea830e2d2b37f1ae0a986e8085e7570cff4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258669290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3552835752ad9f2ac7804cc716cca994b4b44ef4ae35fbe8897feccbdc10dd0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_MAJOR=2.4
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_VERSION=2.4.2
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 13 Nov 2017 16:13:59 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:13:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:18:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:18:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:18:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:18:29 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:39:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:26 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:39:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:39:30 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:39:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:39:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:59 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:39:59 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 13 Nov 2017 17:40:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:42:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:42:24 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:42:24 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:42:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:42:28 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:42:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 13 Nov 2017 17:42:46 GMT
ENV PASSENGER_VERSION=5.1.11
# Mon, 13 Nov 2017 17:43:03 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:43:04 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 13 Nov 2017 17:43:04 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d01efe902ac83d7ece77d07b1ae734ae6c1a17dba7627f3aeea2c0970893cd`  
		Last Modified: Mon, 13 Nov 2017 16:56:21 GMT  
		Size: 24.7 MB (24691023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e51b00a9a59c7fa333a46e0f593064a28007b574c2f716950619d6fda16b745`  
		Last Modified: Mon, 13 Nov 2017 16:56:10 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c743c043442da02714d3ba47b228d20cc1c6d40f598e1e8b10dfbf6eeda471ac`  
		Last Modified: Mon, 13 Nov 2017 17:50:38 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcf3c9e769a791cd897f3d2f4158b1b5ff7f259b631c122a96f21764475941d`  
		Last Modified: Mon, 13 Nov 2017 17:50:43 GMT  
		Size: 14.7 MB (14650354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bf4ee5ba98ead1720021cf7e4ac3a7a63fffd81c9771b0d663ffe9e149415f`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7ee5d63d9f8b75e4f790873957fe599cad3c797af0fffce2effbeb7ace7ee`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d2214839a2daf9ad439a6c2a52bc3768e1c1d24468a8fcb021df370fd3be96`  
		Last Modified: Mon, 13 Nov 2017 17:50:50 GMT  
		Size: 59.2 MB (59230431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408b1174a85d904272395109d1fe4ac0d033f5792294d13c90410d9db5c88a2b`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b5b81a236af934557a82edc1866bb50f95197e7d306b62ecbd154eea162b9`  
		Last Modified: Mon, 13 Nov 2017 17:50:33 GMT  
		Size: 2.4 MB (2449736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a98275aa7769dcd42638bbbad8d326887595bad6bdaf186de172f38f93d01`  
		Last Modified: Mon, 13 Nov 2017 17:51:10 GMT  
		Size: 77.6 MB (77551212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce725ae048a1d5dc1e85d980b991f7e179c85f1f5856d404098fc1fd3cd1003`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c8dfcff703da66b1114de2718df789554709d517b9c5589f73c9d9bcd05d58`  
		Last Modified: Mon, 13 Nov 2017 17:51:44 GMT  
		Size: 12.8 MB (12750240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438f5ff84c40ed80b4eee11dd4f4e41d999aebf35941466069367ea98b85cc1c`  
		Last Modified: Mon, 13 Nov 2017 17:51:42 GMT  
		Size: 4.1 MB (4075637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:6d9a002ee4a22df8e08fa8f910676fdb3e89897d496ccbc8f04acd94a2f477ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:1f97d371ad2be2f5210fd4027a119ea830e2d2b37f1ae0a986e8085e7570cff4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258669290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3552835752ad9f2ac7804cc716cca994b4b44ef4ae35fbe8897feccbdc10dd0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_MAJOR=2.4
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_VERSION=2.4.2
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 13 Nov 2017 16:13:59 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:13:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:18:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:18:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:18:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:18:29 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:39:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:26 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:39:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:39:30 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:39:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:39:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:59 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:39:59 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 13 Nov 2017 17:40:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:42:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:42:24 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:42:24 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:42:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:42:28 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:42:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 13 Nov 2017 17:42:46 GMT
ENV PASSENGER_VERSION=5.1.11
# Mon, 13 Nov 2017 17:43:03 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:43:04 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 13 Nov 2017 17:43:04 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d01efe902ac83d7ece77d07b1ae734ae6c1a17dba7627f3aeea2c0970893cd`  
		Last Modified: Mon, 13 Nov 2017 16:56:21 GMT  
		Size: 24.7 MB (24691023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e51b00a9a59c7fa333a46e0f593064a28007b574c2f716950619d6fda16b745`  
		Last Modified: Mon, 13 Nov 2017 16:56:10 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c743c043442da02714d3ba47b228d20cc1c6d40f598e1e8b10dfbf6eeda471ac`  
		Last Modified: Mon, 13 Nov 2017 17:50:38 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcf3c9e769a791cd897f3d2f4158b1b5ff7f259b631c122a96f21764475941d`  
		Last Modified: Mon, 13 Nov 2017 17:50:43 GMT  
		Size: 14.7 MB (14650354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bf4ee5ba98ead1720021cf7e4ac3a7a63fffd81c9771b0d663ffe9e149415f`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7ee5d63d9f8b75e4f790873957fe599cad3c797af0fffce2effbeb7ace7ee`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d2214839a2daf9ad439a6c2a52bc3768e1c1d24468a8fcb021df370fd3be96`  
		Last Modified: Mon, 13 Nov 2017 17:50:50 GMT  
		Size: 59.2 MB (59230431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408b1174a85d904272395109d1fe4ac0d033f5792294d13c90410d9db5c88a2b`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b5b81a236af934557a82edc1866bb50f95197e7d306b62ecbd154eea162b9`  
		Last Modified: Mon, 13 Nov 2017 17:50:33 GMT  
		Size: 2.4 MB (2449736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a98275aa7769dcd42638bbbad8d326887595bad6bdaf186de172f38f93d01`  
		Last Modified: Mon, 13 Nov 2017 17:51:10 GMT  
		Size: 77.6 MB (77551212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce725ae048a1d5dc1e85d980b991f7e179c85f1f5856d404098fc1fd3cd1003`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c8dfcff703da66b1114de2718df789554709d517b9c5589f73c9d9bcd05d58`  
		Last Modified: Mon, 13 Nov 2017 17:51:44 GMT  
		Size: 12.8 MB (12750240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438f5ff84c40ed80b4eee11dd4f4e41d999aebf35941466069367ea98b85cc1c`  
		Last Modified: Mon, 13 Nov 2017 17:51:42 GMT  
		Size: 4.1 MB (4075637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:6d9a002ee4a22df8e08fa8f910676fdb3e89897d496ccbc8f04acd94a2f477ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:1f97d371ad2be2f5210fd4027a119ea830e2d2b37f1ae0a986e8085e7570cff4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258669290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3552835752ad9f2ac7804cc716cca994b4b44ef4ae35fbe8897feccbdc10dd0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_MAJOR=2.4
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_VERSION=2.4.2
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 13 Nov 2017 16:13:59 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:13:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:18:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:18:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:18:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:18:29 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:39:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:26 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:39:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:39:30 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:39:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:39:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:59 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:39:59 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 13 Nov 2017 17:40:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:42:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:42:24 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:42:24 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:42:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:42:28 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:42:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 13 Nov 2017 17:42:46 GMT
ENV PASSENGER_VERSION=5.1.11
# Mon, 13 Nov 2017 17:43:03 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:43:04 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 13 Nov 2017 17:43:04 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d01efe902ac83d7ece77d07b1ae734ae6c1a17dba7627f3aeea2c0970893cd`  
		Last Modified: Mon, 13 Nov 2017 16:56:21 GMT  
		Size: 24.7 MB (24691023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e51b00a9a59c7fa333a46e0f593064a28007b574c2f716950619d6fda16b745`  
		Last Modified: Mon, 13 Nov 2017 16:56:10 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c743c043442da02714d3ba47b228d20cc1c6d40f598e1e8b10dfbf6eeda471ac`  
		Last Modified: Mon, 13 Nov 2017 17:50:38 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcf3c9e769a791cd897f3d2f4158b1b5ff7f259b631c122a96f21764475941d`  
		Last Modified: Mon, 13 Nov 2017 17:50:43 GMT  
		Size: 14.7 MB (14650354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bf4ee5ba98ead1720021cf7e4ac3a7a63fffd81c9771b0d663ffe9e149415f`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7ee5d63d9f8b75e4f790873957fe599cad3c797af0fffce2effbeb7ace7ee`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d2214839a2daf9ad439a6c2a52bc3768e1c1d24468a8fcb021df370fd3be96`  
		Last Modified: Mon, 13 Nov 2017 17:50:50 GMT  
		Size: 59.2 MB (59230431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408b1174a85d904272395109d1fe4ac0d033f5792294d13c90410d9db5c88a2b`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b5b81a236af934557a82edc1866bb50f95197e7d306b62ecbd154eea162b9`  
		Last Modified: Mon, 13 Nov 2017 17:50:33 GMT  
		Size: 2.4 MB (2449736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a98275aa7769dcd42638bbbad8d326887595bad6bdaf186de172f38f93d01`  
		Last Modified: Mon, 13 Nov 2017 17:51:10 GMT  
		Size: 77.6 MB (77551212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce725ae048a1d5dc1e85d980b991f7e179c85f1f5856d404098fc1fd3cd1003`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c8dfcff703da66b1114de2718df789554709d517b9c5589f73c9d9bcd05d58`  
		Last Modified: Mon, 13 Nov 2017 17:51:44 GMT  
		Size: 12.8 MB (12750240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438f5ff84c40ed80b4eee11dd4f4e41d999aebf35941466069367ea98b85cc1c`  
		Last Modified: Mon, 13 Nov 2017 17:51:42 GMT  
		Size: 4.1 MB (4075637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:ca8b8bb623ee85cab201f891b11f7cba95df2d3ccec998d1bc779b2251804c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:latest` - linux; amd64

```console
$ docker pull redmine@sha256:33cff00098889f00d1da2d7ca77329d4bee0533b7ca524f23cad339c3f9ed953
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.8 MB (241843413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3e59647e48df1ff5d1858b3d6c432e8d4ca6861ab495e86a8ac02f65de6592`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_MAJOR=2.4
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_VERSION=2.4.2
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 13 Nov 2017 16:13:59 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:13:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:18:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:18:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:18:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:18:29 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:39:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:26 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:39:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:39:30 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:39:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:39:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:59 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:39:59 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 13 Nov 2017 17:40:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:42:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:42:24 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:42:24 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:42:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:42:28 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:42:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d01efe902ac83d7ece77d07b1ae734ae6c1a17dba7627f3aeea2c0970893cd`  
		Last Modified: Mon, 13 Nov 2017 16:56:21 GMT  
		Size: 24.7 MB (24691023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e51b00a9a59c7fa333a46e0f593064a28007b574c2f716950619d6fda16b745`  
		Last Modified: Mon, 13 Nov 2017 16:56:10 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c743c043442da02714d3ba47b228d20cc1c6d40f598e1e8b10dfbf6eeda471ac`  
		Last Modified: Mon, 13 Nov 2017 17:50:38 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcf3c9e769a791cd897f3d2f4158b1b5ff7f259b631c122a96f21764475941d`  
		Last Modified: Mon, 13 Nov 2017 17:50:43 GMT  
		Size: 14.7 MB (14650354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bf4ee5ba98ead1720021cf7e4ac3a7a63fffd81c9771b0d663ffe9e149415f`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7ee5d63d9f8b75e4f790873957fe599cad3c797af0fffce2effbeb7ace7ee`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d2214839a2daf9ad439a6c2a52bc3768e1c1d24468a8fcb021df370fd3be96`  
		Last Modified: Mon, 13 Nov 2017 17:50:50 GMT  
		Size: 59.2 MB (59230431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408b1174a85d904272395109d1fe4ac0d033f5792294d13c90410d9db5c88a2b`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b5b81a236af934557a82edc1866bb50f95197e7d306b62ecbd154eea162b9`  
		Last Modified: Mon, 13 Nov 2017 17:50:33 GMT  
		Size: 2.4 MB (2449736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a98275aa7769dcd42638bbbad8d326887595bad6bdaf186de172f38f93d01`  
		Last Modified: Mon, 13 Nov 2017 17:51:10 GMT  
		Size: 77.6 MB (77551212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce725ae048a1d5dc1e85d980b991f7e179c85f1f5856d404098fc1fd3cd1003`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:c58ba8d316e14483b3b6f23b53c79fdd3728a6ea5cc1e2fe5fd0103741ff162c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234966385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a4887dc975ca437e0a4be646fb6a66291af40a920bda54c7fdfeddc95b3737f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:44:40 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 01:44:56 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:44:56 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:50:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:50:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:50:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:50:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:50:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:50:53 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:33:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:34:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:34:07 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:34:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:34:10 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:34:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:35:13 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:35:13 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:35:13 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 02:35:14 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 02:35:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:39:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:39:37 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:39:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:39:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:39:38 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:39:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32ad7242f9d45dc718f186a9032b57309c959ef6182ccb95871075357d411ae`  
		Last Modified: Sat, 04 Nov 2017 02:13:47 GMT  
		Size: 24.4 MB (24447738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb21818c59252bbaea0d5e21f4adb71f1675c053f2caa486e3113d6ebc781e`  
		Last Modified: Sat, 04 Nov 2017 02:13:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff37693d58f14345f0d67375e7b3bd3adb51d3aa8b4954f7d714188399a64b8`  
		Last Modified: Sat, 04 Nov 2017 02:50:56 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aad99e52a1d8d289f29a6fa076a9a61b14163087ff280c9f7b25a67c0668cf5`  
		Last Modified: Sat, 04 Nov 2017 02:51:08 GMT  
		Size: 14.3 MB (14347298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459476f59fe501a44d107a3fbb366bcaa9905980749c658fc0c0140d10fc84fa`  
		Last Modified: Sat, 04 Nov 2017 02:50:56 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45f25b3c34574a5513c51de49eb5bb4c5c6b127fb53923023f13532381ecb8e`  
		Last Modified: Sat, 04 Nov 2017 02:50:55 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f5915648501ce9b5cb1fb3a4489470f40e403ef9a4d253e05076e19dd2bce6b`  
		Last Modified: Sat, 04 Nov 2017 02:51:13 GMT  
		Size: 56.6 MB (56571474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a2b4a7748b00d9078c08545c4c1298717cde05eb42fdb874f72e950ecedfc9`  
		Last Modified: Sat, 04 Nov 2017 02:50:53 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17a0764cdeb519514766cd245281e96b41a4b10cea89836f59ee86d253818f`  
		Last Modified: Sat, 04 Nov 2017 02:50:53 GMT  
		Size: 2.5 MB (2450381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2703ae2fb29a899f3673ce57c24b78538512881efdb287a128d019451842ac3d`  
		Last Modified: Sat, 04 Nov 2017 02:51:55 GMT  
		Size: 76.7 MB (76653946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16d7f00e51edfbb8ab24500d4555f23452b02a069db1f714c8ba6d1c936969b`  
		Last Modified: Sat, 04 Nov 2017 02:50:52 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:92260caf8dde5abc96a18e9fba224d0275a2076172ce07760ff12f0d0f3016d4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229243942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9fdf4aa33cc698d6351f54ee0e80a5de5562e78699feb3a85e37fcb2d81cac0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:34:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:34:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 01:32:53 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 01:32:54 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 01:38:20 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 01:38:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 01:38:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 01:38:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 01:38:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 01:38:23 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 02:26:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:27:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:27:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:27:21 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:27:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:28:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:28:18 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:28:18 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:28:18 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 02:28:19 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 02:28:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:32:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:32:28 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:32:29 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:32:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:32:29 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:32:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45e4d864a6c60ee4b4a2032ca433fc05d96194e7180016527572da21c44f227`  
		Last Modified: Tue, 10 Oct 2017 01:02:32 GMT  
		Size: 8.8 MB (8761230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30bf1114e281150fe7b59eee2ce7a038a378c4970714ec63009a763b78eb919`  
		Last Modified: Tue, 10 Oct 2017 01:02:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f6c1352d70098c258e5d2d95f4b53b79839a3f541cb6c3d692b496733f25b6`  
		Last Modified: Sat, 04 Nov 2017 02:03:11 GMT  
		Size: 24.3 MB (24310987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdf27dff091ec1c87d75e53ba95608fd8165aabeb33d9438a8807d1b9bb59c`  
		Last Modified: Sat, 04 Nov 2017 02:03:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a09f24fdf3dbffb07414700cad6343cdc3662d4f5d5bd3fc32a18fea5b8e2d`  
		Last Modified: Sat, 04 Nov 2017 02:43:21 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375a5e573ac6e5daa9fa690caa6da210fb0e9b8730e96ad6b71623a51cc9afac`  
		Last Modified: Sat, 04 Nov 2017 02:43:24 GMT  
		Size: 14.1 MB (14134566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254f2f2b210f01002cda29a4f39ce26da42ae5e508d714b43cbb01b4d04548bc`  
		Last Modified: Sat, 04 Nov 2017 02:43:19 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143ec0fe9df7e060a8cf4de0615e3232abe972a71f2b22abc39660b07d822725`  
		Last Modified: Sat, 04 Nov 2017 02:43:20 GMT  
		Size: 7.3 KB (7309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4287b93ab1209a4b4bd64b99afd0d4f8359ff32097d7c1a2cd6be5a3466542a`  
		Last Modified: Sat, 04 Nov 2017 02:43:35 GMT  
		Size: 54.3 MB (54305169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e62b5ebc27f728e9eee04765cb833021457512f85d7f2a65bec5e1ca45178a`  
		Last Modified: Sat, 04 Nov 2017 02:43:18 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5279e08b852c87f0fc6bff49ce8fbb9c1b038aefbe4719d6017628562a7aaaf9`  
		Last Modified: Sat, 04 Nov 2017 02:43:20 GMT  
		Size: 2.5 MB (2450381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a966554102f63de8e9c01e7a932c5d59e02c3839afa3e8ce33781291a2abdcb7`  
		Last Modified: Sat, 04 Nov 2017 02:43:36 GMT  
		Size: 76.1 MB (76108353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ee5fee4307c3f70bb3602b32bb35925770dd886a1349eb5358f3b263ac0740`  
		Last Modified: Sat, 04 Nov 2017 02:43:18 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:5b5b4aa83ca96fd456f64609b6552d8028a1c6c63eb3f9d392d538d0cd4a08a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233888010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51e418a74c8c094f440dbc33c791200631900b5a9d4eb23d7668e029c4f1786a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 07:42:50 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 13 Nov 2017 22:21:29 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 22:21:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 22:30:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 22:30:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 22:30:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 22:30:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 22:30:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 22:30:58 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 23:46:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 23:46:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 23:46:54 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 23:46:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 23:46:59 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 23:47:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 23:49:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 23:49:22 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 23:49:24 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 23:49:25 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 13 Nov 2017 23:49:27 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 13 Nov 2017 23:49:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 23:59:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 23:59:43 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 23:59:44 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 23:59:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 23:59:45 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 23:59:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc299bd927f107bec6cb664121abce38fa8a4ee92b253ad2da8b316337f6f25e`  
		Last Modified: Mon, 13 Nov 2017 23:19:01 GMT  
		Size: 24.7 MB (24666271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933f07853810abe6ea7304d8749175f505866849fb11f28bd8f5c3bd0ffba32d`  
		Last Modified: Mon, 13 Nov 2017 23:18:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4361afaaca7e3171e1b1bca0830674126e6e7c2dd3e03e4421f661d88a096b6e`  
		Last Modified: Tue, 14 Nov 2017 00:24:34 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab81514ad54eafc4156888010bf60c759a81c1ecf9acc51df97d01bc2c8ed61`  
		Last Modified: Tue, 14 Nov 2017 00:24:41 GMT  
		Size: 14.5 MB (14462621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068fe489e486c6267e515e4eb3df3b69b6dd4ccb74240adcaf74848cc06baf9`  
		Last Modified: Tue, 14 Nov 2017 00:24:33 GMT  
		Size: 468.7 KB (468696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4c01259cfbad0495abfb2b4d96afe6d56f2ba41b327b7a51aecec3cd45c5ff`  
		Last Modified: Tue, 14 Nov 2017 00:24:32 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0315d7cf71c4f0b5dd7aa41b92cb2292aa8a6375c65d2ebc19ac5a3607e17143`  
		Last Modified: Tue, 14 Nov 2017 00:24:49 GMT  
		Size: 55.8 MB (55760350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8c3a072e70916a8a52c8e60b24e9b7a16cb1988cfcee6ab7b8a5854a24b1ed`  
		Last Modified: Tue, 14 Nov 2017 00:24:29 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbde5302321844fb4f57225ff75c92d18c43141692c7ad8dd1d6ee284d7f6c2`  
		Last Modified: Tue, 14 Nov 2017 00:24:30 GMT  
		Size: 2.4 MB (2449739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc61322cef5504068e38f94b54258403011eb640a5af29453835ec849071e61f`  
		Last Modified: Tue, 14 Nov 2017 00:24:51 GMT  
		Size: 76.8 MB (76805699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ef95b6535b31c25f12c9ccf1ec258cfa079a6267be11fdfeb9098841c726b7`  
		Last Modified: Tue, 14 Nov 2017 00:24:30 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:260cc0ad6add24266ad4e8d32e0315f94008a41f48cd5a42828a838dd2faf1b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245696917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7452a76a8b4cad95065b78d2777fd65d37fa2c37200766d5bf120b03b515d642`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 02:52:31 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 03:03:44 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 03:03:44 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 03:07:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 03:07:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 03:07:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 03:07:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 03:07:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 03:07:55 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 04:03:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 04:04:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:04:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 04:04:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 04:04:14 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 04:04:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 04:05:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 04:05:26 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 04:05:26 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 04:05:26 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 04:05:26 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 04:05:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 04:08:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 04:08:41 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 04:08:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 04:08:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 04:08:41 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 04:08:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7246b4d51c87e9fc2090f9371aaaed1b23937a1911cc5d0fecceb836667c8c5`  
		Last Modified: Sat, 04 Nov 2017 03:39:35 GMT  
		Size: 23.7 MB (23671130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d57d073af2320f8fe0658381109d89f14f7689faebe123a895b80f9929156`  
		Last Modified: Sat, 04 Nov 2017 03:39:28 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea9e6ae9b3571f8cec51f764c8a43d7e2e474a3a3390366270074c497017b92`  
		Last Modified: Sat, 04 Nov 2017 04:31:58 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e033b6ce1452a86143de189e1d8973eee1e6acd36bf19659aec62715555dd0`  
		Last Modified: Sat, 04 Nov 2017 04:32:03 GMT  
		Size: 14.8 MB (14817347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1836ed7036c3a47b9b87220c62dc7a2be02dac18f34412010a16a73a250151ac`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4e6f0ea6d9c16e511ca8dbecd05a87b821df22407787f6b3531dea8aee4b4c`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 8.6 KB (8563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ace09608a0ad4050963b9f6e57c594ca48a554efac8afb8d676ac62a16d26ae`  
		Last Modified: Sat, 04 Nov 2017 04:32:17 GMT  
		Size: 60.1 MB (60103887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad31b7c6c628bad3e601c22f81abfc18d14de1e63e3f6e1946f0a0aaf69f79f`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199571983f03b4e3ce47e6bfd28370bb4e35caad88b107c6449c732167f985b6`  
		Last Modified: Sat, 04 Nov 2017 04:32:02 GMT  
		Size: 2.4 MB (2449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685cfcdfab8d8a47e46b1ecd82f4a7ea0f30879c7475b4cbdbfa304ab61c1c0`  
		Last Modified: Sat, 04 Nov 2017 04:32:17 GMT  
		Size: 76.8 MB (76759991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47db838f4c0889eafd4e3eadbae73fb2a80bfd5dd7742b077da97f4e029348d`  
		Last Modified: Sat, 04 Nov 2017 04:31:59 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:425097868bcfd027a032a1bdc1fc4ae2c469169c2a6c49957d032039de8d7956
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240427190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39c80feee00f2b9039484061653c0e0cb37a46b9a66b6490a3da005cc77d256a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:57:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:57:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 05:57:44 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 05:57:46 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 05:57:49 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 00:49:08 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 00:49:09 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 00:58:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 00:58:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 00:58:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 00:58:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 00:58:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 00:58:55 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 01:59:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 02:00:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:00:11 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 02:00:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 02:00:20 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 02:00:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 02:03:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:03:44 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 02:03:45 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 02:03:47 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 02:03:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 02:03:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 02:15:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 02:15:25 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 02:15:27 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 02:15:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:15:30 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 02:15:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40a8df7f5d8f2418b2f12762edbef8533b5871c7aaca1937e8db1d1506897ef`  
		Last Modified: Tue, 10 Oct 2017 06:49:02 GMT  
		Size: 10.1 MB (10133017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68873b9b142821a59413ab21afce04b7492c1b99141626f4d3d3fca54a1ffff1`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6593e28fc7d48cfd4522a059309020a78721f5c4075faec611161402b44e0564`  
		Last Modified: Sat, 04 Nov 2017 01:38:17 GMT  
		Size: 25.1 MB (25122107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70179f1b7f3cbd304455ce8acea5eab2310422082ed44619ee787028eb343e6`  
		Last Modified: Sat, 04 Nov 2017 01:38:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990ae2be35968be8b149618adeafb727501998c26057fd3e357f5fc099b4f294`  
		Last Modified: Sat, 04 Nov 2017 02:47:09 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08952f9338a5d409e505fdcc8c22ebc9d96662bbebdfaba8eeec6534c129d5f7`  
		Last Modified: Sat, 04 Nov 2017 02:47:10 GMT  
		Size: 14.7 MB (14720199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb06ae2f5e7087b36a1822bd9f6331ef7eaa2cbe45395e18d930216653c0f3b`  
		Last Modified: Sat, 04 Nov 2017 02:47:06 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa3097e13fbd5fdeada2348c44cbd660e446f4da19b782b296d6bd582910a83`  
		Last Modified: Sat, 04 Nov 2017 02:47:06 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e45c3b6765e3d3ea0ecbdad7e33d36cb1ca864126d82b72feb60beaa1092cd7`  
		Last Modified: Sat, 04 Nov 2017 02:47:20 GMT  
		Size: 58.1 MB (58098678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be27a82ba8f0ff3e91e1705f54e2cfde5120ed0efa76de8580fdd6c5afb46c2`  
		Last Modified: Sat, 04 Nov 2017 02:47:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d5d3c6e4b719d0972c27b5aefb202f09467986a9a802931f8b4999c15988b5`  
		Last Modified: Sat, 04 Nov 2017 02:47:04 GMT  
		Size: 2.5 MB (2450372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199337c5b82782921b57b94d487b2a9c60b6b25f0811aad53172f0d0347d0ed6`  
		Last Modified: Sat, 04 Nov 2017 02:47:19 GMT  
		Size: 77.6 MB (77610210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab799de0481f2009def9b5d1e0a5a24978f19d9b0d257512c1b31d082f84ad3`  
		Last Modified: Sat, 04 Nov 2017 02:47:03 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:db146e321ef9a2476999b3081e86a98bf20538449231e8a3e200c75251360f34
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244576568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe879a642c589b23761b0a1b3e994fae7916dce5dbf18338dd7eb3c44e70d8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:59:56 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 08:46:28 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 08:46:28 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 08:49:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 08:49:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 08:49:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 08:49:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 08:49:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 08:49:42 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 09:26:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 09:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:26:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 09:26:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 09:26:30 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 09:26:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 09:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:27:08 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 09:27:08 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 09:27:08 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 09:27:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 09:27:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 09:29:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 09:29:40 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 09:29:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 09:29:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 09:29:41 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 09:29:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfdf9be3e1a6a12a81ae49b4152d0b39604b66639ff7ecf036ef39befa5545f`  
		Last Modified: Sat, 04 Nov 2017 09:07:11 GMT  
		Size: 25.1 MB (25077028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a681b3fdcae698060da0eb4fcc2f1ad5d70baf512ef69e2dded3cde452998351`  
		Last Modified: Sat, 04 Nov 2017 09:07:04 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1c9c3b53a179bfc82a0b0b4085c033fa5b63fa3882daaf08975113dfb7a237`  
		Last Modified: Sat, 04 Nov 2017 09:36:01 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681ba562cef611e4b3a6aa4cb6d5af065a3e61467e7c74bc4200e014190df230`  
		Last Modified: Sat, 04 Nov 2017 09:36:03 GMT  
		Size: 14.8 MB (14815084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf13cfda2a1cfd5bf2f5e1c39db186cc412fe1bd766049ec6fbfe8e6e85d798`  
		Last Modified: Sat, 04 Nov 2017 09:35:59 GMT  
		Size: 486.8 KB (486820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbe843ab3cba5dec3e729fb1238282c5f41a4e3820fdace0b8131b6328b277d`  
		Last Modified: Sat, 04 Nov 2017 09:36:00 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e9dd5fcd1f515edf4c2dac82d3b4d972578abcf15de15015b6c96797ba9744`  
		Last Modified: Sat, 04 Nov 2017 09:36:09 GMT  
		Size: 59.1 MB (59082947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b662bbaaacb256281bb0bc59ddab006b35286532bd1709426d90e0fc2a384e`  
		Last Modified: Sat, 04 Nov 2017 09:35:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31633319256ee73d7a52b1702916cf1ba342527a1c7b850ab7406121062f4089`  
		Last Modified: Sat, 04 Nov 2017 09:35:59 GMT  
		Size: 2.4 MB (2449720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ec0adf4f3e220fcc8ec6888c75b884448071d39ea341f3210bf6daf39c8185`  
		Last Modified: Sat, 04 Nov 2017 09:36:09 GMT  
		Size: 79.9 MB (79902938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3113d8efdc225f8429dac842e6ccae9a6fc1937609e620934fb866ddce2e868`  
		Last Modified: Sat, 04 Nov 2017 09:35:58 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:6d9a002ee4a22df8e08fa8f910676fdb3e89897d496ccbc8f04acd94a2f477ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:1f97d371ad2be2f5210fd4027a119ea830e2d2b37f1ae0a986e8085e7570cff4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258669290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3552835752ad9f2ac7804cc716cca994b4b44ef4ae35fbe8897feccbdc10dd0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_MAJOR=2.4
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_VERSION=2.4.2
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 13 Nov 2017 16:13:59 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:13:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:18:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:18:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:18:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:18:29 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:39:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:26 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:39:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:39:30 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:39:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:39:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:59 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:39:59 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 13 Nov 2017 17:40:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:42:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:42:24 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:42:24 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:42:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:42:28 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:42:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 13 Nov 2017 17:42:46 GMT
ENV PASSENGER_VERSION=5.1.11
# Mon, 13 Nov 2017 17:43:03 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:43:04 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 13 Nov 2017 17:43:04 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d01efe902ac83d7ece77d07b1ae734ae6c1a17dba7627f3aeea2c0970893cd`  
		Last Modified: Mon, 13 Nov 2017 16:56:21 GMT  
		Size: 24.7 MB (24691023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e51b00a9a59c7fa333a46e0f593064a28007b574c2f716950619d6fda16b745`  
		Last Modified: Mon, 13 Nov 2017 16:56:10 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c743c043442da02714d3ba47b228d20cc1c6d40f598e1e8b10dfbf6eeda471ac`  
		Last Modified: Mon, 13 Nov 2017 17:50:38 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcf3c9e769a791cd897f3d2f4158b1b5ff7f259b631c122a96f21764475941d`  
		Last Modified: Mon, 13 Nov 2017 17:50:43 GMT  
		Size: 14.7 MB (14650354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bf4ee5ba98ead1720021cf7e4ac3a7a63fffd81c9771b0d663ffe9e149415f`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7ee5d63d9f8b75e4f790873957fe599cad3c797af0fffce2effbeb7ace7ee`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d2214839a2daf9ad439a6c2a52bc3768e1c1d24468a8fcb021df370fd3be96`  
		Last Modified: Mon, 13 Nov 2017 17:50:50 GMT  
		Size: 59.2 MB (59230431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408b1174a85d904272395109d1fe4ac0d033f5792294d13c90410d9db5c88a2b`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b5b81a236af934557a82edc1866bb50f95197e7d306b62ecbd154eea162b9`  
		Last Modified: Mon, 13 Nov 2017 17:50:33 GMT  
		Size: 2.4 MB (2449736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a98275aa7769dcd42638bbbad8d326887595bad6bdaf186de172f38f93d01`  
		Last Modified: Mon, 13 Nov 2017 17:51:10 GMT  
		Size: 77.6 MB (77551212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce725ae048a1d5dc1e85d980b991f7e179c85f1f5856d404098fc1fd3cd1003`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c8dfcff703da66b1114de2718df789554709d517b9c5589f73c9d9bcd05d58`  
		Last Modified: Mon, 13 Nov 2017 17:51:44 GMT  
		Size: 12.8 MB (12750240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438f5ff84c40ed80b4eee11dd4f4e41d999aebf35941466069367ea98b85cc1c`  
		Last Modified: Mon, 13 Nov 2017 17:51:42 GMT  
		Size: 4.1 MB (4075637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
