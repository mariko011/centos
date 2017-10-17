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
$ docker pull redmine@sha256:3520c008e91dfa8db630b8ccb8a9c9acf21f0b50150223b457a3fbe09afb67cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; s390x

### `redmine:3` - linux; amd64

```console
$ docker pull redmine@sha256:c4b90f0be4475ab223c299139732e9bab1863b07c07ccfee540242d6494a2dec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241083960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d545b2cd12cf25a2a9cd8d6be107b537edcd733e0caaba0d68545b5f94ad35`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:25:53 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 19:54:59 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 19:58:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 19:58:10 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 19:58:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 19:58:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 19:58:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 19:58:12 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:05:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:05:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:05:42 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:05:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:06:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:06:26 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:06:26 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 19:51:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 19:54:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:54:08 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 19:54:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 19:54:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 19:54:09 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 19:54:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57fc1883c1e5c06f1985fe57c780be91b37bf2771e54ea6e9e3fefe96e1077`  
		Last Modified: Tue, 10 Oct 2017 20:40:58 GMT  
		Size: 23.6 MB (23605333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d9b5396ff6c91e55d89225d780e5fa5cdb4047aa657876c70d01512318ed26`  
		Last Modified: Tue, 10 Oct 2017 20:40:52 GMT  
		Size: 677.1 KB (677067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f24b8bbda46cdef22c5c023df9e25de2caf757699176aa50512d4c4f1cf8f0`  
		Last Modified: Tue, 10 Oct 2017 20:40:51 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f19c0ba10beb56a01d6e245ae0e8e7721da9ca8ef2268bdbfcc504d07e0b352`  
		Last Modified: Tue, 10 Oct 2017 21:17:24 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd13bb04aab3d53de712224cf1991e102bdb5f8af32dd5cdd2f76f10f430b9ae`  
		Last Modified: Tue, 10 Oct 2017 21:17:25 GMT  
		Size: 14.7 MB (14650140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f9ed40654773eaf5eb9672e8b816b845595ede8a71f2022624ae60c2c3efeb`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5147e081c29ee0f729a9130cfbf48902d324413c69b19bb31b6cfab2bacb969`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e3e28b583812400c52ec6f501f71658264c3522721b2de8edcf999cb5f058`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 59.2 MB (59238073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757829592e55d852b8bf9ef79dacb6d55e13b0a152f3dbdbf5b06541cb259d2d`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21b29aa5ea54317efb44caa6f8e4039e96cc45dd6c2f1eb96c17d5f087711b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 2.4 MB (2449725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fed0da4a66378332fcab858886b10bba9085b9c0586fbfc8e48e351abaa6f9`  
		Last Modified: Mon, 16 Oct 2017 20:01:37 GMT  
		Size: 77.2 MB (77192979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a10d5d55763fe5379687bbf81d5062e8998c2bf7e1c556cfbf5d42915159c3b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:ee4ab0e5a329debcfa78f29638583529619ce885351069bfa0dc61a1fbc4f2b3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234309949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88154edeb76dd42a245880235e817edf596ad5e727b9c76095279d6d18ea294a`
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
# Wed, 11 Oct 2017 01:38:47 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:44:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:44:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:44:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:44:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:44:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:44:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:44:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:44:45 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:23:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:24:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:24:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:24:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:24:32 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:24:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:25:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:25:35 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:25:35 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:33:28 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 22:33:28 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 22:33:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:38:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:38:08 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:38:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:38:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:38:09 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:38:09 GMT
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
	-	`sha256:9ee68ae712c9eb7c41457528b60f9c391f38dc1a4d9e4f29b60f6c0efde2d2d3`  
		Last Modified: Wed, 11 Oct 2017 02:05:15 GMT  
		Size: 23.4 MB (23369533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca986c0a72b92a4cc4fa34e3d44309dc2561a1b96a3280e4d8f23a705b25208`  
		Last Modified: Wed, 11 Oct 2017 02:05:06 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce20e25ab3589e87562f5236fdca948978befe0ac105a33d15d824b3b6a415d`  
		Last Modified: Wed, 11 Oct 2017 02:05:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0164318a137b7b91c4523811e8d0203aad39c556d62aa96d64cbe2e09d4adb95`  
		Last Modified: Wed, 11 Oct 2017 02:41:03 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ad082af6bd03300630b227a92e58debbfb93f2513c468f72269d79f70f3ec3`  
		Last Modified: Wed, 11 Oct 2017 02:41:07 GMT  
		Size: 14.3 MB (14347439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae8b834c7d93383272523f8f9512baa6ab35d32083d7016d6825152609a1e38`  
		Last Modified: Wed, 11 Oct 2017 02:41:03 GMT  
		Size: 491.1 KB (491126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5e2e2f70ee6c52ecc0e9f45745d2773dee1eafb2506435a3d6b6d28d43985`  
		Last Modified: Wed, 11 Oct 2017 02:41:02 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027736de287890d3e4b688f05f26d61f18d9ef036acec74194a5930c00d53745`  
		Last Modified: Wed, 11 Oct 2017 02:41:20 GMT  
		Size: 56.6 MB (56580245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904bb64c6ccd0d7a84e9863348e3a55f8bd60f3fe3fd1a4359f489e2de7f0234`  
		Last Modified: Wed, 11 Oct 2017 02:41:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec241a8f2efea7264612415b8d3e2bfbe528d5494042b21e13718fc4404500a`  
		Last Modified: Mon, 16 Oct 2017 22:47:42 GMT  
		Size: 2.5 MB (2450387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ccca4e984d89899f622bd1957b1687d6de5939e4a6152b0322285fc84b89c8b`  
		Last Modified: Mon, 16 Oct 2017 22:47:58 GMT  
		Size: 76.4 MB (76389716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe042eb4a8c4da7a266789b55150c325584a51b5db691a5a4ff11b2d9edcf76`  
		Last Modified: Mon, 16 Oct 2017 22:47:41 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:082bf7770ac57a9ec171a28fe5ef709740f78ce475cbddbacb38f8230da84dc3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243907843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7b14ef67517fca50df8b12b5d442e26edcf99fae1fdb9c8c50dc40713ef41c`
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
# Wed, 11 Oct 2017 08:38:58 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 08:42:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 08:42:05 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 08:42:06 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 08:42:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 08:42:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 08:42:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 08:42:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 08:42:07 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 09:13:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 09:13:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:13:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 09:13:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 09:13:37 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 09:13:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 09:14:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:14:16 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 09:14:16 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:43:30 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 22:43:30 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 22:43:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:46:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:46:21 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:46:21 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:46:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:46:21 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:46:22 GMT
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
	-	`sha256:d79f10ac661107b1c17ce82ec3ed131023f4a06b79a5c119ae05b20af6953809`  
		Last Modified: Wed, 11 Oct 2017 08:54:52 GMT  
		Size: 24.0 MB (24000410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9403ce092cb47d6c70b0582624e997319e5d6c7ded38cf5909102530ea7fe598`  
		Last Modified: Wed, 11 Oct 2017 08:54:47 GMT  
		Size: 677.1 KB (677061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f7c6b4a54414f2cec58f0363ba83ee56c3c80835c29d0143a1dab7abadb694`  
		Last Modified: Wed, 11 Oct 2017 08:54:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad958ba7fdac3a70d5ea80fa8eb781082162819d7baefb66126989f9f0152352`  
		Last Modified: Wed, 11 Oct 2017 09:23:03 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40be906db369610147c71459702712ff880e62139bb63c3c004edcea5aba1f5b`  
		Last Modified: Wed, 11 Oct 2017 09:23:05 GMT  
		Size: 14.8 MB (14814991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e000eef5d6a6547cb974a9b0846308fd93d960ec10c9b10e0dd731528cf18e`  
		Last Modified: Wed, 11 Oct 2017 09:23:02 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c3194a6b46c8a69734daf7cbd0d708b8443159f7140263b1d195ed6db7db27`  
		Last Modified: Wed, 11 Oct 2017 09:23:02 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa20e1100fcf8a7f5860477328ba42eb5c8b5f66d0b7ac088a4059b6367dbcd`  
		Last Modified: Wed, 11 Oct 2017 09:23:13 GMT  
		Size: 59.1 MB (59092147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda5b253e7f91933107cdbc1f156a05d2184d6b52e945549a663d6b666804cb5`  
		Last Modified: Wed, 11 Oct 2017 09:23:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfe996cf4a965d8629a3c1bcb0dfaa9813ca66e9a47e4e9c0c02506be9c168a`  
		Last Modified: Mon, 16 Oct 2017 22:52:30 GMT  
		Size: 2.4 MB (2449723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7e403a5af91dd1e6f074f8797161e88771b4ee2a68bb77d10a997f02779088`  
		Last Modified: Mon, 16 Oct 2017 22:52:40 GMT  
		Size: 79.6 MB (79624660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d514a1c6fd8fdeaaf7d7efd805b28ea4ebe787ccd3bb9aa75dc4d913b24385`  
		Last Modified: Mon, 16 Oct 2017 22:52:29 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:4a5c5466d45b95d2902838938016128d2904027539506c815e8ac037e753a821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; s390x

### `redmine:3.2` - linux; amd64

```console
$ docker pull redmine@sha256:77aed059670e607a8e6194d29001a38d22d58a879ebb734e6c37e12594b5f9fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252221255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e89a7eb89a2c1516e6acb29a62970e731db070fe496ea50119f00b0bf87b383`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 10 Oct 2017 20:32:37 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 20:35:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 20:35:24 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 20:35:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 20:35:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 20:35:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 20:35:27 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:09:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:10:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:10:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:10:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:10:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:10:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:44 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:10:45 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:58:06 GMT
ENV REDMINE_VERSION=3.2.8
# Mon, 16 Oct 2017 19:58:06 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Mon, 16 Oct 2017 19:58:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 20:00:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 20:00:16 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 20:00:16 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 20:00:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 20:00:17 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 20:00:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131298f05e91b99efc7b9f8be64fcc1b49dad3b9299c51f494aa34e9357b9c0b`  
		Last Modified: Tue, 10 Oct 2017 20:48:17 GMT  
		Size: 34.2 MB (34180704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2776ab7f7fcaf878c5b1c0934d4bd97b1c1cab5201d7d1d3cd8e855b6669902`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27f5b65db57ecf4f9da4d11de66c9925adff68c3d040837804e51b202d7d707`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32afe294f2aade665b2e344b116ca506cb8930f19ab3e1d2c1d5dcbcd59d1ac8`  
		Last Modified: Tue, 10 Oct 2017 21:19:08 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c88af721c8ad06cc8e276795c93d17d8e161dcb92d3879c043525627ecc09c`  
		Last Modified: Tue, 10 Oct 2017 21:19:11 GMT  
		Size: 14.7 MB (14650143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68de09a442a22ec98a4ebbf41517c128b728dd6a07bf56987c465fb92a05265`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d20def6ca187fe8e4f701aff7ecde78cfa2cc1fa6e6bca2334cd040a069ecc8`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 8.5 KB (8504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6ae2e0d9e31df49e3d682fc1c77f9501060473e884753e980d05cf023b1936`  
		Last Modified: Tue, 10 Oct 2017 21:19:18 GMT  
		Size: 59.2 MB (59238364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057bd7cacf4566293bbde1c3e43e1fe8798f5c1e0867dcdf001038942bb78acc`  
		Last Modified: Tue, 10 Oct 2017 21:19:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d868e0412f89bde8bdd66f76e43d0d73290838e023c322414bf4fab7a0d978c7`  
		Last Modified: Mon, 16 Oct 2017 20:03:53 GMT  
		Size: 2.3 MB (2346999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a55ec998c22c070146c885506aae4700cbcf620cf11ef9eda27945a2b052927`  
		Last Modified: Mon, 16 Oct 2017 20:04:04 GMT  
		Size: 77.9 MB (77857358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a362403346eb12b412fa842a842190da0c90169cd6e571e6f365526f27445f`  
		Last Modified: Mon, 16 Oct 2017 20:03:53 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v5

```console
$ docker pull redmine@sha256:8467af9deab6aaacb1d9d319cb018cdaa06147490e89af590c6d69aea3654805
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244667667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdcca8c69aba751140f011c17e210e22ec7c2162d0fc8385d14e98ce5a2864b8`
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
# Wed, 11 Oct 2017 01:58:40 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 02:02:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 02:02:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 02:03:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 02:03:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 02:03:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 02:03:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 02:03:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 02:03:02 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:30:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:30:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:30:42 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:30:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:31:40 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:31:40 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:42:59 GMT
ENV REDMINE_VERSION=3.2.8
# Mon, 16 Oct 2017 22:42:59 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Mon, 16 Oct 2017 22:43:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:47:27 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:47:28 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:47:28 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:47:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:47:29 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:47:29 GMT
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
	-	`sha256:392cd1b254b7112c9ca2c8679624bc0682a33aa1c1860f0d42c0687abf19d313`  
		Last Modified: Wed, 11 Oct 2017 02:08:10 GMT  
		Size: 33.1 MB (33128458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de83c6d584c962ddc708fd58cf0336de21b60eb5a119a513d90125e8b5abca6`  
		Last Modified: Wed, 11 Oct 2017 02:07:58 GMT  
		Size: 677.1 KB (677066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa3fd04212db62e11080d106d6b92955738c5ca95e3bd9b48c8d86b574dce09`  
		Last Modified: Wed, 11 Oct 2017 02:07:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2a5618b1ffde75ad6b5b7deb828a778a314f47129950945bba7e17f6902859`  
		Last Modified: Wed, 11 Oct 2017 02:41:45 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824a59d5896aced6389ad8309224324f4a0fa47472231cfef9cc335e6f3ddf94`  
		Last Modified: Wed, 11 Oct 2017 02:41:48 GMT  
		Size: 14.3 MB (14347407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f32114e551bc3417a7fc37acff931de134023be683eef2893b976933f56d0`  
		Last Modified: Wed, 11 Oct 2017 02:41:43 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7db42f19498340a3be87ea7ef8888b1cba53a3b6f4bbdf9f4bfff828d5ed116`  
		Last Modified: Wed, 11 Oct 2017 02:41:43 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8f0713b0c42548e62b3b990e69fbd4d331be5a86ad75cbfc197374755128a5`  
		Last Modified: Wed, 11 Oct 2017 02:42:02 GMT  
		Size: 56.6 MB (56580557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257c3912e45d285f2f3ba29e035dbe8713ff3493031bacce67a2b6f78058eff1`  
		Last Modified: Wed, 11 Oct 2017 02:41:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7354f70d739d1c7986392b5ba8b748dbf5b867acb36487c2950f60fdb05fbb0`  
		Last Modified: Mon, 16 Oct 2017 22:48:48 GMT  
		Size: 2.3 MB (2347342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9711fb55e0b584976b3bb8c337359ffc49b708c5045a3a213f28b633be758d85`  
		Last Modified: Mon, 16 Oct 2017 22:49:05 GMT  
		Size: 77.1 MB (77091285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92940ba3241ede9b1eb1349950ec298454b8319c4d3f3ca5b7bfc968fb972bd0`  
		Last Modified: Mon, 16 Oct 2017 22:48:47 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; s390x

```console
$ docker pull redmine@sha256:8e462939367099c31d35037af4971e601d70443c20c208fab61ccd8adaf3b7f7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258297241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d336ff94cd9bbf9d2d2f7760689950420196b1d66d44c8f6aacbea32c8015f`
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
# Wed, 11 Oct 2017 08:50:27 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 08:52:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 08:52:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 08:52:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 08:52:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 08:52:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 08:52:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 08:52:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 08:52:52 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 09:16:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 09:17:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:17:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 09:17:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 09:17:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 09:17:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 09:17:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:17:44 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 09:17:45 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:49:30 GMT
ENV REDMINE_VERSION=3.2.8
# Mon, 16 Oct 2017 22:49:30 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Mon, 16 Oct 2017 22:49:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:52:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:52:09 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:52:09 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:52:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:52:10 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:52:10 GMT
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
	-	`sha256:393eae4c1c843a196a9ffc95844cfa0816efe1cacc52776f10698ca409b63d37`  
		Last Modified: Wed, 11 Oct 2017 08:57:17 GMT  
		Size: 37.9 MB (37861443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054b7f11175538f0073e0f07078a5f8d6e49712fafd627a126cba71cdaf794cd`  
		Last Modified: Wed, 11 Oct 2017 08:57:07 GMT  
		Size: 677.1 KB (677072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb8184143baaa56187f27998ef4dfeab0ede595691b46cc911e26a1734adc66`  
		Last Modified: Wed, 11 Oct 2017 08:57:06 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fdcd6a7868eed5e139a33d56f57e320d74fafec6bd56bf41f64216898202f7`  
		Last Modified: Wed, 11 Oct 2017 09:24:02 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eef1ca2bf2ecb6f7870e32f96fcab43c68d5dec6a66a433a5b1e4834fd19414`  
		Last Modified: Wed, 11 Oct 2017 09:24:04 GMT  
		Size: 14.8 MB (14814950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fc0b82cd51b4636310b525b243e0ce6fbf6f58288be634d98ade8602f23ad4`  
		Last Modified: Wed, 11 Oct 2017 09:24:00 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35365c7ca2ec313f71e7b971b104575fc438a6c0106b4241d02907d6d1fe392`  
		Last Modified: Wed, 11 Oct 2017 09:24:00 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aced18ad3ec5d91a2e9354b1f263bf6d79f93228052376a71ce722979085aba7`  
		Last Modified: Wed, 11 Oct 2017 09:24:11 GMT  
		Size: 59.1 MB (59092251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7582f981c0af4b486bef3a1619e171224ca934d3bfbf9c2bb66a1a3ea7bc47`  
		Last Modified: Wed, 11 Oct 2017 09:23:59 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd47d0f7f7483d8121b00228e6be41f5d3ad7f9bc4191c01e971a953b2be05c`  
		Last Modified: Mon, 16 Oct 2017 22:53:26 GMT  
		Size: 2.3 MB (2347003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b9d945b5298e41be2e10ebe9ba2348fcbde208c16159d4c2ba653a3a082baf`  
		Last Modified: Mon, 16 Oct 2017 22:53:38 GMT  
		Size: 80.3 MB (80255677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d271d93fcee920655d42f040416dbeb14f71f7d58aa799eb2532d6acb4e215b`  
		Last Modified: Mon, 16 Oct 2017 22:53:25 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.8`

```console
$ docker pull redmine@sha256:4a5c5466d45b95d2902838938016128d2904027539506c815e8ac037e753a821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; s390x

### `redmine:3.2.8` - linux; amd64

```console
$ docker pull redmine@sha256:77aed059670e607a8e6194d29001a38d22d58a879ebb734e6c37e12594b5f9fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252221255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e89a7eb89a2c1516e6acb29a62970e731db070fe496ea50119f00b0bf87b383`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 10 Oct 2017 20:32:37 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 20:35:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 20:35:24 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 20:35:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 20:35:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 20:35:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 20:35:27 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:09:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:10:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:10:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:10:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:10:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:10:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:44 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:10:45 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:58:06 GMT
ENV REDMINE_VERSION=3.2.8
# Mon, 16 Oct 2017 19:58:06 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Mon, 16 Oct 2017 19:58:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 20:00:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 20:00:16 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 20:00:16 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 20:00:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 20:00:17 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 20:00:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131298f05e91b99efc7b9f8be64fcc1b49dad3b9299c51f494aa34e9357b9c0b`  
		Last Modified: Tue, 10 Oct 2017 20:48:17 GMT  
		Size: 34.2 MB (34180704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2776ab7f7fcaf878c5b1c0934d4bd97b1c1cab5201d7d1d3cd8e855b6669902`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27f5b65db57ecf4f9da4d11de66c9925adff68c3d040837804e51b202d7d707`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32afe294f2aade665b2e344b116ca506cb8930f19ab3e1d2c1d5dcbcd59d1ac8`  
		Last Modified: Tue, 10 Oct 2017 21:19:08 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c88af721c8ad06cc8e276795c93d17d8e161dcb92d3879c043525627ecc09c`  
		Last Modified: Tue, 10 Oct 2017 21:19:11 GMT  
		Size: 14.7 MB (14650143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68de09a442a22ec98a4ebbf41517c128b728dd6a07bf56987c465fb92a05265`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d20def6ca187fe8e4f701aff7ecde78cfa2cc1fa6e6bca2334cd040a069ecc8`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 8.5 KB (8504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6ae2e0d9e31df49e3d682fc1c77f9501060473e884753e980d05cf023b1936`  
		Last Modified: Tue, 10 Oct 2017 21:19:18 GMT  
		Size: 59.2 MB (59238364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057bd7cacf4566293bbde1c3e43e1fe8798f5c1e0867dcdf001038942bb78acc`  
		Last Modified: Tue, 10 Oct 2017 21:19:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d868e0412f89bde8bdd66f76e43d0d73290838e023c322414bf4fab7a0d978c7`  
		Last Modified: Mon, 16 Oct 2017 20:03:53 GMT  
		Size: 2.3 MB (2346999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a55ec998c22c070146c885506aae4700cbcf620cf11ef9eda27945a2b052927`  
		Last Modified: Mon, 16 Oct 2017 20:04:04 GMT  
		Size: 77.9 MB (77857358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a362403346eb12b412fa842a842190da0c90169cd6e571e6f365526f27445f`  
		Last Modified: Mon, 16 Oct 2017 20:03:53 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm variant v5

```console
$ docker pull redmine@sha256:8467af9deab6aaacb1d9d319cb018cdaa06147490e89af590c6d69aea3654805
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244667667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdcca8c69aba751140f011c17e210e22ec7c2162d0fc8385d14e98ce5a2864b8`
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
# Wed, 11 Oct 2017 01:58:40 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 02:02:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 02:02:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 02:03:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 02:03:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 02:03:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 02:03:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 02:03:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 02:03:02 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:30:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:30:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:30:42 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:30:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:31:40 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:31:40 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:42:59 GMT
ENV REDMINE_VERSION=3.2.8
# Mon, 16 Oct 2017 22:42:59 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Mon, 16 Oct 2017 22:43:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:47:27 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:47:28 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:47:28 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:47:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:47:29 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:47:29 GMT
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
	-	`sha256:392cd1b254b7112c9ca2c8679624bc0682a33aa1c1860f0d42c0687abf19d313`  
		Last Modified: Wed, 11 Oct 2017 02:08:10 GMT  
		Size: 33.1 MB (33128458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de83c6d584c962ddc708fd58cf0336de21b60eb5a119a513d90125e8b5abca6`  
		Last Modified: Wed, 11 Oct 2017 02:07:58 GMT  
		Size: 677.1 KB (677066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa3fd04212db62e11080d106d6b92955738c5ca95e3bd9b48c8d86b574dce09`  
		Last Modified: Wed, 11 Oct 2017 02:07:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2a5618b1ffde75ad6b5b7deb828a778a314f47129950945bba7e17f6902859`  
		Last Modified: Wed, 11 Oct 2017 02:41:45 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824a59d5896aced6389ad8309224324f4a0fa47472231cfef9cc335e6f3ddf94`  
		Last Modified: Wed, 11 Oct 2017 02:41:48 GMT  
		Size: 14.3 MB (14347407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f32114e551bc3417a7fc37acff931de134023be683eef2893b976933f56d0`  
		Last Modified: Wed, 11 Oct 2017 02:41:43 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7db42f19498340a3be87ea7ef8888b1cba53a3b6f4bbdf9f4bfff828d5ed116`  
		Last Modified: Wed, 11 Oct 2017 02:41:43 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8f0713b0c42548e62b3b990e69fbd4d331be5a86ad75cbfc197374755128a5`  
		Last Modified: Wed, 11 Oct 2017 02:42:02 GMT  
		Size: 56.6 MB (56580557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257c3912e45d285f2f3ba29e035dbe8713ff3493031bacce67a2b6f78058eff1`  
		Last Modified: Wed, 11 Oct 2017 02:41:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7354f70d739d1c7986392b5ba8b748dbf5b867acb36487c2950f60fdb05fbb0`  
		Last Modified: Mon, 16 Oct 2017 22:48:48 GMT  
		Size: 2.3 MB (2347342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9711fb55e0b584976b3bb8c337359ffc49b708c5045a3a213f28b633be758d85`  
		Last Modified: Mon, 16 Oct 2017 22:49:05 GMT  
		Size: 77.1 MB (77091285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92940ba3241ede9b1eb1349950ec298454b8319c4d3f3ca5b7bfc968fb972bd0`  
		Last Modified: Mon, 16 Oct 2017 22:48:47 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; s390x

```console
$ docker pull redmine@sha256:8e462939367099c31d35037af4971e601d70443c20c208fab61ccd8adaf3b7f7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258297241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d336ff94cd9bbf9d2d2f7760689950420196b1d66d44c8f6aacbea32c8015f`
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
# Wed, 11 Oct 2017 08:50:27 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 08:52:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 08:52:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 08:52:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 08:52:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 08:52:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 08:52:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 08:52:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 08:52:52 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 09:16:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 09:17:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:17:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 09:17:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 09:17:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 09:17:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 09:17:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:17:44 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 09:17:45 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:49:30 GMT
ENV REDMINE_VERSION=3.2.8
# Mon, 16 Oct 2017 22:49:30 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Mon, 16 Oct 2017 22:49:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:52:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:52:09 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:52:09 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:52:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:52:10 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:52:10 GMT
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
	-	`sha256:393eae4c1c843a196a9ffc95844cfa0816efe1cacc52776f10698ca409b63d37`  
		Last Modified: Wed, 11 Oct 2017 08:57:17 GMT  
		Size: 37.9 MB (37861443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054b7f11175538f0073e0f07078a5f8d6e49712fafd627a126cba71cdaf794cd`  
		Last Modified: Wed, 11 Oct 2017 08:57:07 GMT  
		Size: 677.1 KB (677072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb8184143baaa56187f27998ef4dfeab0ede595691b46cc911e26a1734adc66`  
		Last Modified: Wed, 11 Oct 2017 08:57:06 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fdcd6a7868eed5e139a33d56f57e320d74fafec6bd56bf41f64216898202f7`  
		Last Modified: Wed, 11 Oct 2017 09:24:02 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eef1ca2bf2ecb6f7870e32f96fcab43c68d5dec6a66a433a5b1e4834fd19414`  
		Last Modified: Wed, 11 Oct 2017 09:24:04 GMT  
		Size: 14.8 MB (14814950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fc0b82cd51b4636310b525b243e0ce6fbf6f58288be634d98ade8602f23ad4`  
		Last Modified: Wed, 11 Oct 2017 09:24:00 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35365c7ca2ec313f71e7b971b104575fc438a6c0106b4241d02907d6d1fe392`  
		Last Modified: Wed, 11 Oct 2017 09:24:00 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aced18ad3ec5d91a2e9354b1f263bf6d79f93228052376a71ce722979085aba7`  
		Last Modified: Wed, 11 Oct 2017 09:24:11 GMT  
		Size: 59.1 MB (59092251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7582f981c0af4b486bef3a1619e171224ca934d3bfbf9c2bb66a1a3ea7bc47`  
		Last Modified: Wed, 11 Oct 2017 09:23:59 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd47d0f7f7483d8121b00228e6be41f5d3ad7f9bc4191c01e971a953b2be05c`  
		Last Modified: Mon, 16 Oct 2017 22:53:26 GMT  
		Size: 2.3 MB (2347003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b9d945b5298e41be2e10ebe9ba2348fcbde208c16159d4c2ba653a3a082baf`  
		Last Modified: Mon, 16 Oct 2017 22:53:38 GMT  
		Size: 80.3 MB (80255677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d271d93fcee920655d42f040416dbeb14f71f7d58aa799eb2532d6acb4e215b`  
		Last Modified: Mon, 16 Oct 2017 22:53:25 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.8-passenger`

```console
$ docker pull redmine@sha256:e67821425b2af23660ac9493b71f03f4bfd1ccea2692d9ff45af637ef43b9f8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.8-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:7e6c4434e4979cb3405602cef725b9f01bbaf79b14e62bdd41bdc9249f17e759
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271426757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24cec771d93607bc2ea9d31d6d6516879acc3ec323c0f8902ab382b8d919a477`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 10 Oct 2017 20:32:37 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 20:35:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 20:35:24 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 20:35:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 20:35:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 20:35:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 20:35:27 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:09:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:10:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:10:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:10:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:10:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:10:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:44 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:10:45 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:58:06 GMT
ENV REDMINE_VERSION=3.2.8
# Mon, 16 Oct 2017 19:58:06 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Mon, 16 Oct 2017 19:58:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 20:00:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 20:00:16 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 20:00:16 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 20:00:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 20:00:17 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 20:00:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 16 Oct 2017 20:00:34 GMT
ENV PASSENGER_VERSION=5.1.10
# Mon, 16 Oct 2017 20:00:59 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 20:01:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 16 Oct 2017 20:01:00 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131298f05e91b99efc7b9f8be64fcc1b49dad3b9299c51f494aa34e9357b9c0b`  
		Last Modified: Tue, 10 Oct 2017 20:48:17 GMT  
		Size: 34.2 MB (34180704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2776ab7f7fcaf878c5b1c0934d4bd97b1c1cab5201d7d1d3cd8e855b6669902`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27f5b65db57ecf4f9da4d11de66c9925adff68c3d040837804e51b202d7d707`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32afe294f2aade665b2e344b116ca506cb8930f19ab3e1d2c1d5dcbcd59d1ac8`  
		Last Modified: Tue, 10 Oct 2017 21:19:08 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c88af721c8ad06cc8e276795c93d17d8e161dcb92d3879c043525627ecc09c`  
		Last Modified: Tue, 10 Oct 2017 21:19:11 GMT  
		Size: 14.7 MB (14650143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68de09a442a22ec98a4ebbf41517c128b728dd6a07bf56987c465fb92a05265`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d20def6ca187fe8e4f701aff7ecde78cfa2cc1fa6e6bca2334cd040a069ecc8`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 8.5 KB (8504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6ae2e0d9e31df49e3d682fc1c77f9501060473e884753e980d05cf023b1936`  
		Last Modified: Tue, 10 Oct 2017 21:19:18 GMT  
		Size: 59.2 MB (59238364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057bd7cacf4566293bbde1c3e43e1fe8798f5c1e0867dcdf001038942bb78acc`  
		Last Modified: Tue, 10 Oct 2017 21:19:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d868e0412f89bde8bdd66f76e43d0d73290838e023c322414bf4fab7a0d978c7`  
		Last Modified: Mon, 16 Oct 2017 20:03:53 GMT  
		Size: 2.3 MB (2346999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a55ec998c22c070146c885506aae4700cbcf620cf11ef9eda27945a2b052927`  
		Last Modified: Mon, 16 Oct 2017 20:04:04 GMT  
		Size: 77.9 MB (77857358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a362403346eb12b412fa842a842190da0c90169cd6e571e6f365526f27445f`  
		Last Modified: Mon, 16 Oct 2017 20:03:53 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa534e678bfd42cd13d34754972024ad988bf565c0b7f4877570114110f775c`  
		Last Modified: Mon, 16 Oct 2017 20:04:28 GMT  
		Size: 14.9 MB (14931493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f744d321b51ab4b3bc7a336eec8251e01c8d3d71b750efb51d5ac81d42d84ea`  
		Last Modified: Mon, 16 Oct 2017 20:04:27 GMT  
		Size: 4.3 MB (4274009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:e67821425b2af23660ac9493b71f03f4bfd1ccea2692d9ff45af637ef43b9f8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:7e6c4434e4979cb3405602cef725b9f01bbaf79b14e62bdd41bdc9249f17e759
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271426757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24cec771d93607bc2ea9d31d6d6516879acc3ec323c0f8902ab382b8d919a477`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 10 Oct 2017 20:32:37 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 20:35:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 20:35:24 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 20:35:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 20:35:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 20:35:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 20:35:27 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:09:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:10:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:10:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:10:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:10:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:10:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:44 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:10:45 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:58:06 GMT
ENV REDMINE_VERSION=3.2.8
# Mon, 16 Oct 2017 19:58:06 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Mon, 16 Oct 2017 19:58:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 20:00:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 20:00:16 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 20:00:16 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 20:00:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 20:00:17 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 20:00:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 16 Oct 2017 20:00:34 GMT
ENV PASSENGER_VERSION=5.1.10
# Mon, 16 Oct 2017 20:00:59 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 20:01:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 16 Oct 2017 20:01:00 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131298f05e91b99efc7b9f8be64fcc1b49dad3b9299c51f494aa34e9357b9c0b`  
		Last Modified: Tue, 10 Oct 2017 20:48:17 GMT  
		Size: 34.2 MB (34180704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2776ab7f7fcaf878c5b1c0934d4bd97b1c1cab5201d7d1d3cd8e855b6669902`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27f5b65db57ecf4f9da4d11de66c9925adff68c3d040837804e51b202d7d707`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32afe294f2aade665b2e344b116ca506cb8930f19ab3e1d2c1d5dcbcd59d1ac8`  
		Last Modified: Tue, 10 Oct 2017 21:19:08 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c88af721c8ad06cc8e276795c93d17d8e161dcb92d3879c043525627ecc09c`  
		Last Modified: Tue, 10 Oct 2017 21:19:11 GMT  
		Size: 14.7 MB (14650143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68de09a442a22ec98a4ebbf41517c128b728dd6a07bf56987c465fb92a05265`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d20def6ca187fe8e4f701aff7ecde78cfa2cc1fa6e6bca2334cd040a069ecc8`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 8.5 KB (8504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6ae2e0d9e31df49e3d682fc1c77f9501060473e884753e980d05cf023b1936`  
		Last Modified: Tue, 10 Oct 2017 21:19:18 GMT  
		Size: 59.2 MB (59238364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057bd7cacf4566293bbde1c3e43e1fe8798f5c1e0867dcdf001038942bb78acc`  
		Last Modified: Tue, 10 Oct 2017 21:19:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d868e0412f89bde8bdd66f76e43d0d73290838e023c322414bf4fab7a0d978c7`  
		Last Modified: Mon, 16 Oct 2017 20:03:53 GMT  
		Size: 2.3 MB (2346999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a55ec998c22c070146c885506aae4700cbcf620cf11ef9eda27945a2b052927`  
		Last Modified: Mon, 16 Oct 2017 20:04:04 GMT  
		Size: 77.9 MB (77857358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a362403346eb12b412fa842a842190da0c90169cd6e571e6f365526f27445f`  
		Last Modified: Mon, 16 Oct 2017 20:03:53 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa534e678bfd42cd13d34754972024ad988bf565c0b7f4877570114110f775c`  
		Last Modified: Mon, 16 Oct 2017 20:04:28 GMT  
		Size: 14.9 MB (14931493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f744d321b51ab4b3bc7a336eec8251e01c8d3d71b750efb51d5ac81d42d84ea`  
		Last Modified: Mon, 16 Oct 2017 20:04:27 GMT  
		Size: 4.3 MB (4274009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:648b30a06f89926d6cf3c7018f1d784be19b38a30458e9e2c01e6eddf5d287aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; s390x

### `redmine:3.3` - linux; amd64

```console
$ docker pull redmine@sha256:9679e27901e41934baced8296dccb00df0e3d55edc47139c885bcfcaec97a628
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.3 MB (252264977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38ef3019c6b78a47b36968edd61e9cf14160fb00bd7c77fa30c2248950c8f4ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 10 Oct 2017 20:32:37 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 20:35:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 20:35:24 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 20:35:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 20:35:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 20:35:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 20:35:27 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:09:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:10:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:10:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:10:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:10:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:10:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:44 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:10:45 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:55:04 GMT
ENV REDMINE_VERSION=3.3.5
# Mon, 16 Oct 2017 19:55:04 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Mon, 16 Oct 2017 19:55:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 19:57:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:57:23 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 19:57:23 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 19:57:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 19:57:24 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 19:57:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131298f05e91b99efc7b9f8be64fcc1b49dad3b9299c51f494aa34e9357b9c0b`  
		Last Modified: Tue, 10 Oct 2017 20:48:17 GMT  
		Size: 34.2 MB (34180704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2776ab7f7fcaf878c5b1c0934d4bd97b1c1cab5201d7d1d3cd8e855b6669902`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27f5b65db57ecf4f9da4d11de66c9925adff68c3d040837804e51b202d7d707`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32afe294f2aade665b2e344b116ca506cb8930f19ab3e1d2c1d5dcbcd59d1ac8`  
		Last Modified: Tue, 10 Oct 2017 21:19:08 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c88af721c8ad06cc8e276795c93d17d8e161dcb92d3879c043525627ecc09c`  
		Last Modified: Tue, 10 Oct 2017 21:19:11 GMT  
		Size: 14.7 MB (14650143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68de09a442a22ec98a4ebbf41517c128b728dd6a07bf56987c465fb92a05265`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d20def6ca187fe8e4f701aff7ecde78cfa2cc1fa6e6bca2334cd040a069ecc8`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 8.5 KB (8504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6ae2e0d9e31df49e3d682fc1c77f9501060473e884753e980d05cf023b1936`  
		Last Modified: Tue, 10 Oct 2017 21:19:18 GMT  
		Size: 59.2 MB (59238364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057bd7cacf4566293bbde1c3e43e1fe8798f5c1e0867dcdf001038942bb78acc`  
		Last Modified: Tue, 10 Oct 2017 21:19:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6e7c8affa379e4adff4c2bbc72394f3849860b9f0e587277a3e3f617071b96`  
		Last Modified: Mon, 16 Oct 2017 20:02:58 GMT  
		Size: 2.4 MB (2390735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919fa5418ee478da964dc4e2a0346c0b1b3aae91e6f4d5f6f79896a02a8a8644`  
		Last Modified: Mon, 16 Oct 2017 20:03:08 GMT  
		Size: 77.9 MB (77857344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca2441c797f4df3640f241070d767d729c29bccd41bdee78f0180e6355e4ca7`  
		Last Modified: Mon, 16 Oct 2017 20:02:57 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:5d6695570d148dd3c1bfe07ef08c17b5679d8387e3d31143943d480e7fad6f78
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244712239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98063606e9578ec28e96bd9eb7bf8e4e390aa1cd9a9fd1c4f807724d89f6532`
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
# Wed, 11 Oct 2017 01:58:40 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 02:02:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 02:02:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 02:03:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 02:03:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 02:03:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 02:03:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 02:03:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 02:03:02 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:30:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:30:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:30:42 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:30:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:31:40 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:31:40 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:38:21 GMT
ENV REDMINE_VERSION=3.3.5
# Mon, 16 Oct 2017 22:38:21 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Mon, 16 Oct 2017 22:38:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:42:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:42:44 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:42:45 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:42:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:42:45 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:42:45 GMT
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
	-	`sha256:392cd1b254b7112c9ca2c8679624bc0682a33aa1c1860f0d42c0687abf19d313`  
		Last Modified: Wed, 11 Oct 2017 02:08:10 GMT  
		Size: 33.1 MB (33128458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de83c6d584c962ddc708fd58cf0336de21b60eb5a119a513d90125e8b5abca6`  
		Last Modified: Wed, 11 Oct 2017 02:07:58 GMT  
		Size: 677.1 KB (677066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa3fd04212db62e11080d106d6b92955738c5ca95e3bd9b48c8d86b574dce09`  
		Last Modified: Wed, 11 Oct 2017 02:07:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2a5618b1ffde75ad6b5b7deb828a778a314f47129950945bba7e17f6902859`  
		Last Modified: Wed, 11 Oct 2017 02:41:45 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824a59d5896aced6389ad8309224324f4a0fa47472231cfef9cc335e6f3ddf94`  
		Last Modified: Wed, 11 Oct 2017 02:41:48 GMT  
		Size: 14.3 MB (14347407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f32114e551bc3417a7fc37acff931de134023be683eef2893b976933f56d0`  
		Last Modified: Wed, 11 Oct 2017 02:41:43 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7db42f19498340a3be87ea7ef8888b1cba53a3b6f4bbdf9f4bfff828d5ed116`  
		Last Modified: Wed, 11 Oct 2017 02:41:43 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8f0713b0c42548e62b3b990e69fbd4d331be5a86ad75cbfc197374755128a5`  
		Last Modified: Wed, 11 Oct 2017 02:42:02 GMT  
		Size: 56.6 MB (56580557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257c3912e45d285f2f3ba29e035dbe8713ff3493031bacce67a2b6f78058eff1`  
		Last Modified: Wed, 11 Oct 2017 02:41:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eea84b8b4ce9b3ab9888a006531cc6c8bdeb506c53878d0ea113ee60b800792`  
		Last Modified: Mon, 16 Oct 2017 22:48:18 GMT  
		Size: 2.4 MB (2390998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9a712c6406ad5cbf5cdb7f98a34c889a5fb452c5e9dfa36f9be4fbb2ab49cd`  
		Last Modified: Mon, 16 Oct 2017 22:48:36 GMT  
		Size: 77.1 MB (77092200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5033b8aafcf6a680b65d582971796d5ba96226e62aaa20485ee5ca525844cb47`  
		Last Modified: Mon, 16 Oct 2017 22:48:17 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:b51c93a87974e5752d0547355e1faa47b83ce4c3582046ec8f19aa8a97dd8983
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258340212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df81778da0aea0b863c70c15d3246879f8f0030feb68bba11eaaf2840d687d42`
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
# Wed, 11 Oct 2017 08:50:27 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 08:52:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 08:52:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 08:52:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 08:52:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 08:52:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 08:52:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 08:52:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 08:52:52 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 09:16:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 09:17:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:17:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 09:17:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 09:17:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 09:17:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 09:17:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:17:44 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 09:17:45 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:46:38 GMT
ENV REDMINE_VERSION=3.3.5
# Mon, 16 Oct 2017 22:46:38 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Mon, 16 Oct 2017 22:46:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:49:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:49:20 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:49:21 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:49:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:49:21 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:49:21 GMT
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
	-	`sha256:393eae4c1c843a196a9ffc95844cfa0816efe1cacc52776f10698ca409b63d37`  
		Last Modified: Wed, 11 Oct 2017 08:57:17 GMT  
		Size: 37.9 MB (37861443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054b7f11175538f0073e0f07078a5f8d6e49712fafd627a126cba71cdaf794cd`  
		Last Modified: Wed, 11 Oct 2017 08:57:07 GMT  
		Size: 677.1 KB (677072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb8184143baaa56187f27998ef4dfeab0ede595691b46cc911e26a1734adc66`  
		Last Modified: Wed, 11 Oct 2017 08:57:06 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fdcd6a7868eed5e139a33d56f57e320d74fafec6bd56bf41f64216898202f7`  
		Last Modified: Wed, 11 Oct 2017 09:24:02 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eef1ca2bf2ecb6f7870e32f96fcab43c68d5dec6a66a433a5b1e4834fd19414`  
		Last Modified: Wed, 11 Oct 2017 09:24:04 GMT  
		Size: 14.8 MB (14814950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fc0b82cd51b4636310b525b243e0ce6fbf6f58288be634d98ade8602f23ad4`  
		Last Modified: Wed, 11 Oct 2017 09:24:00 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35365c7ca2ec313f71e7b971b104575fc438a6c0106b4241d02907d6d1fe392`  
		Last Modified: Wed, 11 Oct 2017 09:24:00 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aced18ad3ec5d91a2e9354b1f263bf6d79f93228052376a71ce722979085aba7`  
		Last Modified: Wed, 11 Oct 2017 09:24:11 GMT  
		Size: 59.1 MB (59092251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7582f981c0af4b486bef3a1619e171224ca934d3bfbf9c2bb66a1a3ea7bc47`  
		Last Modified: Wed, 11 Oct 2017 09:23:59 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e16ab00568daaf625cde9363cc3b93deacdc934f4be4b3a51e9d40fa633bd4`  
		Last Modified: Mon, 16 Oct 2017 22:53:00 GMT  
		Size: 2.4 MB (2390734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a76e7d0946ecdd249bd508466934eba65486e51f805d2154e837ce01f9dd6`  
		Last Modified: Mon, 16 Oct 2017 22:53:14 GMT  
		Size: 80.3 MB (80254916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc53ce650f27b4c25fc53147c73a4423c513d2d101575387986a710a3fc394e0`  
		Last Modified: Mon, 16 Oct 2017 22:52:59 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.5`

```console
$ docker pull redmine@sha256:648b30a06f89926d6cf3c7018f1d784be19b38a30458e9e2c01e6eddf5d287aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; s390x

### `redmine:3.3.5` - linux; amd64

```console
$ docker pull redmine@sha256:9679e27901e41934baced8296dccb00df0e3d55edc47139c885bcfcaec97a628
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.3 MB (252264977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38ef3019c6b78a47b36968edd61e9cf14160fb00bd7c77fa30c2248950c8f4ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 10 Oct 2017 20:32:37 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 20:35:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 20:35:24 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 20:35:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 20:35:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 20:35:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 20:35:27 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:09:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:10:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:10:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:10:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:10:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:10:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:44 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:10:45 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:55:04 GMT
ENV REDMINE_VERSION=3.3.5
# Mon, 16 Oct 2017 19:55:04 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Mon, 16 Oct 2017 19:55:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 19:57:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:57:23 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 19:57:23 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 19:57:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 19:57:24 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 19:57:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131298f05e91b99efc7b9f8be64fcc1b49dad3b9299c51f494aa34e9357b9c0b`  
		Last Modified: Tue, 10 Oct 2017 20:48:17 GMT  
		Size: 34.2 MB (34180704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2776ab7f7fcaf878c5b1c0934d4bd97b1c1cab5201d7d1d3cd8e855b6669902`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27f5b65db57ecf4f9da4d11de66c9925adff68c3d040837804e51b202d7d707`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32afe294f2aade665b2e344b116ca506cb8930f19ab3e1d2c1d5dcbcd59d1ac8`  
		Last Modified: Tue, 10 Oct 2017 21:19:08 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c88af721c8ad06cc8e276795c93d17d8e161dcb92d3879c043525627ecc09c`  
		Last Modified: Tue, 10 Oct 2017 21:19:11 GMT  
		Size: 14.7 MB (14650143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68de09a442a22ec98a4ebbf41517c128b728dd6a07bf56987c465fb92a05265`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d20def6ca187fe8e4f701aff7ecde78cfa2cc1fa6e6bca2334cd040a069ecc8`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 8.5 KB (8504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6ae2e0d9e31df49e3d682fc1c77f9501060473e884753e980d05cf023b1936`  
		Last Modified: Tue, 10 Oct 2017 21:19:18 GMT  
		Size: 59.2 MB (59238364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057bd7cacf4566293bbde1c3e43e1fe8798f5c1e0867dcdf001038942bb78acc`  
		Last Modified: Tue, 10 Oct 2017 21:19:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6e7c8affa379e4adff4c2bbc72394f3849860b9f0e587277a3e3f617071b96`  
		Last Modified: Mon, 16 Oct 2017 20:02:58 GMT  
		Size: 2.4 MB (2390735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919fa5418ee478da964dc4e2a0346c0b1b3aae91e6f4d5f6f79896a02a8a8644`  
		Last Modified: Mon, 16 Oct 2017 20:03:08 GMT  
		Size: 77.9 MB (77857344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca2441c797f4df3640f241070d767d729c29bccd41bdee78f0180e6355e4ca7`  
		Last Modified: Mon, 16 Oct 2017 20:02:57 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm variant v5

```console
$ docker pull redmine@sha256:5d6695570d148dd3c1bfe07ef08c17b5679d8387e3d31143943d480e7fad6f78
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244712239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98063606e9578ec28e96bd9eb7bf8e4e390aa1cd9a9fd1c4f807724d89f6532`
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
# Wed, 11 Oct 2017 01:58:40 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 02:02:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 02:02:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 02:03:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 02:03:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 02:03:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 02:03:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 02:03:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 02:03:02 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:30:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:30:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:30:42 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:30:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:31:40 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:31:40 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:38:21 GMT
ENV REDMINE_VERSION=3.3.5
# Mon, 16 Oct 2017 22:38:21 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Mon, 16 Oct 2017 22:38:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:42:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:42:44 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:42:45 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:42:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:42:45 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:42:45 GMT
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
	-	`sha256:392cd1b254b7112c9ca2c8679624bc0682a33aa1c1860f0d42c0687abf19d313`  
		Last Modified: Wed, 11 Oct 2017 02:08:10 GMT  
		Size: 33.1 MB (33128458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de83c6d584c962ddc708fd58cf0336de21b60eb5a119a513d90125e8b5abca6`  
		Last Modified: Wed, 11 Oct 2017 02:07:58 GMT  
		Size: 677.1 KB (677066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa3fd04212db62e11080d106d6b92955738c5ca95e3bd9b48c8d86b574dce09`  
		Last Modified: Wed, 11 Oct 2017 02:07:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2a5618b1ffde75ad6b5b7deb828a778a314f47129950945bba7e17f6902859`  
		Last Modified: Wed, 11 Oct 2017 02:41:45 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824a59d5896aced6389ad8309224324f4a0fa47472231cfef9cc335e6f3ddf94`  
		Last Modified: Wed, 11 Oct 2017 02:41:48 GMT  
		Size: 14.3 MB (14347407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f32114e551bc3417a7fc37acff931de134023be683eef2893b976933f56d0`  
		Last Modified: Wed, 11 Oct 2017 02:41:43 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7db42f19498340a3be87ea7ef8888b1cba53a3b6f4bbdf9f4bfff828d5ed116`  
		Last Modified: Wed, 11 Oct 2017 02:41:43 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8f0713b0c42548e62b3b990e69fbd4d331be5a86ad75cbfc197374755128a5`  
		Last Modified: Wed, 11 Oct 2017 02:42:02 GMT  
		Size: 56.6 MB (56580557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257c3912e45d285f2f3ba29e035dbe8713ff3493031bacce67a2b6f78058eff1`  
		Last Modified: Wed, 11 Oct 2017 02:41:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eea84b8b4ce9b3ab9888a006531cc6c8bdeb506c53878d0ea113ee60b800792`  
		Last Modified: Mon, 16 Oct 2017 22:48:18 GMT  
		Size: 2.4 MB (2390998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9a712c6406ad5cbf5cdb7f98a34c889a5fb452c5e9dfa36f9be4fbb2ab49cd`  
		Last Modified: Mon, 16 Oct 2017 22:48:36 GMT  
		Size: 77.1 MB (77092200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5033b8aafcf6a680b65d582971796d5ba96226e62aaa20485ee5ca525844cb47`  
		Last Modified: Mon, 16 Oct 2017 22:48:17 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; s390x

```console
$ docker pull redmine@sha256:b51c93a87974e5752d0547355e1faa47b83ce4c3582046ec8f19aa8a97dd8983
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258340212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df81778da0aea0b863c70c15d3246879f8f0030feb68bba11eaaf2840d687d42`
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
# Wed, 11 Oct 2017 08:50:27 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 08:52:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 08:52:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 08:52:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 08:52:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 08:52:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 08:52:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 08:52:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 08:52:52 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 09:16:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 09:17:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:17:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 09:17:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 09:17:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 09:17:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 09:17:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:17:44 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 09:17:45 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:46:38 GMT
ENV REDMINE_VERSION=3.3.5
# Mon, 16 Oct 2017 22:46:38 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Mon, 16 Oct 2017 22:46:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:49:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:49:20 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:49:21 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:49:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:49:21 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:49:21 GMT
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
	-	`sha256:393eae4c1c843a196a9ffc95844cfa0816efe1cacc52776f10698ca409b63d37`  
		Last Modified: Wed, 11 Oct 2017 08:57:17 GMT  
		Size: 37.9 MB (37861443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054b7f11175538f0073e0f07078a5f8d6e49712fafd627a126cba71cdaf794cd`  
		Last Modified: Wed, 11 Oct 2017 08:57:07 GMT  
		Size: 677.1 KB (677072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb8184143baaa56187f27998ef4dfeab0ede595691b46cc911e26a1734adc66`  
		Last Modified: Wed, 11 Oct 2017 08:57:06 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fdcd6a7868eed5e139a33d56f57e320d74fafec6bd56bf41f64216898202f7`  
		Last Modified: Wed, 11 Oct 2017 09:24:02 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eef1ca2bf2ecb6f7870e32f96fcab43c68d5dec6a66a433a5b1e4834fd19414`  
		Last Modified: Wed, 11 Oct 2017 09:24:04 GMT  
		Size: 14.8 MB (14814950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fc0b82cd51b4636310b525b243e0ce6fbf6f58288be634d98ade8602f23ad4`  
		Last Modified: Wed, 11 Oct 2017 09:24:00 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35365c7ca2ec313f71e7b971b104575fc438a6c0106b4241d02907d6d1fe392`  
		Last Modified: Wed, 11 Oct 2017 09:24:00 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aced18ad3ec5d91a2e9354b1f263bf6d79f93228052376a71ce722979085aba7`  
		Last Modified: Wed, 11 Oct 2017 09:24:11 GMT  
		Size: 59.1 MB (59092251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7582f981c0af4b486bef3a1619e171224ca934d3bfbf9c2bb66a1a3ea7bc47`  
		Last Modified: Wed, 11 Oct 2017 09:23:59 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e16ab00568daaf625cde9363cc3b93deacdc934f4be4b3a51e9d40fa633bd4`  
		Last Modified: Mon, 16 Oct 2017 22:53:00 GMT  
		Size: 2.4 MB (2390734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a76e7d0946ecdd249bd508466934eba65486e51f805d2154e837ce01f9dd6`  
		Last Modified: Mon, 16 Oct 2017 22:53:14 GMT  
		Size: 80.3 MB (80254916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc53ce650f27b4c25fc53147c73a4423c513d2d101575387986a710a3fc394e0`  
		Last Modified: Mon, 16 Oct 2017 22:52:59 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.5-passenger`

```console
$ docker pull redmine@sha256:146c9860c0dc8853bfc760f3b01e3fae017518a78697392765d00c7d74ae0346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.5-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:c4397fde883d092bd41c0367efcd7ebb27eb634f10c5b0f7dd46e708298e140a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271470787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f85208b64f577ee75957483071185d3c2ccb8b20d3e8bf3f80c7de5fc2ef2c06`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 10 Oct 2017 20:32:37 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 20:35:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 20:35:24 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 20:35:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 20:35:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 20:35:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 20:35:27 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:09:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:10:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:10:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:10:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:10:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:10:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:44 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:10:45 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:55:04 GMT
ENV REDMINE_VERSION=3.3.5
# Mon, 16 Oct 2017 19:55:04 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Mon, 16 Oct 2017 19:55:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 19:57:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:57:23 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 19:57:23 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 19:57:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 19:57:24 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 19:57:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 16 Oct 2017 19:57:32 GMT
ENV PASSENGER_VERSION=5.1.10
# Mon, 16 Oct 2017 19:57:56 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:57:57 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 16 Oct 2017 19:57:58 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131298f05e91b99efc7b9f8be64fcc1b49dad3b9299c51f494aa34e9357b9c0b`  
		Last Modified: Tue, 10 Oct 2017 20:48:17 GMT  
		Size: 34.2 MB (34180704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2776ab7f7fcaf878c5b1c0934d4bd97b1c1cab5201d7d1d3cd8e855b6669902`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27f5b65db57ecf4f9da4d11de66c9925adff68c3d040837804e51b202d7d707`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32afe294f2aade665b2e344b116ca506cb8930f19ab3e1d2c1d5dcbcd59d1ac8`  
		Last Modified: Tue, 10 Oct 2017 21:19:08 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c88af721c8ad06cc8e276795c93d17d8e161dcb92d3879c043525627ecc09c`  
		Last Modified: Tue, 10 Oct 2017 21:19:11 GMT  
		Size: 14.7 MB (14650143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68de09a442a22ec98a4ebbf41517c128b728dd6a07bf56987c465fb92a05265`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d20def6ca187fe8e4f701aff7ecde78cfa2cc1fa6e6bca2334cd040a069ecc8`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 8.5 KB (8504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6ae2e0d9e31df49e3d682fc1c77f9501060473e884753e980d05cf023b1936`  
		Last Modified: Tue, 10 Oct 2017 21:19:18 GMT  
		Size: 59.2 MB (59238364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057bd7cacf4566293bbde1c3e43e1fe8798f5c1e0867dcdf001038942bb78acc`  
		Last Modified: Tue, 10 Oct 2017 21:19:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6e7c8affa379e4adff4c2bbc72394f3849860b9f0e587277a3e3f617071b96`  
		Last Modified: Mon, 16 Oct 2017 20:02:58 GMT  
		Size: 2.4 MB (2390735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919fa5418ee478da964dc4e2a0346c0b1b3aae91e6f4d5f6f79896a02a8a8644`  
		Last Modified: Mon, 16 Oct 2017 20:03:08 GMT  
		Size: 77.9 MB (77857344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca2441c797f4df3640f241070d767d729c29bccd41bdee78f0180e6355e4ca7`  
		Last Modified: Mon, 16 Oct 2017 20:02:57 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a42b534d310413386a7b5a153f3b1ae0a12d4f79fc59e32b83e756d85f9e`  
		Last Modified: Mon, 16 Oct 2017 20:03:31 GMT  
		Size: 14.9 MB (14931799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28883588f05a81a4a626630a4322ba41ec03e0db6220511ee47c2cb079221fc`  
		Last Modified: Mon, 16 Oct 2017 20:03:30 GMT  
		Size: 4.3 MB (4274011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:146c9860c0dc8853bfc760f3b01e3fae017518a78697392765d00c7d74ae0346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:c4397fde883d092bd41c0367efcd7ebb27eb634f10c5b0f7dd46e708298e140a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271470787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f85208b64f577ee75957483071185d3c2ccb8b20d3e8bf3f80c7de5fc2ef2c06`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:50:55 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 10 Oct 2017 20:32:37 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 20:35:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 20:35:24 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 20:35:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 20:35:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 20:35:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 20:35:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 20:35:27 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:09:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:10:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:10:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:10:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:10:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:10:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:10:44 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:10:45 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:55:04 GMT
ENV REDMINE_VERSION=3.3.5
# Mon, 16 Oct 2017 19:55:04 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Mon, 16 Oct 2017 19:55:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 19:57:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:57:23 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 19:57:23 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 19:57:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 19:57:24 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 19:57:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 16 Oct 2017 19:57:32 GMT
ENV PASSENGER_VERSION=5.1.10
# Mon, 16 Oct 2017 19:57:56 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:57:57 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 16 Oct 2017 19:57:58 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131298f05e91b99efc7b9f8be64fcc1b49dad3b9299c51f494aa34e9357b9c0b`  
		Last Modified: Tue, 10 Oct 2017 20:48:17 GMT  
		Size: 34.2 MB (34180704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2776ab7f7fcaf878c5b1c0934d4bd97b1c1cab5201d7d1d3cd8e855b6669902`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27f5b65db57ecf4f9da4d11de66c9925adff68c3d040837804e51b202d7d707`  
		Last Modified: Tue, 10 Oct 2017 20:48:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32afe294f2aade665b2e344b116ca506cb8930f19ab3e1d2c1d5dcbcd59d1ac8`  
		Last Modified: Tue, 10 Oct 2017 21:19:08 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c88af721c8ad06cc8e276795c93d17d8e161dcb92d3879c043525627ecc09c`  
		Last Modified: Tue, 10 Oct 2017 21:19:11 GMT  
		Size: 14.7 MB (14650143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68de09a442a22ec98a4ebbf41517c128b728dd6a07bf56987c465fb92a05265`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d20def6ca187fe8e4f701aff7ecde78cfa2cc1fa6e6bca2334cd040a069ecc8`  
		Last Modified: Tue, 10 Oct 2017 21:19:06 GMT  
		Size: 8.5 KB (8504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6ae2e0d9e31df49e3d682fc1c77f9501060473e884753e980d05cf023b1936`  
		Last Modified: Tue, 10 Oct 2017 21:19:18 GMT  
		Size: 59.2 MB (59238364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057bd7cacf4566293bbde1c3e43e1fe8798f5c1e0867dcdf001038942bb78acc`  
		Last Modified: Tue, 10 Oct 2017 21:19:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6e7c8affa379e4adff4c2bbc72394f3849860b9f0e587277a3e3f617071b96`  
		Last Modified: Mon, 16 Oct 2017 20:02:58 GMT  
		Size: 2.4 MB (2390735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919fa5418ee478da964dc4e2a0346c0b1b3aae91e6f4d5f6f79896a02a8a8644`  
		Last Modified: Mon, 16 Oct 2017 20:03:08 GMT  
		Size: 77.9 MB (77857344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca2441c797f4df3640f241070d767d729c29bccd41bdee78f0180e6355e4ca7`  
		Last Modified: Mon, 16 Oct 2017 20:02:57 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a42b534d310413386a7b5a153f3b1ae0a12d4f79fc59e32b83e756d85f9e`  
		Last Modified: Mon, 16 Oct 2017 20:03:31 GMT  
		Size: 14.9 MB (14931799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28883588f05a81a4a626630a4322ba41ec03e0db6220511ee47c2cb079221fc`  
		Last Modified: Mon, 16 Oct 2017 20:03:30 GMT  
		Size: 4.3 MB (4274011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:3520c008e91dfa8db630b8ccb8a9c9acf21f0b50150223b457a3fbe09afb67cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; s390x

### `redmine:3.4` - linux; amd64

```console
$ docker pull redmine@sha256:c4b90f0be4475ab223c299139732e9bab1863b07c07ccfee540242d6494a2dec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241083960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d545b2cd12cf25a2a9cd8d6be107b537edcd733e0caaba0d68545b5f94ad35`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:25:53 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 19:54:59 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 19:58:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 19:58:10 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 19:58:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 19:58:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 19:58:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 19:58:12 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:05:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:05:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:05:42 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:05:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:06:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:06:26 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:06:26 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 19:51:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 19:54:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:54:08 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 19:54:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 19:54:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 19:54:09 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 19:54:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57fc1883c1e5c06f1985fe57c780be91b37bf2771e54ea6e9e3fefe96e1077`  
		Last Modified: Tue, 10 Oct 2017 20:40:58 GMT  
		Size: 23.6 MB (23605333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d9b5396ff6c91e55d89225d780e5fa5cdb4047aa657876c70d01512318ed26`  
		Last Modified: Tue, 10 Oct 2017 20:40:52 GMT  
		Size: 677.1 KB (677067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f24b8bbda46cdef22c5c023df9e25de2caf757699176aa50512d4c4f1cf8f0`  
		Last Modified: Tue, 10 Oct 2017 20:40:51 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f19c0ba10beb56a01d6e245ae0e8e7721da9ca8ef2268bdbfcc504d07e0b352`  
		Last Modified: Tue, 10 Oct 2017 21:17:24 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd13bb04aab3d53de712224cf1991e102bdb5f8af32dd5cdd2f76f10f430b9ae`  
		Last Modified: Tue, 10 Oct 2017 21:17:25 GMT  
		Size: 14.7 MB (14650140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f9ed40654773eaf5eb9672e8b816b845595ede8a71f2022624ae60c2c3efeb`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5147e081c29ee0f729a9130cfbf48902d324413c69b19bb31b6cfab2bacb969`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e3e28b583812400c52ec6f501f71658264c3522721b2de8edcf999cb5f058`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 59.2 MB (59238073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757829592e55d852b8bf9ef79dacb6d55e13b0a152f3dbdbf5b06541cb259d2d`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21b29aa5ea54317efb44caa6f8e4039e96cc45dd6c2f1eb96c17d5f087711b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 2.4 MB (2449725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fed0da4a66378332fcab858886b10bba9085b9c0586fbfc8e48e351abaa6f9`  
		Last Modified: Mon, 16 Oct 2017 20:01:37 GMT  
		Size: 77.2 MB (77192979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a10d5d55763fe5379687bbf81d5062e8998c2bf7e1c556cfbf5d42915159c3b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:ee4ab0e5a329debcfa78f29638583529619ce885351069bfa0dc61a1fbc4f2b3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234309949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88154edeb76dd42a245880235e817edf596ad5e727b9c76095279d6d18ea294a`
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
# Wed, 11 Oct 2017 01:38:47 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:44:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:44:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:44:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:44:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:44:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:44:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:44:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:44:45 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:23:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:24:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:24:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:24:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:24:32 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:24:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:25:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:25:35 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:25:35 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:33:28 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 22:33:28 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 22:33:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:38:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:38:08 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:38:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:38:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:38:09 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:38:09 GMT
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
	-	`sha256:9ee68ae712c9eb7c41457528b60f9c391f38dc1a4d9e4f29b60f6c0efde2d2d3`  
		Last Modified: Wed, 11 Oct 2017 02:05:15 GMT  
		Size: 23.4 MB (23369533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca986c0a72b92a4cc4fa34e3d44309dc2561a1b96a3280e4d8f23a705b25208`  
		Last Modified: Wed, 11 Oct 2017 02:05:06 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce20e25ab3589e87562f5236fdca948978befe0ac105a33d15d824b3b6a415d`  
		Last Modified: Wed, 11 Oct 2017 02:05:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0164318a137b7b91c4523811e8d0203aad39c556d62aa96d64cbe2e09d4adb95`  
		Last Modified: Wed, 11 Oct 2017 02:41:03 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ad082af6bd03300630b227a92e58debbfb93f2513c468f72269d79f70f3ec3`  
		Last Modified: Wed, 11 Oct 2017 02:41:07 GMT  
		Size: 14.3 MB (14347439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae8b834c7d93383272523f8f9512baa6ab35d32083d7016d6825152609a1e38`  
		Last Modified: Wed, 11 Oct 2017 02:41:03 GMT  
		Size: 491.1 KB (491126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5e2e2f70ee6c52ecc0e9f45745d2773dee1eafb2506435a3d6b6d28d43985`  
		Last Modified: Wed, 11 Oct 2017 02:41:02 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027736de287890d3e4b688f05f26d61f18d9ef036acec74194a5930c00d53745`  
		Last Modified: Wed, 11 Oct 2017 02:41:20 GMT  
		Size: 56.6 MB (56580245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904bb64c6ccd0d7a84e9863348e3a55f8bd60f3fe3fd1a4359f489e2de7f0234`  
		Last Modified: Wed, 11 Oct 2017 02:41:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec241a8f2efea7264612415b8d3e2bfbe528d5494042b21e13718fc4404500a`  
		Last Modified: Mon, 16 Oct 2017 22:47:42 GMT  
		Size: 2.5 MB (2450387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ccca4e984d89899f622bd1957b1687d6de5939e4a6152b0322285fc84b89c8b`  
		Last Modified: Mon, 16 Oct 2017 22:47:58 GMT  
		Size: 76.4 MB (76389716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe042eb4a8c4da7a266789b55150c325584a51b5db691a5a4ff11b2d9edcf76`  
		Last Modified: Mon, 16 Oct 2017 22:47:41 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:082bf7770ac57a9ec171a28fe5ef709740f78ce475cbddbacb38f8230da84dc3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243907843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7b14ef67517fca50df8b12b5d442e26edcf99fae1fdb9c8c50dc40713ef41c`
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
# Wed, 11 Oct 2017 08:38:58 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 08:42:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 08:42:05 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 08:42:06 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 08:42:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 08:42:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 08:42:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 08:42:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 08:42:07 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 09:13:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 09:13:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:13:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 09:13:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 09:13:37 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 09:13:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 09:14:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:14:16 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 09:14:16 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:43:30 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 22:43:30 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 22:43:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:46:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:46:21 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:46:21 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:46:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:46:21 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:46:22 GMT
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
	-	`sha256:d79f10ac661107b1c17ce82ec3ed131023f4a06b79a5c119ae05b20af6953809`  
		Last Modified: Wed, 11 Oct 2017 08:54:52 GMT  
		Size: 24.0 MB (24000410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9403ce092cb47d6c70b0582624e997319e5d6c7ded38cf5909102530ea7fe598`  
		Last Modified: Wed, 11 Oct 2017 08:54:47 GMT  
		Size: 677.1 KB (677061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f7c6b4a54414f2cec58f0363ba83ee56c3c80835c29d0143a1dab7abadb694`  
		Last Modified: Wed, 11 Oct 2017 08:54:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad958ba7fdac3a70d5ea80fa8eb781082162819d7baefb66126989f9f0152352`  
		Last Modified: Wed, 11 Oct 2017 09:23:03 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40be906db369610147c71459702712ff880e62139bb63c3c004edcea5aba1f5b`  
		Last Modified: Wed, 11 Oct 2017 09:23:05 GMT  
		Size: 14.8 MB (14814991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e000eef5d6a6547cb974a9b0846308fd93d960ec10c9b10e0dd731528cf18e`  
		Last Modified: Wed, 11 Oct 2017 09:23:02 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c3194a6b46c8a69734daf7cbd0d708b8443159f7140263b1d195ed6db7db27`  
		Last Modified: Wed, 11 Oct 2017 09:23:02 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa20e1100fcf8a7f5860477328ba42eb5c8b5f66d0b7ac088a4059b6367dbcd`  
		Last Modified: Wed, 11 Oct 2017 09:23:13 GMT  
		Size: 59.1 MB (59092147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda5b253e7f91933107cdbc1f156a05d2184d6b52e945549a663d6b666804cb5`  
		Last Modified: Wed, 11 Oct 2017 09:23:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfe996cf4a965d8629a3c1bcb0dfaa9813ca66e9a47e4e9c0c02506be9c168a`  
		Last Modified: Mon, 16 Oct 2017 22:52:30 GMT  
		Size: 2.4 MB (2449723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7e403a5af91dd1e6f074f8797161e88771b4ee2a68bb77d10a997f02779088`  
		Last Modified: Mon, 16 Oct 2017 22:52:40 GMT  
		Size: 79.6 MB (79624660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d514a1c6fd8fdeaaf7d7efd805b28ea4ebe787ccd3bb9aa75dc4d913b24385`  
		Last Modified: Mon, 16 Oct 2017 22:52:29 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.3`

```console
$ docker pull redmine@sha256:3520c008e91dfa8db630b8ccb8a9c9acf21f0b50150223b457a3fbe09afb67cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; s390x

### `redmine:3.4.3` - linux; amd64

```console
$ docker pull redmine@sha256:c4b90f0be4475ab223c299139732e9bab1863b07c07ccfee540242d6494a2dec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241083960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d545b2cd12cf25a2a9cd8d6be107b537edcd733e0caaba0d68545b5f94ad35`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:25:53 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 19:54:59 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 19:58:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 19:58:10 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 19:58:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 19:58:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 19:58:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 19:58:12 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:05:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:05:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:05:42 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:05:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:06:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:06:26 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:06:26 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 19:51:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 19:54:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:54:08 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 19:54:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 19:54:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 19:54:09 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 19:54:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57fc1883c1e5c06f1985fe57c780be91b37bf2771e54ea6e9e3fefe96e1077`  
		Last Modified: Tue, 10 Oct 2017 20:40:58 GMT  
		Size: 23.6 MB (23605333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d9b5396ff6c91e55d89225d780e5fa5cdb4047aa657876c70d01512318ed26`  
		Last Modified: Tue, 10 Oct 2017 20:40:52 GMT  
		Size: 677.1 KB (677067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f24b8bbda46cdef22c5c023df9e25de2caf757699176aa50512d4c4f1cf8f0`  
		Last Modified: Tue, 10 Oct 2017 20:40:51 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f19c0ba10beb56a01d6e245ae0e8e7721da9ca8ef2268bdbfcc504d07e0b352`  
		Last Modified: Tue, 10 Oct 2017 21:17:24 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd13bb04aab3d53de712224cf1991e102bdb5f8af32dd5cdd2f76f10f430b9ae`  
		Last Modified: Tue, 10 Oct 2017 21:17:25 GMT  
		Size: 14.7 MB (14650140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f9ed40654773eaf5eb9672e8b816b845595ede8a71f2022624ae60c2c3efeb`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5147e081c29ee0f729a9130cfbf48902d324413c69b19bb31b6cfab2bacb969`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e3e28b583812400c52ec6f501f71658264c3522721b2de8edcf999cb5f058`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 59.2 MB (59238073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757829592e55d852b8bf9ef79dacb6d55e13b0a152f3dbdbf5b06541cb259d2d`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21b29aa5ea54317efb44caa6f8e4039e96cc45dd6c2f1eb96c17d5f087711b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 2.4 MB (2449725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fed0da4a66378332fcab858886b10bba9085b9c0586fbfc8e48e351abaa6f9`  
		Last Modified: Mon, 16 Oct 2017 20:01:37 GMT  
		Size: 77.2 MB (77192979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a10d5d55763fe5379687bbf81d5062e8998c2bf7e1c556cfbf5d42915159c3b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:ee4ab0e5a329debcfa78f29638583529619ce885351069bfa0dc61a1fbc4f2b3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234309949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88154edeb76dd42a245880235e817edf596ad5e727b9c76095279d6d18ea294a`
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
# Wed, 11 Oct 2017 01:38:47 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:44:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:44:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:44:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:44:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:44:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:44:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:44:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:44:45 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:23:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:24:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:24:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:24:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:24:32 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:24:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:25:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:25:35 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:25:35 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:33:28 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 22:33:28 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 22:33:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:38:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:38:08 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:38:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:38:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:38:09 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:38:09 GMT
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
	-	`sha256:9ee68ae712c9eb7c41457528b60f9c391f38dc1a4d9e4f29b60f6c0efde2d2d3`  
		Last Modified: Wed, 11 Oct 2017 02:05:15 GMT  
		Size: 23.4 MB (23369533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca986c0a72b92a4cc4fa34e3d44309dc2561a1b96a3280e4d8f23a705b25208`  
		Last Modified: Wed, 11 Oct 2017 02:05:06 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce20e25ab3589e87562f5236fdca948978befe0ac105a33d15d824b3b6a415d`  
		Last Modified: Wed, 11 Oct 2017 02:05:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0164318a137b7b91c4523811e8d0203aad39c556d62aa96d64cbe2e09d4adb95`  
		Last Modified: Wed, 11 Oct 2017 02:41:03 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ad082af6bd03300630b227a92e58debbfb93f2513c468f72269d79f70f3ec3`  
		Last Modified: Wed, 11 Oct 2017 02:41:07 GMT  
		Size: 14.3 MB (14347439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae8b834c7d93383272523f8f9512baa6ab35d32083d7016d6825152609a1e38`  
		Last Modified: Wed, 11 Oct 2017 02:41:03 GMT  
		Size: 491.1 KB (491126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5e2e2f70ee6c52ecc0e9f45745d2773dee1eafb2506435a3d6b6d28d43985`  
		Last Modified: Wed, 11 Oct 2017 02:41:02 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027736de287890d3e4b688f05f26d61f18d9ef036acec74194a5930c00d53745`  
		Last Modified: Wed, 11 Oct 2017 02:41:20 GMT  
		Size: 56.6 MB (56580245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904bb64c6ccd0d7a84e9863348e3a55f8bd60f3fe3fd1a4359f489e2de7f0234`  
		Last Modified: Wed, 11 Oct 2017 02:41:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec241a8f2efea7264612415b8d3e2bfbe528d5494042b21e13718fc4404500a`  
		Last Modified: Mon, 16 Oct 2017 22:47:42 GMT  
		Size: 2.5 MB (2450387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ccca4e984d89899f622bd1957b1687d6de5939e4a6152b0322285fc84b89c8b`  
		Last Modified: Mon, 16 Oct 2017 22:47:58 GMT  
		Size: 76.4 MB (76389716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe042eb4a8c4da7a266789b55150c325584a51b5db691a5a4ff11b2d9edcf76`  
		Last Modified: Mon, 16 Oct 2017 22:47:41 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; s390x

```console
$ docker pull redmine@sha256:082bf7770ac57a9ec171a28fe5ef709740f78ce475cbddbacb38f8230da84dc3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243907843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7b14ef67517fca50df8b12b5d442e26edcf99fae1fdb9c8c50dc40713ef41c`
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
# Wed, 11 Oct 2017 08:38:58 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 08:42:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 08:42:05 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 08:42:06 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 08:42:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 08:42:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 08:42:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 08:42:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 08:42:07 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 09:13:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 09:13:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:13:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 09:13:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 09:13:37 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 09:13:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 09:14:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:14:16 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 09:14:16 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:43:30 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 22:43:30 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 22:43:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:46:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:46:21 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:46:21 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:46:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:46:21 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:46:22 GMT
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
	-	`sha256:d79f10ac661107b1c17ce82ec3ed131023f4a06b79a5c119ae05b20af6953809`  
		Last Modified: Wed, 11 Oct 2017 08:54:52 GMT  
		Size: 24.0 MB (24000410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9403ce092cb47d6c70b0582624e997319e5d6c7ded38cf5909102530ea7fe598`  
		Last Modified: Wed, 11 Oct 2017 08:54:47 GMT  
		Size: 677.1 KB (677061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f7c6b4a54414f2cec58f0363ba83ee56c3c80835c29d0143a1dab7abadb694`  
		Last Modified: Wed, 11 Oct 2017 08:54:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad958ba7fdac3a70d5ea80fa8eb781082162819d7baefb66126989f9f0152352`  
		Last Modified: Wed, 11 Oct 2017 09:23:03 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40be906db369610147c71459702712ff880e62139bb63c3c004edcea5aba1f5b`  
		Last Modified: Wed, 11 Oct 2017 09:23:05 GMT  
		Size: 14.8 MB (14814991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e000eef5d6a6547cb974a9b0846308fd93d960ec10c9b10e0dd731528cf18e`  
		Last Modified: Wed, 11 Oct 2017 09:23:02 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c3194a6b46c8a69734daf7cbd0d708b8443159f7140263b1d195ed6db7db27`  
		Last Modified: Wed, 11 Oct 2017 09:23:02 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa20e1100fcf8a7f5860477328ba42eb5c8b5f66d0b7ac088a4059b6367dbcd`  
		Last Modified: Wed, 11 Oct 2017 09:23:13 GMT  
		Size: 59.1 MB (59092147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda5b253e7f91933107cdbc1f156a05d2184d6b52e945549a663d6b666804cb5`  
		Last Modified: Wed, 11 Oct 2017 09:23:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfe996cf4a965d8629a3c1bcb0dfaa9813ca66e9a47e4e9c0c02506be9c168a`  
		Last Modified: Mon, 16 Oct 2017 22:52:30 GMT  
		Size: 2.4 MB (2449723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7e403a5af91dd1e6f074f8797161e88771b4ee2a68bb77d10a997f02779088`  
		Last Modified: Mon, 16 Oct 2017 22:52:40 GMT  
		Size: 79.6 MB (79624660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d514a1c6fd8fdeaaf7d7efd805b28ea4ebe787ccd3bb9aa75dc4d913b24385`  
		Last Modified: Mon, 16 Oct 2017 22:52:29 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.3-passenger`

```console
$ docker pull redmine@sha256:dfc7f1e2b460876c4c76968c6e28966922efa58f73b9ff4727e69f9f5dfe0964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:2da1159f9f8fd9e24c9f8b97d5096686fd0fb35fd877cb7b70c111088be5e25f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 MB (260289510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac33ff45ed7049cbbf6d9eba3c0580a8d4a5c6bfc65c7c5cbfeaf86bd0017396`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:25:53 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 19:54:59 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 19:58:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 19:58:10 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 19:58:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 19:58:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 19:58:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 19:58:12 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:05:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:05:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:05:42 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:05:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:06:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:06:26 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:06:26 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 19:51:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 19:54:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:54:08 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 19:54:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 19:54:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 19:54:09 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 19:54:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 16 Oct 2017 19:54:30 GMT
ENV PASSENGER_VERSION=5.1.10
# Mon, 16 Oct 2017 19:54:54 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:54:55 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 16 Oct 2017 19:54:55 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57fc1883c1e5c06f1985fe57c780be91b37bf2771e54ea6e9e3fefe96e1077`  
		Last Modified: Tue, 10 Oct 2017 20:40:58 GMT  
		Size: 23.6 MB (23605333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d9b5396ff6c91e55d89225d780e5fa5cdb4047aa657876c70d01512318ed26`  
		Last Modified: Tue, 10 Oct 2017 20:40:52 GMT  
		Size: 677.1 KB (677067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f24b8bbda46cdef22c5c023df9e25de2caf757699176aa50512d4c4f1cf8f0`  
		Last Modified: Tue, 10 Oct 2017 20:40:51 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f19c0ba10beb56a01d6e245ae0e8e7721da9ca8ef2268bdbfcc504d07e0b352`  
		Last Modified: Tue, 10 Oct 2017 21:17:24 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd13bb04aab3d53de712224cf1991e102bdb5f8af32dd5cdd2f76f10f430b9ae`  
		Last Modified: Tue, 10 Oct 2017 21:17:25 GMT  
		Size: 14.7 MB (14650140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f9ed40654773eaf5eb9672e8b816b845595ede8a71f2022624ae60c2c3efeb`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5147e081c29ee0f729a9130cfbf48902d324413c69b19bb31b6cfab2bacb969`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e3e28b583812400c52ec6f501f71658264c3522721b2de8edcf999cb5f058`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 59.2 MB (59238073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757829592e55d852b8bf9ef79dacb6d55e13b0a152f3dbdbf5b06541cb259d2d`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21b29aa5ea54317efb44caa6f8e4039e96cc45dd6c2f1eb96c17d5f087711b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 2.4 MB (2449725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fed0da4a66378332fcab858886b10bba9085b9c0586fbfc8e48e351abaa6f9`  
		Last Modified: Mon, 16 Oct 2017 20:01:37 GMT  
		Size: 77.2 MB (77192979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a10d5d55763fe5379687bbf81d5062e8998c2bf7e1c556cfbf5d42915159c3b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1cb22fde7c1cae67e551c013129097f904951ab6ffdae66977f76ac7f16f73`  
		Last Modified: Mon, 16 Oct 2017 20:02:19 GMT  
		Size: 14.9 MB (14931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2a2e84b891a64b8593d53b28f00cae9f7a25ea327a8ecbd2463b2c63380a2`  
		Last Modified: Mon, 16 Oct 2017 20:02:17 GMT  
		Size: 4.3 MB (4274010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:dfc7f1e2b460876c4c76968c6e28966922efa58f73b9ff4727e69f9f5dfe0964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:2da1159f9f8fd9e24c9f8b97d5096686fd0fb35fd877cb7b70c111088be5e25f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 MB (260289510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac33ff45ed7049cbbf6d9eba3c0580a8d4a5c6bfc65c7c5cbfeaf86bd0017396`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:25:53 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 19:54:59 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 19:58:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 19:58:10 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 19:58:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 19:58:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 19:58:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 19:58:12 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:05:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:05:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:05:42 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:05:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:06:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:06:26 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:06:26 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 19:51:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 19:54:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:54:08 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 19:54:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 19:54:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 19:54:09 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 19:54:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 16 Oct 2017 19:54:30 GMT
ENV PASSENGER_VERSION=5.1.10
# Mon, 16 Oct 2017 19:54:54 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:54:55 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 16 Oct 2017 19:54:55 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57fc1883c1e5c06f1985fe57c780be91b37bf2771e54ea6e9e3fefe96e1077`  
		Last Modified: Tue, 10 Oct 2017 20:40:58 GMT  
		Size: 23.6 MB (23605333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d9b5396ff6c91e55d89225d780e5fa5cdb4047aa657876c70d01512318ed26`  
		Last Modified: Tue, 10 Oct 2017 20:40:52 GMT  
		Size: 677.1 KB (677067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f24b8bbda46cdef22c5c023df9e25de2caf757699176aa50512d4c4f1cf8f0`  
		Last Modified: Tue, 10 Oct 2017 20:40:51 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f19c0ba10beb56a01d6e245ae0e8e7721da9ca8ef2268bdbfcc504d07e0b352`  
		Last Modified: Tue, 10 Oct 2017 21:17:24 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd13bb04aab3d53de712224cf1991e102bdb5f8af32dd5cdd2f76f10f430b9ae`  
		Last Modified: Tue, 10 Oct 2017 21:17:25 GMT  
		Size: 14.7 MB (14650140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f9ed40654773eaf5eb9672e8b816b845595ede8a71f2022624ae60c2c3efeb`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5147e081c29ee0f729a9130cfbf48902d324413c69b19bb31b6cfab2bacb969`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e3e28b583812400c52ec6f501f71658264c3522721b2de8edcf999cb5f058`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 59.2 MB (59238073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757829592e55d852b8bf9ef79dacb6d55e13b0a152f3dbdbf5b06541cb259d2d`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21b29aa5ea54317efb44caa6f8e4039e96cc45dd6c2f1eb96c17d5f087711b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 2.4 MB (2449725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fed0da4a66378332fcab858886b10bba9085b9c0586fbfc8e48e351abaa6f9`  
		Last Modified: Mon, 16 Oct 2017 20:01:37 GMT  
		Size: 77.2 MB (77192979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a10d5d55763fe5379687bbf81d5062e8998c2bf7e1c556cfbf5d42915159c3b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1cb22fde7c1cae67e551c013129097f904951ab6ffdae66977f76ac7f16f73`  
		Last Modified: Mon, 16 Oct 2017 20:02:19 GMT  
		Size: 14.9 MB (14931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2a2e84b891a64b8593d53b28f00cae9f7a25ea327a8ecbd2463b2c63380a2`  
		Last Modified: Mon, 16 Oct 2017 20:02:17 GMT  
		Size: 4.3 MB (4274010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:dfc7f1e2b460876c4c76968c6e28966922efa58f73b9ff4727e69f9f5dfe0964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:2da1159f9f8fd9e24c9f8b97d5096686fd0fb35fd877cb7b70c111088be5e25f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 MB (260289510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac33ff45ed7049cbbf6d9eba3c0580a8d4a5c6bfc65c7c5cbfeaf86bd0017396`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:25:53 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 19:54:59 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 19:58:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 19:58:10 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 19:58:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 19:58:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 19:58:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 19:58:12 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:05:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:05:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:05:42 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:05:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:06:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:06:26 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:06:26 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 19:51:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 19:54:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:54:08 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 19:54:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 19:54:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 19:54:09 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 19:54:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 16 Oct 2017 19:54:30 GMT
ENV PASSENGER_VERSION=5.1.10
# Mon, 16 Oct 2017 19:54:54 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:54:55 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 16 Oct 2017 19:54:55 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57fc1883c1e5c06f1985fe57c780be91b37bf2771e54ea6e9e3fefe96e1077`  
		Last Modified: Tue, 10 Oct 2017 20:40:58 GMT  
		Size: 23.6 MB (23605333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d9b5396ff6c91e55d89225d780e5fa5cdb4047aa657876c70d01512318ed26`  
		Last Modified: Tue, 10 Oct 2017 20:40:52 GMT  
		Size: 677.1 KB (677067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f24b8bbda46cdef22c5c023df9e25de2caf757699176aa50512d4c4f1cf8f0`  
		Last Modified: Tue, 10 Oct 2017 20:40:51 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f19c0ba10beb56a01d6e245ae0e8e7721da9ca8ef2268bdbfcc504d07e0b352`  
		Last Modified: Tue, 10 Oct 2017 21:17:24 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd13bb04aab3d53de712224cf1991e102bdb5f8af32dd5cdd2f76f10f430b9ae`  
		Last Modified: Tue, 10 Oct 2017 21:17:25 GMT  
		Size: 14.7 MB (14650140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f9ed40654773eaf5eb9672e8b816b845595ede8a71f2022624ae60c2c3efeb`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5147e081c29ee0f729a9130cfbf48902d324413c69b19bb31b6cfab2bacb969`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e3e28b583812400c52ec6f501f71658264c3522721b2de8edcf999cb5f058`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 59.2 MB (59238073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757829592e55d852b8bf9ef79dacb6d55e13b0a152f3dbdbf5b06541cb259d2d`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21b29aa5ea54317efb44caa6f8e4039e96cc45dd6c2f1eb96c17d5f087711b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 2.4 MB (2449725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fed0da4a66378332fcab858886b10bba9085b9c0586fbfc8e48e351abaa6f9`  
		Last Modified: Mon, 16 Oct 2017 20:01:37 GMT  
		Size: 77.2 MB (77192979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a10d5d55763fe5379687bbf81d5062e8998c2bf7e1c556cfbf5d42915159c3b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1cb22fde7c1cae67e551c013129097f904951ab6ffdae66977f76ac7f16f73`  
		Last Modified: Mon, 16 Oct 2017 20:02:19 GMT  
		Size: 14.9 MB (14931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2a2e84b891a64b8593d53b28f00cae9f7a25ea327a8ecbd2463b2c63380a2`  
		Last Modified: Mon, 16 Oct 2017 20:02:17 GMT  
		Size: 4.3 MB (4274010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:3520c008e91dfa8db630b8ccb8a9c9acf21f0b50150223b457a3fbe09afb67cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; s390x

### `redmine:latest` - linux; amd64

```console
$ docker pull redmine@sha256:c4b90f0be4475ab223c299139732e9bab1863b07c07ccfee540242d6494a2dec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241083960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d545b2cd12cf25a2a9cd8d6be107b537edcd733e0caaba0d68545b5f94ad35`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:25:53 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 19:54:59 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 19:58:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 19:58:10 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 19:58:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 19:58:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 19:58:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 19:58:12 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:05:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:05:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:05:42 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:05:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:06:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:06:26 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:06:26 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 19:51:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 19:54:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:54:08 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 19:54:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 19:54:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 19:54:09 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 19:54:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57fc1883c1e5c06f1985fe57c780be91b37bf2771e54ea6e9e3fefe96e1077`  
		Last Modified: Tue, 10 Oct 2017 20:40:58 GMT  
		Size: 23.6 MB (23605333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d9b5396ff6c91e55d89225d780e5fa5cdb4047aa657876c70d01512318ed26`  
		Last Modified: Tue, 10 Oct 2017 20:40:52 GMT  
		Size: 677.1 KB (677067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f24b8bbda46cdef22c5c023df9e25de2caf757699176aa50512d4c4f1cf8f0`  
		Last Modified: Tue, 10 Oct 2017 20:40:51 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f19c0ba10beb56a01d6e245ae0e8e7721da9ca8ef2268bdbfcc504d07e0b352`  
		Last Modified: Tue, 10 Oct 2017 21:17:24 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd13bb04aab3d53de712224cf1991e102bdb5f8af32dd5cdd2f76f10f430b9ae`  
		Last Modified: Tue, 10 Oct 2017 21:17:25 GMT  
		Size: 14.7 MB (14650140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f9ed40654773eaf5eb9672e8b816b845595ede8a71f2022624ae60c2c3efeb`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5147e081c29ee0f729a9130cfbf48902d324413c69b19bb31b6cfab2bacb969`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e3e28b583812400c52ec6f501f71658264c3522721b2de8edcf999cb5f058`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 59.2 MB (59238073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757829592e55d852b8bf9ef79dacb6d55e13b0a152f3dbdbf5b06541cb259d2d`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21b29aa5ea54317efb44caa6f8e4039e96cc45dd6c2f1eb96c17d5f087711b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 2.4 MB (2449725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fed0da4a66378332fcab858886b10bba9085b9c0586fbfc8e48e351abaa6f9`  
		Last Modified: Mon, 16 Oct 2017 20:01:37 GMT  
		Size: 77.2 MB (77192979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a10d5d55763fe5379687bbf81d5062e8998c2bf7e1c556cfbf5d42915159c3b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:ee4ab0e5a329debcfa78f29638583529619ce885351069bfa0dc61a1fbc4f2b3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234309949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88154edeb76dd42a245880235e817edf596ad5e727b9c76095279d6d18ea294a`
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
# Wed, 11 Oct 2017 01:38:47 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:44:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:44:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:44:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:44:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:44:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:44:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:44:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:44:45 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:23:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:24:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:24:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:24:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:24:32 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:24:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:25:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:25:35 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:25:35 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:33:28 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 22:33:28 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 22:33:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:38:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:38:08 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:38:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:38:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:38:09 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:38:09 GMT
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
	-	`sha256:9ee68ae712c9eb7c41457528b60f9c391f38dc1a4d9e4f29b60f6c0efde2d2d3`  
		Last Modified: Wed, 11 Oct 2017 02:05:15 GMT  
		Size: 23.4 MB (23369533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca986c0a72b92a4cc4fa34e3d44309dc2561a1b96a3280e4d8f23a705b25208`  
		Last Modified: Wed, 11 Oct 2017 02:05:06 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce20e25ab3589e87562f5236fdca948978befe0ac105a33d15d824b3b6a415d`  
		Last Modified: Wed, 11 Oct 2017 02:05:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0164318a137b7b91c4523811e8d0203aad39c556d62aa96d64cbe2e09d4adb95`  
		Last Modified: Wed, 11 Oct 2017 02:41:03 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ad082af6bd03300630b227a92e58debbfb93f2513c468f72269d79f70f3ec3`  
		Last Modified: Wed, 11 Oct 2017 02:41:07 GMT  
		Size: 14.3 MB (14347439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae8b834c7d93383272523f8f9512baa6ab35d32083d7016d6825152609a1e38`  
		Last Modified: Wed, 11 Oct 2017 02:41:03 GMT  
		Size: 491.1 KB (491126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5e2e2f70ee6c52ecc0e9f45745d2773dee1eafb2506435a3d6b6d28d43985`  
		Last Modified: Wed, 11 Oct 2017 02:41:02 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027736de287890d3e4b688f05f26d61f18d9ef036acec74194a5930c00d53745`  
		Last Modified: Wed, 11 Oct 2017 02:41:20 GMT  
		Size: 56.6 MB (56580245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904bb64c6ccd0d7a84e9863348e3a55f8bd60f3fe3fd1a4359f489e2de7f0234`  
		Last Modified: Wed, 11 Oct 2017 02:41:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec241a8f2efea7264612415b8d3e2bfbe528d5494042b21e13718fc4404500a`  
		Last Modified: Mon, 16 Oct 2017 22:47:42 GMT  
		Size: 2.5 MB (2450387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ccca4e984d89899f622bd1957b1687d6de5939e4a6152b0322285fc84b89c8b`  
		Last Modified: Mon, 16 Oct 2017 22:47:58 GMT  
		Size: 76.4 MB (76389716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe042eb4a8c4da7a266789b55150c325584a51b5db691a5a4ff11b2d9edcf76`  
		Last Modified: Mon, 16 Oct 2017 22:47:41 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:082bf7770ac57a9ec171a28fe5ef709740f78ce475cbddbacb38f8230da84dc3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243907843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7b14ef67517fca50df8b12b5d442e26edcf99fae1fdb9c8c50dc40713ef41c`
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
# Wed, 11 Oct 2017 08:38:58 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 08:42:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 08:42:05 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 08:42:06 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 08:42:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 08:42:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 08:42:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 08:42:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 08:42:07 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 09:13:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 09:13:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:13:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 09:13:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 09:13:37 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 09:13:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 09:14:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:14:16 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 09:14:16 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:43:30 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 22:43:30 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 22:43:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:46:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:46:21 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:46:21 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:46:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:46:21 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:46:22 GMT
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
	-	`sha256:d79f10ac661107b1c17ce82ec3ed131023f4a06b79a5c119ae05b20af6953809`  
		Last Modified: Wed, 11 Oct 2017 08:54:52 GMT  
		Size: 24.0 MB (24000410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9403ce092cb47d6c70b0582624e997319e5d6c7ded38cf5909102530ea7fe598`  
		Last Modified: Wed, 11 Oct 2017 08:54:47 GMT  
		Size: 677.1 KB (677061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f7c6b4a54414f2cec58f0363ba83ee56c3c80835c29d0143a1dab7abadb694`  
		Last Modified: Wed, 11 Oct 2017 08:54:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad958ba7fdac3a70d5ea80fa8eb781082162819d7baefb66126989f9f0152352`  
		Last Modified: Wed, 11 Oct 2017 09:23:03 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40be906db369610147c71459702712ff880e62139bb63c3c004edcea5aba1f5b`  
		Last Modified: Wed, 11 Oct 2017 09:23:05 GMT  
		Size: 14.8 MB (14814991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e000eef5d6a6547cb974a9b0846308fd93d960ec10c9b10e0dd731528cf18e`  
		Last Modified: Wed, 11 Oct 2017 09:23:02 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c3194a6b46c8a69734daf7cbd0d708b8443159f7140263b1d195ed6db7db27`  
		Last Modified: Wed, 11 Oct 2017 09:23:02 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa20e1100fcf8a7f5860477328ba42eb5c8b5f66d0b7ac088a4059b6367dbcd`  
		Last Modified: Wed, 11 Oct 2017 09:23:13 GMT  
		Size: 59.1 MB (59092147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda5b253e7f91933107cdbc1f156a05d2184d6b52e945549a663d6b666804cb5`  
		Last Modified: Wed, 11 Oct 2017 09:23:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfe996cf4a965d8629a3c1bcb0dfaa9813ca66e9a47e4e9c0c02506be9c168a`  
		Last Modified: Mon, 16 Oct 2017 22:52:30 GMT  
		Size: 2.4 MB (2449723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7e403a5af91dd1e6f074f8797161e88771b4ee2a68bb77d10a997f02779088`  
		Last Modified: Mon, 16 Oct 2017 22:52:40 GMT  
		Size: 79.6 MB (79624660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d514a1c6fd8fdeaaf7d7efd805b28ea4ebe787ccd3bb9aa75dc4d913b24385`  
		Last Modified: Mon, 16 Oct 2017 22:52:29 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:dfc7f1e2b460876c4c76968c6e28966922efa58f73b9ff4727e69f9f5dfe0964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:2da1159f9f8fd9e24c9f8b97d5096686fd0fb35fd877cb7b70c111088be5e25f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 MB (260289510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac33ff45ed7049cbbf6d9eba3c0580a8d4a5c6bfc65c7c5cbfeaf86bd0017396`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:25:53 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 19:54:59 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 19:58:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 19:58:10 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 19:58:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 19:58:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 19:58:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 19:58:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 19:58:12 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 21:05:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 21:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:05:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 21:05:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 21:05:42 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 21:05:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 21:06:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:06:26 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 21:06:26 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 19:51:31 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 19:51:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 19:54:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:54:08 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 19:54:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 19:54:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 19:54:09 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 19:54:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 16 Oct 2017 19:54:30 GMT
ENV PASSENGER_VERSION=5.1.10
# Mon, 16 Oct 2017 19:54:54 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 19:54:55 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 16 Oct 2017 19:54:55 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57fc1883c1e5c06f1985fe57c780be91b37bf2771e54ea6e9e3fefe96e1077`  
		Last Modified: Tue, 10 Oct 2017 20:40:58 GMT  
		Size: 23.6 MB (23605333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d9b5396ff6c91e55d89225d780e5fa5cdb4047aa657876c70d01512318ed26`  
		Last Modified: Tue, 10 Oct 2017 20:40:52 GMT  
		Size: 677.1 KB (677067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f24b8bbda46cdef22c5c023df9e25de2caf757699176aa50512d4c4f1cf8f0`  
		Last Modified: Tue, 10 Oct 2017 20:40:51 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f19c0ba10beb56a01d6e245ae0e8e7721da9ca8ef2268bdbfcc504d07e0b352`  
		Last Modified: Tue, 10 Oct 2017 21:17:24 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd13bb04aab3d53de712224cf1991e102bdb5f8af32dd5cdd2f76f10f430b9ae`  
		Last Modified: Tue, 10 Oct 2017 21:17:25 GMT  
		Size: 14.7 MB (14650140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f9ed40654773eaf5eb9672e8b816b845595ede8a71f2022624ae60c2c3efeb`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5147e081c29ee0f729a9130cfbf48902d324413c69b19bb31b6cfab2bacb969`  
		Last Modified: Tue, 10 Oct 2017 21:17:22 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4e3e28b583812400c52ec6f501f71658264c3522721b2de8edcf999cb5f058`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 59.2 MB (59238073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757829592e55d852b8bf9ef79dacb6d55e13b0a152f3dbdbf5b06541cb259d2d`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21b29aa5ea54317efb44caa6f8e4039e96cc45dd6c2f1eb96c17d5f087711b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 2.4 MB (2449725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fed0da4a66378332fcab858886b10bba9085b9c0586fbfc8e48e351abaa6f9`  
		Last Modified: Mon, 16 Oct 2017 20:01:37 GMT  
		Size: 77.2 MB (77192979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a10d5d55763fe5379687bbf81d5062e8998c2bf7e1c556cfbf5d42915159c3b`  
		Last Modified: Mon, 16 Oct 2017 20:01:14 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1cb22fde7c1cae67e551c013129097f904951ab6ffdae66977f76ac7f16f73`  
		Last Modified: Mon, 16 Oct 2017 20:02:19 GMT  
		Size: 14.9 MB (14931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2a2e84b891a64b8593d53b28f00cae9f7a25ea327a8ecbd2463b2c63380a2`  
		Last Modified: Mon, 16 Oct 2017 20:02:17 GMT  
		Size: 4.3 MB (4274010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
