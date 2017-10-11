<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.7`](#redmine327)
-	[`redmine:3.2.7-passenger`](#redmine327-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.4`](#redmine334)
-	[`redmine:3.3.4-passenger`](#redmine334-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3.4.2`](#redmine342)
-	[`redmine:3.4.2-passenger`](#redmine342-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3`

```console
$ docker pull redmine@sha256:55451e8886d0cf63655d4ee77244ce7eb26c676201f086e43a0e68599538d7be
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
$ docker pull redmine@sha256:2d4b0b651db427b42fed2e0efe9bd822f3cdbaf11be27a648f93d4b6c1f516ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (241044692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c650b5a815cc3420a97a05ee32054041deeb3ed8c2f2db2877b579752fe8cc97`
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
# Tue, 10 Oct 2017 21:06:26 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 21:06:27 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 21:06:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:09:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:09:08 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:09:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:09:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:09:09 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:09:09 GMT
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
	-	`sha256:7c89f8f0043455beebe8a79e8a5a615c70beca58ba00cd112c02038d2f6c319e`  
		Last Modified: Tue, 10 Oct 2017 21:17:20 GMT  
		Size: 2.4 MB (2448154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c950026dff9cac1cbe64ead43a6444dd989a9c1e86e1d3a053fc8480b3340`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 77.2 MB (77155282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3447eaefde9d2b78ad21ca21a26832be2327f729bf128a6f78f40c1674dad7ed`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:f1e16de6edcb2bbb82f3691ab7fb23803ed3f38481ca857f2c0051a0bbd94670
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234239678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5efdbf2b28d2678d2a8ebda89abee48f2dd7ed7410f39a8f053d9aaa8ee217e5`
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
# Wed, 11 Oct 2017 02:25:35 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 02:25:36 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 02:25:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:29:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:29:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:29:55 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:29:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:29:56 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:29:56 GMT
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
	-	`sha256:bac5dd27a08de907901d5efcb9b898bc5418166c1c2a2eff2fc91525c255f87b`  
		Last Modified: Wed, 11 Oct 2017 02:41:02 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e513edffe6718ca857b6e617dd800b40588b6cd48dfb60154ca0eb5ca08bdf`  
		Last Modified: Wed, 11 Oct 2017 02:41:20 GMT  
		Size: 76.3 MB (76321098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c193da14e9d8c1818ccf29b90600b02e5847550ba296eab2c9ee40917b7b0112`  
		Last Modified: Wed, 11 Oct 2017 02:41:00 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:acb647e92d79de777a4160a17b9fd526ee1663af5930e3586e9fdc2db65a7428
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.5 MB (228545431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2d35b038a83d82f4b57b56cbd27877fb59eb4535eeaff1e0acdc7979eb45be`
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
# Wed, 11 Oct 2017 01:27:08 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:32:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:32:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:32:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:32:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:32:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:32:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:32:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:32:35 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:12:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:13:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:13:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:13:16 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:13:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:14:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:14:13 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:14:13 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:14:13 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 02:14:13 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 02:14:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:18:17 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:18:18 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:18:18 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:18:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:18:19 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:18:19 GMT
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
	-	`sha256:5385aea36ceef4a5f1eed01465b7a1e87f6a59237c912ba6b81999c5da28c25f`  
		Last Modified: Wed, 11 Oct 2017 01:52:34 GMT  
		Size: 23.2 MB (23235115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b81b5c872836f7c5276f4ef109e559e8d50820ec17abb2bd2198ee55b5bd24`  
		Last Modified: Wed, 11 Oct 2017 01:52:27 GMT  
		Size: 677.1 KB (677082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d38195c4d8fe9075fdba46eaa26aa8bbaef778c7801940434c8ad1e9a21010b`  
		Last Modified: Wed, 11 Oct 2017 01:52:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085fd971c0893ccf2edaef750f819197fe536808e6d1c7ada22ead41655974a0`  
		Last Modified: Wed, 11 Oct 2017 02:29:13 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22804d4e8d69ff9c0d3b8f0dad22322a5416f93e3a5cc3d049f97bd4e5914b5c`  
		Last Modified: Wed, 11 Oct 2017 02:29:16 GMT  
		Size: 14.1 MB (14134389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e486c8c04131291e30e39966c419dedf4583a476d6614b6286c08b02132bcc2`  
		Last Modified: Wed, 11 Oct 2017 02:29:12 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8c7299ac4232e1286b016a1d7d515d033c7ce54de51ffa6e7a9e2a9cd7940b`  
		Last Modified: Wed, 11 Oct 2017 02:29:11 GMT  
		Size: 7.3 KB (7306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6d829549beda13aa79f3cf1b6d3468338007ae0f030123b86b2a9c1275e841`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 54.3 MB (54317383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e59af38aea157ce3d1b47777fb67a9646b25fe1530a98aeb606b3d5717cdc9`  
		Last Modified: Wed, 11 Oct 2017 02:29:10 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e3a35ab724b382f04026a196bcda8c32dc08775b196c0d50d62d73f2fe3aa6`  
		Last Modified: Wed, 11 Oct 2017 02:29:11 GMT  
		Size: 2.4 MB (2448731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1698dc93b3cdb38248efe4b855955cc1a7ebeca39ef1c0ee50cb8aa7fb416459`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 75.8 MB (75798255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de52f75ebf985aaea9d9a822196431d7208bd75b4543fef363a01007285e9a3e`  
		Last Modified: Wed, 11 Oct 2017 02:29:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:14c12a5c5d6957bd4f85afe847bae0e0e7c0d48550088506e64fae1e7915f3c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233064566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a1365b7c31a9f294e434227e4a73eb16ee2da1a136c4a6ed4cd951e7816549`
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
# Tue, 10 Oct 2017 21:05:58 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 21:15:17 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 21:15:18 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 21:15:21 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 21:15:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 21:15:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 21:15:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 21:15:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 21:15:24 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 22:16:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 22:16:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:16:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 22:16:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 22:16:49 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 22:16:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 22:18:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:18:32 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 22:18:32 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 22:18:33 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 22:18:34 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 22:18:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 22:27:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 22:27:49 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 22:27:50 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 22:27:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 22:27:52 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 22:27:53 GMT
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
	-	`sha256:f614dc734ce102c88b46d516234c9d95fbaad54848855f141efa0cbe49bb5073`  
		Last Modified: Tue, 10 Oct 2017 21:50:10 GMT  
		Size: 23.6 MB (23562649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867e3a3655789b9c74e40c651ec8281c24bfb488a5e2cad0ad6258955b0422a`  
		Last Modified: Tue, 10 Oct 2017 21:50:00 GMT  
		Size: 677.1 KB (677060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc46531427ae040549535b641a4d313ae8e87451bffc764c38dc8b0030d698a5`  
		Last Modified: Tue, 10 Oct 2017 21:50:00 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9f71bcd6255cda3650c253c403ca18140745c4badcfcf112d1b9afe094372f`  
		Last Modified: Tue, 10 Oct 2017 22:53:26 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765dc8d0fe1b06fecf5f900f6f97fcb685cbcc6194e9d08d19ece202bef01735`  
		Last Modified: Tue, 10 Oct 2017 22:53:29 GMT  
		Size: 14.5 MB (14462510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563fdf1f3488c43d796f5ede83e86724e46f561cad00ff705762ef115b573beb`  
		Last Modified: Tue, 10 Oct 2017 22:53:26 GMT  
		Size: 468.7 KB (468691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd935cc325442d493df45d1e55b1a135a68ca185241a50937f0cb3b512915b83`  
		Last Modified: Tue, 10 Oct 2017 22:53:22 GMT  
		Size: 8.1 KB (8144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980dd39b17f70380d63b31fd6d63a7a340835219a901ba07eba5a4343553195d`  
		Last Modified: Tue, 10 Oct 2017 22:54:17 GMT  
		Size: 55.8 MB (55772330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e316b632848551dd605cf400a562c1ad165e0dd11779a77b64c9a21635fbd88`  
		Last Modified: Tue, 10 Oct 2017 22:53:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b5f6511f70041fe4118046c4d2000a5c5bb926b821f389340e88f32658b0c7`  
		Last Modified: Tue, 10 Oct 2017 22:53:22 GMT  
		Size: 2.4 MB (2448147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddbeaf22cceca328131b94345dc1dbb5028280e2f0d6d10fe8496456d57a130`  
		Last Modified: Tue, 10 Oct 2017 22:54:19 GMT  
		Size: 76.4 MB (76398557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153efa0d79c04242a310b6bba462b1e7a582ea7b55c6e7caf24f3883947e693f`  
		Last Modified: Tue, 10 Oct 2017 22:53:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:83cbfb608e9185e63715cb96ffaa3751adda4dcd102f7e4af623a72eda4582d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (244985496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb9defbe4e2635afd36d4b75863c0f7f0b93322791fc97b63dbfaba5f5ef2cef`
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
# Wed, 11 Oct 2017 02:51:07 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 02:55:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 02:55:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 02:55:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 02:55:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 02:55:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 02:55:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 02:55:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 02:55:18 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 03:38:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 03:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:40:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 03:40:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 03:41:47 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 03:41:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 03:42:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:52 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 03:42:52 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 03:42:52 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 03:42:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 03:42:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 03:46:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 03:46:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 03:46:05 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 03:46:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 03:46:05 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 03:46:05 GMT
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
	-	`sha256:2ba4461fd927012d1938de69de5d27ae8add55f99c55be1098189bb35511e88f`  
		Last Modified: Wed, 11 Oct 2017 03:17:44 GMT  
		Size: 22.6 MB (22598176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69537ee4170b8771ca53c24056f571d76c3f9f5067bdf5abebcbdf87d6af9f67`  
		Last Modified: Wed, 11 Oct 2017 03:17:38 GMT  
		Size: 677.1 KB (677068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b4c7a6bc93522218f28ce745b80ac8b3c78749643dd36e278d0f910163fa8a`  
		Last Modified: Wed, 11 Oct 2017 03:17:37 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4b8387ce9858c3e99caea74b8f20b0a7051287c2426516c4c1e6d8e0b2a804`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cc3351a90dfde06e7645f199e9b1aa513e3f38a88ad1fa81fac964b0b98297`  
		Last Modified: Wed, 11 Oct 2017 04:06:38 GMT  
		Size: 14.8 MB (14817228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594f8cfe4fc80f46f20f0919fc87ca20d0a6c7767547291912baf2547483cfaa`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411aef0f934fe996af96c32325227bc6ecc569c7e5f64b845b0ce34e6ded51d3`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b82e5dac927531b5efb33244e6c1c66b340cfd99ecbf4fa559717dcfbe813a`  
		Last Modified: Wed, 11 Oct 2017 04:06:52 GMT  
		Size: 60.1 MB (60116216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823bd57eff395647bfa4d441c9d17543a7f3b9869a28e3907d2100ef91cd7d76`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79891b2be19fe96201508b602c9f0f4e367a40d39c1d66d356a66bcc3495a96c`  
		Last Modified: Wed, 11 Oct 2017 04:06:38 GMT  
		Size: 2.4 MB (2448152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260cd31fc86c7ea35d2890ffe7b1b0c85988535f709f6e8057fda8fbecb69055`  
		Last Modified: Wed, 11 Oct 2017 04:06:50 GMT  
		Size: 76.4 MB (76433814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14efe08d456b9b8ecd28f55f641e49521156ebf5e88c266264b75fea302a0b02`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:727f6bb1697f337253ac78c9e4d7f4aa306a10fe891774ebcf630a25a423f965
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239727232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07efaff0ccd01ca4203dec61588d2b5a7c821d174211938cd7154c2a0f70eb0c`
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
# Wed, 11 Oct 2017 00:45:39 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:00:01 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:00:04 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:00:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:00:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:00:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:00:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:00:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:00:27 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:06:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:07:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:07:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:07:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:07:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:07:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:13:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:13:45 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:13:48 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:13:50 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 02:13:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 02:14:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:35:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:35:37 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:35:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:35:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:35:48 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:35:51 GMT
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
	-	`sha256:365dcacdfcdde714220812d874952c5ffdd5b4edde6f97db60713e6c761c409b`  
		Last Modified: Wed, 11 Oct 2017 01:46:38 GMT  
		Size: 24.1 MB (24053206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791f630ba49f3ca705e05e4b52b5c1f00cbff0ff2fb303054a49bd84ac00cbe2`  
		Last Modified: Wed, 11 Oct 2017 01:46:31 GMT  
		Size: 677.1 KB (677100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3a79ee797c15a091cd97c94f75526da32df0a1c1ec9cd7413d2fdcb0cb9151`  
		Last Modified: Wed, 11 Oct 2017 01:46:31 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cbd3e9e29404c4248a580b44cbc8162692483275bc5d82671b84399b5ce1f0`  
		Last Modified: Wed, 11 Oct 2017 03:35:35 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d129d096c85b59802022a1d3d260de3bf2544fd2fb4fda39c028b245cce6fa`  
		Last Modified: Wed, 11 Oct 2017 03:35:37 GMT  
		Size: 14.7 MB (14720592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3b8b0691e9ea91faed65a1d163e1902c061949b82ae71ae826342d82c115f3`  
		Last Modified: Wed, 11 Oct 2017 03:35:33 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e4ae9d7203cdc1920d24a0a12e39e64f341b60d7bb740e83084eaf974c115d`  
		Last Modified: Wed, 11 Oct 2017 03:35:32 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7472876c70b72868c2d96b29ad49fbc783e2adc3620f18cc63f742df37bf92a8`  
		Last Modified: Wed, 11 Oct 2017 03:35:44 GMT  
		Size: 58.1 MB (58106229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55f40a9c82fbf572f7545d698c933e23b75f7eb2b38b212e9c416b3499310b9`  
		Last Modified: Wed, 11 Oct 2017 03:35:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c746a8790697b6f6b430ae7a1bd32be6ec98e02027c0e9e92cde8aafe13d36`  
		Last Modified: Wed, 11 Oct 2017 03:35:30 GMT  
		Size: 2.4 MB (2448730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5276c9304a4a5add78b6e706b7210d4e3f416d7de9d5c3b1fb95b4ecac9c1eb`  
		Last Modified: Wed, 11 Oct 2017 03:35:46 GMT  
		Size: 77.3 MB (77295737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa79eadd0a47054320768c1a9f38b979833704909a16cf6478e4680ad49a96f5`  
		Last Modified: Wed, 11 Oct 2017 03:35:29 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:2ed2199c4481388703483205c431b4fa2fa6a4d660db7002b9fe30800cdd5c59
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243884418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da36dcb8156821235fb003005c64da6455877806ffcef3dabd0a648b52504d3c`
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
# Wed, 11 Oct 2017 09:14:17 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 09:14:17 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 09:14:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 09:16:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 09:16:44 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 09:16:44 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 09:16:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 09:16:45 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 09:16:45 GMT
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
	-	`sha256:5dc25176fb28e99a8598aa266e8172d4d41cd1c2b2ecde91e47ddbf5d19bb5e7`  
		Last Modified: Wed, 11 Oct 2017 09:23:01 GMT  
		Size: 2.4 MB (2448153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0a69e497d2b804c9986fff8aec4a28f357f86fbfc66fb36b83ac2ed3d2292`  
		Last Modified: Wed, 11 Oct 2017 09:23:12 GMT  
		Size: 79.6 MB (79602805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3fe4493b722131c3ce4bd30a6b82cb0abd9d0b5da3737774d8cf4cf2a453cb`  
		Last Modified: Wed, 11 Oct 2017 09:23:01 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:45b9a5da8d9922f35e40e83c3ab3d52a74dc91174b7eac2dd9b87134601612ed
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
$ docker pull redmine@sha256:d38192bd55a61bae97841f4e6061e574c89b34491a20c3946cbd6abe5d63e3b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252186436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebe09d4877e5f426c2d36810c631e4af5a77c273d87fe79b7d4900807663e37`
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
# Tue, 10 Oct 2017 21:13:49 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 21:13:49 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 21:13:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:16:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:16:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:16:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:16:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:16:14 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:16:14 GMT
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
	-	`sha256:90a8e4574de69c6cbc787afcaeb530ce002a1d28e38978e71d4c1cfd53e3dc61`  
		Last Modified: Tue, 10 Oct 2017 21:20:02 GMT  
		Size: 2.3 MB (2347108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336b162e437eced249917629c9a49a358331629518ff4c2a409a1cfcb6985124`  
		Last Modified: Tue, 10 Oct 2017 21:20:18 GMT  
		Size: 77.8 MB (77822430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0cd89847dc0b1dd2eecea936b2d3c5b19b0cf240e1128b5fcc231330962fcb`  
		Last Modified: Tue, 10 Oct 2017 21:20:01 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v5

```console
$ docker pull redmine@sha256:9a9dc5861f1b050e7fbad7656da7a91b61285fa3f779167fcb24fdc4e3f88910
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244618200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83ac06431ae22ef534d0ba5164c6d15f68c72942226b9242e048fe419f4becf`
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
# Wed, 11 Oct 2017 02:36:17 GMT
ENV REDMINE_VERSION=3.2.7
# Wed, 11 Oct 2017 02:36:17 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Wed, 11 Oct 2017 02:36:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:40:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:40:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:40:40 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:40:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:40:41 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:40:41 GMT
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
	-	`sha256:853df5af3d407196611f52540e4e4d4dd272dc620bd4cad2d8b178d40a0a83f8`  
		Last Modified: Wed, 11 Oct 2017 02:42:18 GMT  
		Size: 2.3 MB (2347477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401f8908861564d8a19a88ee254d217dd6dc79b0ce5660154ff496be69cb65f`  
		Last Modified: Wed, 11 Oct 2017 02:42:35 GMT  
		Size: 77.0 MB (77041683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989099f458e93502adbd9069f924b1cdb1c5d76a388d49e2b943616d1488999e`  
		Last Modified: Wed, 11 Oct 2017 02:42:17 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:95f01bf089276a063e4b619be68f41f8af0c3179f6e595998e6721484da8d4c5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238797095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551a24077a5f970b499cd52a54eb1926fde58143f64108e099bf22043e25b778`
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
# Wed, 11 Oct 2017 01:45:41 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:49:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:49:45 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:49:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:49:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:49:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:49:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:49:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:49:49 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:18:39 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:19:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:19:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:19:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:19:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:20:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:20:05 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:20:06 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:24:40 GMT
ENV REDMINE_VERSION=3.2.7
# Wed, 11 Oct 2017 02:24:40 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Wed, 11 Oct 2017 02:24:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:28:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:28:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:28:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:28:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:28:49 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:28:50 GMT
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
	-	`sha256:17b729b3033f7a2c8f6046da0e2022092043398b3584636179e1cd3c7697b3f8`  
		Last Modified: Wed, 11 Oct 2017 01:56:34 GMT  
		Size: 32.9 MB (32904389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b86ec1fb988bc558d7c3886945c2c5c7d8dd7f9ad8023498b0950ae481b0d29`  
		Last Modified: Wed, 11 Oct 2017 01:56:22 GMT  
		Size: 677.1 KB (677066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3722a51794b3abb3378a91c2a28d964d56700abf1479ad58813e642e31798d4b`  
		Last Modified: Wed, 11 Oct 2017 01:56:22 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb6cdf9df01afad7c73a7f8f7450281db845d363f0ca872f7d461680f5d23c3`  
		Last Modified: Wed, 11 Oct 2017 02:29:57 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e36bccf8febb8096748c08c5bb3811945e34ba04b5f5f55ef049488c78e11e`  
		Last Modified: Wed, 11 Oct 2017 02:30:01 GMT  
		Size: 14.1 MB (14134417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e06fccd8be3a135d44f1944622688a296afc75989854e029240f427a1bba51`  
		Last Modified: Wed, 11 Oct 2017 02:29:56 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33f5b168ccf67f949f3dcec0d23d1164811f7ced85a09808fc2a58e199e7c10`  
		Last Modified: Wed, 11 Oct 2017 02:29:56 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c5ad81a22478d93ed668dbcebe90e369c85dec2bb37805e4d9a2dc162cc516`  
		Last Modified: Wed, 11 Oct 2017 02:30:11 GMT  
		Size: 54.3 MB (54317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02222b7be1e651f6cc987f99e0abd9a8406761a4cb5762bb12dbc613e85a5831`  
		Last Modified: Wed, 11 Oct 2017 02:29:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50aca51631c5048a90f3f0d54a271955bae4075e79ce6f957f631bc5b2f3b3f7`  
		Last Modified: Wed, 11 Oct 2017 02:30:30 GMT  
		Size: 2.3 MB (2347480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baffee966185d5ef6ea487a5d78085fe2d85e09fbebd4d90548477141b9d652d`  
		Last Modified: Wed, 11 Oct 2017 02:30:56 GMT  
		Size: 76.5 MB (76481901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27889289e21388c706f6cec7c776cbc39f2580c4c71c25252d9d21d8cd26503`  
		Last Modified: Wed, 11 Oct 2017 02:30:28 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:e01abe262447db1f220f3d0620acf56f97e80021ef999264fe8a51ab3031ab07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244426703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73b19f09bce07d8c291a72c598b181495e9bb51960c597e414064be1d3723538`
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
# Tue, 10 Oct 2017 21:36:57 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 21:44:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 21:44:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 21:44:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 21:44:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 21:44:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 21:44:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 21:44:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 21:44:39 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 22:28:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 22:28:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:28:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 22:28:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 22:28:59 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 22:29:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 22:31:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:31:09 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 22:31:10 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 22:42:55 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 22:42:56 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 22:43:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 22:52:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 22:52:50 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 22:52:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 22:52:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 22:52:53 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 22:52:54 GMT
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
	-	`sha256:94b1099ed58b79cd01ca9b5e152b63a6c5040fb21b6b3b9de89ec0cb9ef04be7`  
		Last Modified: Tue, 10 Oct 2017 21:58:32 GMT  
		Size: 34.3 MB (34326478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f883678c81de87d41105a50c89b6a0d44395fb7cbb4554bcbeb3b756b525d44e`  
		Last Modified: Tue, 10 Oct 2017 21:58:17 GMT  
		Size: 677.0 KB (677049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e2919157cb15d15c12c15f06ccd087693eead11c5f11cc46ad944905e9ac7a`  
		Last Modified: Tue, 10 Oct 2017 21:58:16 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded11e08824cc9c566f9b4c0a4913fa55e8ee75da62df4a47cdee401754a6d47`  
		Last Modified: Tue, 10 Oct 2017 22:55:30 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daaf01fec0a2c161a153c8738c117aa718547d309d1d45d14eb2cb917f709fa`  
		Last Modified: Tue, 10 Oct 2017 22:55:35 GMT  
		Size: 14.5 MB (14462480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fddac2b70124d47b60f1370227627d8b0596b1f266c0616d7db7c1b43207ae3`  
		Last Modified: Tue, 10 Oct 2017 22:55:29 GMT  
		Size: 468.7 KB (468692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61514e761168826f94a679fea47754962d25ad66c8c4c390da7202ae12bf267c`  
		Last Modified: Tue, 10 Oct 2017 22:55:28 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a2fb3d6f3dbf42b8d10cd0e6ce6f9448ed5673750c5dba6bb030cf84128775`  
		Last Modified: Tue, 10 Oct 2017 22:56:11 GMT  
		Size: 55.8 MB (55772167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de134586d07ed9fb3c7b98bf707d50f282e43abf44fdb811392bae6322121b3a`  
		Last Modified: Tue, 10 Oct 2017 22:55:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3905448ad89ac0f6ff48adc7468bc3fb3a9224b5ab531b28d437dc028064b`  
		Last Modified: Tue, 10 Oct 2017 22:56:41 GMT  
		Size: 2.3 MB (2347111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d4a3fd3ba34e0aa61596697bac584bd757570a72d9ac6b37843c6e8c252ee2`  
		Last Modified: Tue, 10 Oct 2017 22:57:04 GMT  
		Size: 77.1 MB (77098091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add9f33c080201936923912fec4147b4f239b2c430cd4b28041841b043684fa`  
		Last Modified: Tue, 10 Oct 2017 22:56:40 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; 386

```console
$ docker pull redmine@sha256:363fd757e2194ee45a3f24a53f4b593a19f7da68e5217a8ed9027e3399d9150a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254626497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:503d9fafec3cf88850dbd66ecfa0cad21b1e0595420cb45d775a028158c758b0`
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
# Wed, 11 Oct 2017 03:09:21 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 03:12:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 03:12:58 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 03:13:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 03:13:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 03:13:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 03:13:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 03:13:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 03:13:01 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 03:50:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 03:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:50:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 03:50:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 03:50:40 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 03:50:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 03:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:51:40 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 03:51:41 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 03:59:05 GMT
ENV REDMINE_VERSION=3.2.7
# Wed, 11 Oct 2017 03:59:05 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Wed, 11 Oct 2017 03:59:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 04:02:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 04:06:09 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 04:06:10 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 04:06:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 04:06:10 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 04:06:10 GMT
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
	-	`sha256:a3780c907ce2c756c057e20a2b3c2ffe3dfde018aed75b905e50dd34874c6fb1`  
		Last Modified: Wed, 11 Oct 2017 03:21:19 GMT  
		Size: 31.7 MB (31665970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1f9706abea300e7a8484a192bf4fb1bfeb5d61d618c83a35440c0c885af38b`  
		Last Modified: Wed, 11 Oct 2017 03:21:12 GMT  
		Size: 677.1 KB (677055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df18f573e98ae02723005e75467402278dc37087331d68b2aacc487648628fa9`  
		Last Modified: Wed, 11 Oct 2017 03:21:12 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057fd1095bb97e732a7a3224f31b1a048590efca975a5623dbf8df0a36e6e587`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f4014f40e7f4aab62a69b9f47365a370a86b3f1f32e6f59d49b88f58296da1`  
		Last Modified: Wed, 11 Oct 2017 04:12:03 GMT  
		Size: 14.8 MB (14817258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e929e421c171a30b2fc052e415b4d565da1b0b21c2ff7b26f5ea8766cc8affb`  
		Last Modified: Wed, 11 Oct 2017 04:11:59 GMT  
		Size: 480.6 KB (480564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f1be3131b9c2562707c5133c4b99465aa32d9f3672037324e27efdace5fcd2`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 8.6 KB (8563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa6af2ff0f784c3af2d4638b41c4456a37a450e8367cc0c83976f0fe55d542`  
		Last Modified: Wed, 11 Oct 2017 04:12:19 GMT  
		Size: 60.1 MB (60115861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b484568a1af10ed4587f4273e0c515f90c464ef820784742925f9a268647662f`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a845959cf2e6cdd6d29c1f82a16eb17a6b8e293b40214920d9c0910fc63711b1`  
		Last Modified: Wed, 11 Oct 2017 04:16:32 GMT  
		Size: 2.3 MB (2347106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d20fd71f55b114f8935f147159d4d4e3a5d340af397b9838464172b321c1d7`  
		Last Modified: Wed, 11 Oct 2017 04:16:45 GMT  
		Size: 77.1 MB (77108405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f912fc6f2726fdd05d455378ff77a0431577b802da5b48a74d124292547a56`  
		Last Modified: Wed, 11 Oct 2017 04:16:30 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:88cd47891101fc71eeccb193f88a92ce68c37288a35891de224aa0b4b4c557aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251466960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f290372a8d60178be64c54f81df0eaf121a6da3604a17cbbf80f0d38e8b714`
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
# Wed, 11 Oct 2017 01:29:34 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:43:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:43:10 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:43:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:43:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:43:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:43:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:43:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:43:34 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:36:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:37:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:37:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:37:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:37:22 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:37:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:45:11 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:45:14 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 03:08:29 GMT
ENV REDMINE_VERSION=3.2.7
# Wed, 11 Oct 2017 03:08:33 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Wed, 11 Oct 2017 03:08:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 03:34:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 03:34:51 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 03:34:54 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 03:34:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 03:35:05 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 03:35:09 GMT
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
	-	`sha256:91e6527e559e528bff7bcd73bbb1c45066fd7e74b6afa9be117e5c189f65c219`  
		Last Modified: Wed, 11 Oct 2017 01:50:04 GMT  
		Size: 35.2 MB (35211161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e06be32f60c0e95591916a180193b2ba88b142261c6c73877e408b9110093d4`  
		Last Modified: Wed, 11 Oct 2017 01:49:53 GMT  
		Size: 677.1 KB (677067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb6fd2f1bf8f7feee3d288e7b7ebfa82a0401a175978e54ef61635efb5c503f`  
		Last Modified: Wed, 11 Oct 2017 01:49:53 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa9de44aa453301c918c29eeb369674d24838e52b1a079d2bca479453cb2255`  
		Last Modified: Wed, 11 Oct 2017 03:36:18 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09c7734f92ca08e58395321bfb65f4c9318c34599f153175d82e12eb7b0cee7`  
		Last Modified: Wed, 11 Oct 2017 03:36:21 GMT  
		Size: 14.7 MB (14720609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3feb7e20496f614583f6f70059dc2a347014d1327a7176ca7219f836c482966`  
		Last Modified: Wed, 11 Oct 2017 03:36:17 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29266d4fc00bb77766cbf12cc9d9fb84761489966a29529be770cd3a0b10fa8e`  
		Last Modified: Wed, 11 Oct 2017 03:36:16 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ec3f4350f6e07892ab8524df5044320efed5a37b8cf841d6109a8324f6611c`  
		Last Modified: Wed, 11 Oct 2017 03:36:31 GMT  
		Size: 58.1 MB (58106203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a3edbdf6dda2488cdd8db8a103cef20145d7724b1751bccba4b333cf6b5c3c`  
		Last Modified: Wed, 11 Oct 2017 03:36:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529847db0e2357b8d7df9e9b788e5f90c8c7c63fad885acde289e91d86d97cd4`  
		Last Modified: Wed, 11 Oct 2017 03:36:49 GMT  
		Size: 2.3 MB (2347480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5d936ba82b875c51e756e6c2a8ad2b7d03aa825b8ac2f55d87cf38a09940e0`  
		Last Modified: Wed, 11 Oct 2017 03:37:04 GMT  
		Size: 78.0 MB (77978811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f048560e01c52d711c3f120b88538c69423271356283a81d635acc890b1ece7b`  
		Last Modified: Wed, 11 Oct 2017 03:36:48 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; s390x

```console
$ docker pull redmine@sha256:1983bdb50148a3508df5bbef708731125e50a02033890ab6445bcab54583ed50
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258268349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d4ca0085bd6fe32569d26c1610dd68cb8a0d6c56e361100fffc23539f4353e`
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
# Wed, 11 Oct 2017 09:20:19 GMT
ENV REDMINE_VERSION=3.2.7
# Wed, 11 Oct 2017 09:20:20 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Wed, 11 Oct 2017 09:20:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 09:22:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 09:22:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 09:22:40 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 09:22:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 09:22:41 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 09:22:41 GMT
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
	-	`sha256:a938bdf34a229fda739aa58154d2776b6cf57ac0de924763dc4d2b3e3da999f7`  
		Last Modified: Wed, 11 Oct 2017 09:24:26 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebe2f21322b7eda0fb1a3511e3a5c44183226e44ecad319d59d9639b7a26361`  
		Last Modified: Wed, 11 Oct 2017 09:24:37 GMT  
		Size: 80.2 MB (80226677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c1c8c2cd92771747e44fd93b6fe61080744051d9cd82643f9b2fcfc4e87c99`  
		Last Modified: Wed, 11 Oct 2017 09:24:25 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7`

```console
$ docker pull redmine@sha256:45b9a5da8d9922f35e40e83c3ab3d52a74dc91174b7eac2dd9b87134601612ed
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

### `redmine:3.2.7` - linux; amd64

```console
$ docker pull redmine@sha256:d38192bd55a61bae97841f4e6061e574c89b34491a20c3946cbd6abe5d63e3b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252186436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebe09d4877e5f426c2d36810c631e4af5a77c273d87fe79b7d4900807663e37`
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
# Tue, 10 Oct 2017 21:13:49 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 21:13:49 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 21:13:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:16:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:16:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:16:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:16:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:16:14 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:16:14 GMT
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
	-	`sha256:90a8e4574de69c6cbc787afcaeb530ce002a1d28e38978e71d4c1cfd53e3dc61`  
		Last Modified: Tue, 10 Oct 2017 21:20:02 GMT  
		Size: 2.3 MB (2347108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336b162e437eced249917629c9a49a358331629518ff4c2a409a1cfcb6985124`  
		Last Modified: Tue, 10 Oct 2017 21:20:18 GMT  
		Size: 77.8 MB (77822430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0cd89847dc0b1dd2eecea936b2d3c5b19b0cf240e1128b5fcc231330962fcb`  
		Last Modified: Tue, 10 Oct 2017 21:20:01 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; arm variant v5

```console
$ docker pull redmine@sha256:9a9dc5861f1b050e7fbad7656da7a91b61285fa3f779167fcb24fdc4e3f88910
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244618200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83ac06431ae22ef534d0ba5164c6d15f68c72942226b9242e048fe419f4becf`
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
# Wed, 11 Oct 2017 02:36:17 GMT
ENV REDMINE_VERSION=3.2.7
# Wed, 11 Oct 2017 02:36:17 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Wed, 11 Oct 2017 02:36:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:40:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:40:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:40:40 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:40:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:40:41 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:40:41 GMT
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
	-	`sha256:853df5af3d407196611f52540e4e4d4dd272dc620bd4cad2d8b178d40a0a83f8`  
		Last Modified: Wed, 11 Oct 2017 02:42:18 GMT  
		Size: 2.3 MB (2347477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401f8908861564d8a19a88ee254d217dd6dc79b0ce5660154ff496be69cb65f`  
		Last Modified: Wed, 11 Oct 2017 02:42:35 GMT  
		Size: 77.0 MB (77041683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989099f458e93502adbd9069f924b1cdb1c5d76a388d49e2b943616d1488999e`  
		Last Modified: Wed, 11 Oct 2017 02:42:17 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; arm variant v7

```console
$ docker pull redmine@sha256:95f01bf089276a063e4b619be68f41f8af0c3179f6e595998e6721484da8d4c5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238797095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551a24077a5f970b499cd52a54eb1926fde58143f64108e099bf22043e25b778`
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
# Wed, 11 Oct 2017 01:45:41 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:49:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:49:45 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:49:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:49:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:49:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:49:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:49:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:49:49 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:18:39 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:19:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:19:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:19:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:19:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:20:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:20:05 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:20:06 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:24:40 GMT
ENV REDMINE_VERSION=3.2.7
# Wed, 11 Oct 2017 02:24:40 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Wed, 11 Oct 2017 02:24:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:28:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:28:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:28:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:28:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:28:49 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:28:50 GMT
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
	-	`sha256:17b729b3033f7a2c8f6046da0e2022092043398b3584636179e1cd3c7697b3f8`  
		Last Modified: Wed, 11 Oct 2017 01:56:34 GMT  
		Size: 32.9 MB (32904389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b86ec1fb988bc558d7c3886945c2c5c7d8dd7f9ad8023498b0950ae481b0d29`  
		Last Modified: Wed, 11 Oct 2017 01:56:22 GMT  
		Size: 677.1 KB (677066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3722a51794b3abb3378a91c2a28d964d56700abf1479ad58813e642e31798d4b`  
		Last Modified: Wed, 11 Oct 2017 01:56:22 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb6cdf9df01afad7c73a7f8f7450281db845d363f0ca872f7d461680f5d23c3`  
		Last Modified: Wed, 11 Oct 2017 02:29:57 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e36bccf8febb8096748c08c5bb3811945e34ba04b5f5f55ef049488c78e11e`  
		Last Modified: Wed, 11 Oct 2017 02:30:01 GMT  
		Size: 14.1 MB (14134417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e06fccd8be3a135d44f1944622688a296afc75989854e029240f427a1bba51`  
		Last Modified: Wed, 11 Oct 2017 02:29:56 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33f5b168ccf67f949f3dcec0d23d1164811f7ced85a09808fc2a58e199e7c10`  
		Last Modified: Wed, 11 Oct 2017 02:29:56 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c5ad81a22478d93ed668dbcebe90e369c85dec2bb37805e4d9a2dc162cc516`  
		Last Modified: Wed, 11 Oct 2017 02:30:11 GMT  
		Size: 54.3 MB (54317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02222b7be1e651f6cc987f99e0abd9a8406761a4cb5762bb12dbc613e85a5831`  
		Last Modified: Wed, 11 Oct 2017 02:29:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50aca51631c5048a90f3f0d54a271955bae4075e79ce6f957f631bc5b2f3b3f7`  
		Last Modified: Wed, 11 Oct 2017 02:30:30 GMT  
		Size: 2.3 MB (2347480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baffee966185d5ef6ea487a5d78085fe2d85e09fbebd4d90548477141b9d652d`  
		Last Modified: Wed, 11 Oct 2017 02:30:56 GMT  
		Size: 76.5 MB (76481901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27889289e21388c706f6cec7c776cbc39f2580c4c71c25252d9d21d8cd26503`  
		Last Modified: Wed, 11 Oct 2017 02:30:28 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:e01abe262447db1f220f3d0620acf56f97e80021ef999264fe8a51ab3031ab07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244426703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73b19f09bce07d8c291a72c598b181495e9bb51960c597e414064be1d3723538`
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
# Tue, 10 Oct 2017 21:36:57 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 21:44:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 21:44:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 21:44:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 21:44:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 21:44:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 21:44:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 21:44:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 21:44:39 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 22:28:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 22:28:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:28:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 22:28:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 22:28:59 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 22:29:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 22:31:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:31:09 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 22:31:10 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 22:42:55 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 22:42:56 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 22:43:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 22:52:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 22:52:50 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 22:52:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 22:52:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 22:52:53 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 22:52:54 GMT
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
	-	`sha256:94b1099ed58b79cd01ca9b5e152b63a6c5040fb21b6b3b9de89ec0cb9ef04be7`  
		Last Modified: Tue, 10 Oct 2017 21:58:32 GMT  
		Size: 34.3 MB (34326478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f883678c81de87d41105a50c89b6a0d44395fb7cbb4554bcbeb3b756b525d44e`  
		Last Modified: Tue, 10 Oct 2017 21:58:17 GMT  
		Size: 677.0 KB (677049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e2919157cb15d15c12c15f06ccd087693eead11c5f11cc46ad944905e9ac7a`  
		Last Modified: Tue, 10 Oct 2017 21:58:16 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded11e08824cc9c566f9b4c0a4913fa55e8ee75da62df4a47cdee401754a6d47`  
		Last Modified: Tue, 10 Oct 2017 22:55:30 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daaf01fec0a2c161a153c8738c117aa718547d309d1d45d14eb2cb917f709fa`  
		Last Modified: Tue, 10 Oct 2017 22:55:35 GMT  
		Size: 14.5 MB (14462480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fddac2b70124d47b60f1370227627d8b0596b1f266c0616d7db7c1b43207ae3`  
		Last Modified: Tue, 10 Oct 2017 22:55:29 GMT  
		Size: 468.7 KB (468692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61514e761168826f94a679fea47754962d25ad66c8c4c390da7202ae12bf267c`  
		Last Modified: Tue, 10 Oct 2017 22:55:28 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a2fb3d6f3dbf42b8d10cd0e6ce6f9448ed5673750c5dba6bb030cf84128775`  
		Last Modified: Tue, 10 Oct 2017 22:56:11 GMT  
		Size: 55.8 MB (55772167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de134586d07ed9fb3c7b98bf707d50f282e43abf44fdb811392bae6322121b3a`  
		Last Modified: Tue, 10 Oct 2017 22:55:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3905448ad89ac0f6ff48adc7468bc3fb3a9224b5ab531b28d437dc028064b`  
		Last Modified: Tue, 10 Oct 2017 22:56:41 GMT  
		Size: 2.3 MB (2347111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d4a3fd3ba34e0aa61596697bac584bd757570a72d9ac6b37843c6e8c252ee2`  
		Last Modified: Tue, 10 Oct 2017 22:57:04 GMT  
		Size: 77.1 MB (77098091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add9f33c080201936923912fec4147b4f239b2c430cd4b28041841b043684fa`  
		Last Modified: Tue, 10 Oct 2017 22:56:40 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; 386

```console
$ docker pull redmine@sha256:363fd757e2194ee45a3f24a53f4b593a19f7da68e5217a8ed9027e3399d9150a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254626497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:503d9fafec3cf88850dbd66ecfa0cad21b1e0595420cb45d775a028158c758b0`
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
# Wed, 11 Oct 2017 03:09:21 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 03:12:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 03:12:58 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 03:13:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 03:13:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 03:13:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 03:13:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 03:13:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 03:13:01 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 03:50:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 03:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:50:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 03:50:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 03:50:40 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 03:50:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 03:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:51:40 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 03:51:41 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 03:59:05 GMT
ENV REDMINE_VERSION=3.2.7
# Wed, 11 Oct 2017 03:59:05 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Wed, 11 Oct 2017 03:59:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 04:02:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 04:06:09 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 04:06:10 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 04:06:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 04:06:10 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 04:06:10 GMT
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
	-	`sha256:a3780c907ce2c756c057e20a2b3c2ffe3dfde018aed75b905e50dd34874c6fb1`  
		Last Modified: Wed, 11 Oct 2017 03:21:19 GMT  
		Size: 31.7 MB (31665970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1f9706abea300e7a8484a192bf4fb1bfeb5d61d618c83a35440c0c885af38b`  
		Last Modified: Wed, 11 Oct 2017 03:21:12 GMT  
		Size: 677.1 KB (677055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df18f573e98ae02723005e75467402278dc37087331d68b2aacc487648628fa9`  
		Last Modified: Wed, 11 Oct 2017 03:21:12 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057fd1095bb97e732a7a3224f31b1a048590efca975a5623dbf8df0a36e6e587`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f4014f40e7f4aab62a69b9f47365a370a86b3f1f32e6f59d49b88f58296da1`  
		Last Modified: Wed, 11 Oct 2017 04:12:03 GMT  
		Size: 14.8 MB (14817258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e929e421c171a30b2fc052e415b4d565da1b0b21c2ff7b26f5ea8766cc8affb`  
		Last Modified: Wed, 11 Oct 2017 04:11:59 GMT  
		Size: 480.6 KB (480564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f1be3131b9c2562707c5133c4b99465aa32d9f3672037324e27efdace5fcd2`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 8.6 KB (8563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa6af2ff0f784c3af2d4638b41c4456a37a450e8367cc0c83976f0fe55d542`  
		Last Modified: Wed, 11 Oct 2017 04:12:19 GMT  
		Size: 60.1 MB (60115861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b484568a1af10ed4587f4273e0c515f90c464ef820784742925f9a268647662f`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a845959cf2e6cdd6d29c1f82a16eb17a6b8e293b40214920d9c0910fc63711b1`  
		Last Modified: Wed, 11 Oct 2017 04:16:32 GMT  
		Size: 2.3 MB (2347106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d20fd71f55b114f8935f147159d4d4e3a5d340af397b9838464172b321c1d7`  
		Last Modified: Wed, 11 Oct 2017 04:16:45 GMT  
		Size: 77.1 MB (77108405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f912fc6f2726fdd05d455378ff77a0431577b802da5b48a74d124292547a56`  
		Last Modified: Wed, 11 Oct 2017 04:16:30 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; ppc64le

```console
$ docker pull redmine@sha256:88cd47891101fc71eeccb193f88a92ce68c37288a35891de224aa0b4b4c557aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251466960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f290372a8d60178be64c54f81df0eaf121a6da3604a17cbbf80f0d38e8b714`
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
# Wed, 11 Oct 2017 01:29:34 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:43:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:43:10 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:43:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:43:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:43:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:43:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:43:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:43:34 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:36:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:37:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:37:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:37:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:37:22 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:37:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:45:11 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:45:14 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 03:08:29 GMT
ENV REDMINE_VERSION=3.2.7
# Wed, 11 Oct 2017 03:08:33 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Wed, 11 Oct 2017 03:08:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 03:34:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 03:34:51 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 03:34:54 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 03:34:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 03:35:05 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 03:35:09 GMT
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
	-	`sha256:91e6527e559e528bff7bcd73bbb1c45066fd7e74b6afa9be117e5c189f65c219`  
		Last Modified: Wed, 11 Oct 2017 01:50:04 GMT  
		Size: 35.2 MB (35211161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e06be32f60c0e95591916a180193b2ba88b142261c6c73877e408b9110093d4`  
		Last Modified: Wed, 11 Oct 2017 01:49:53 GMT  
		Size: 677.1 KB (677067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb6fd2f1bf8f7feee3d288e7b7ebfa82a0401a175978e54ef61635efb5c503f`  
		Last Modified: Wed, 11 Oct 2017 01:49:53 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa9de44aa453301c918c29eeb369674d24838e52b1a079d2bca479453cb2255`  
		Last Modified: Wed, 11 Oct 2017 03:36:18 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09c7734f92ca08e58395321bfb65f4c9318c34599f153175d82e12eb7b0cee7`  
		Last Modified: Wed, 11 Oct 2017 03:36:21 GMT  
		Size: 14.7 MB (14720609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3feb7e20496f614583f6f70059dc2a347014d1327a7176ca7219f836c482966`  
		Last Modified: Wed, 11 Oct 2017 03:36:17 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29266d4fc00bb77766cbf12cc9d9fb84761489966a29529be770cd3a0b10fa8e`  
		Last Modified: Wed, 11 Oct 2017 03:36:16 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ec3f4350f6e07892ab8524df5044320efed5a37b8cf841d6109a8324f6611c`  
		Last Modified: Wed, 11 Oct 2017 03:36:31 GMT  
		Size: 58.1 MB (58106203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a3edbdf6dda2488cdd8db8a103cef20145d7724b1751bccba4b333cf6b5c3c`  
		Last Modified: Wed, 11 Oct 2017 03:36:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529847db0e2357b8d7df9e9b788e5f90c8c7c63fad885acde289e91d86d97cd4`  
		Last Modified: Wed, 11 Oct 2017 03:36:49 GMT  
		Size: 2.3 MB (2347480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5d936ba82b875c51e756e6c2a8ad2b7d03aa825b8ac2f55d87cf38a09940e0`  
		Last Modified: Wed, 11 Oct 2017 03:37:04 GMT  
		Size: 78.0 MB (77978811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f048560e01c52d711c3f120b88538c69423271356283a81d635acc890b1ece7b`  
		Last Modified: Wed, 11 Oct 2017 03:36:48 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; s390x

```console
$ docker pull redmine@sha256:1983bdb50148a3508df5bbef708731125e50a02033890ab6445bcab54583ed50
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258268349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d4ca0085bd6fe32569d26c1610dd68cb8a0d6c56e361100fffc23539f4353e`
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
# Wed, 11 Oct 2017 09:20:19 GMT
ENV REDMINE_VERSION=3.2.7
# Wed, 11 Oct 2017 09:20:20 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Wed, 11 Oct 2017 09:20:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 09:22:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 09:22:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 09:22:40 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 09:22:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 09:22:41 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 09:22:41 GMT
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
	-	`sha256:a938bdf34a229fda739aa58154d2776b6cf57ac0de924763dc4d2b3e3da999f7`  
		Last Modified: Wed, 11 Oct 2017 09:24:26 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebe2f21322b7eda0fb1a3511e3a5c44183226e44ecad319d59d9639b7a26361`  
		Last Modified: Wed, 11 Oct 2017 09:24:37 GMT  
		Size: 80.2 MB (80226677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c1c8c2cd92771747e44fd93b6fe61080744051d9cd82643f9b2fcfc4e87c99`  
		Last Modified: Wed, 11 Oct 2017 09:24:25 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7-passenger`

```console
$ docker pull redmine@sha256:b291971017d860e84f6d520cc8382d497a40728549f12733eeac8a7beee67e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.7-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:85c7a2003327504c9c724b980fcefac0ed8c8ce4688fbadf70e2ac431198229c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271388645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f1c4855398c913b037d2f31385b1078b4b6735635918a21d5126c9a7a3223e`
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
# Tue, 10 Oct 2017 21:13:49 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 21:13:49 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 21:13:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:16:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:16:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:16:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:16:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:16:14 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:16:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 21:16:33 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 21:16:59 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:17:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 21:17:01 GMT
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
	-	`sha256:90a8e4574de69c6cbc787afcaeb530ce002a1d28e38978e71d4c1cfd53e3dc61`  
		Last Modified: Tue, 10 Oct 2017 21:20:02 GMT  
		Size: 2.3 MB (2347108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336b162e437eced249917629c9a49a358331629518ff4c2a409a1cfcb6985124`  
		Last Modified: Tue, 10 Oct 2017 21:20:18 GMT  
		Size: 77.8 MB (77822430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0cd89847dc0b1dd2eecea936b2d3c5b19b0cf240e1128b5fcc231330962fcb`  
		Last Modified: Tue, 10 Oct 2017 21:20:01 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a475aaefbc868da2ac39bfaaf4d8fbe9b2d62e8be163b0b3d8756ea0e39dd728`  
		Last Modified: Tue, 10 Oct 2017 21:22:16 GMT  
		Size: 14.9 MB (14928280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7ae777fcb9676949e025606f709a2c5b80810aac358f811f717eccdb6191ac`  
		Last Modified: Tue, 10 Oct 2017 21:22:13 GMT  
		Size: 4.3 MB (4273929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:b291971017d860e84f6d520cc8382d497a40728549f12733eeac8a7beee67e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:85c7a2003327504c9c724b980fcefac0ed8c8ce4688fbadf70e2ac431198229c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271388645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f1c4855398c913b037d2f31385b1078b4b6735635918a21d5126c9a7a3223e`
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
# Tue, 10 Oct 2017 21:13:49 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 21:13:49 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 21:13:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:16:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:16:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:16:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:16:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:16:14 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:16:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 21:16:33 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 21:16:59 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:17:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 21:17:01 GMT
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
	-	`sha256:90a8e4574de69c6cbc787afcaeb530ce002a1d28e38978e71d4c1cfd53e3dc61`  
		Last Modified: Tue, 10 Oct 2017 21:20:02 GMT  
		Size: 2.3 MB (2347108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336b162e437eced249917629c9a49a358331629518ff4c2a409a1cfcb6985124`  
		Last Modified: Tue, 10 Oct 2017 21:20:18 GMT  
		Size: 77.8 MB (77822430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0cd89847dc0b1dd2eecea936b2d3c5b19b0cf240e1128b5fcc231330962fcb`  
		Last Modified: Tue, 10 Oct 2017 21:20:01 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a475aaefbc868da2ac39bfaaf4d8fbe9b2d62e8be163b0b3d8756ea0e39dd728`  
		Last Modified: Tue, 10 Oct 2017 21:22:16 GMT  
		Size: 14.9 MB (14928280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7ae777fcb9676949e025606f709a2c5b80810aac358f811f717eccdb6191ac`  
		Last Modified: Tue, 10 Oct 2017 21:22:13 GMT  
		Size: 4.3 MB (4273929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:c8699a66fb5ad35179ce149f4d55e52f4fc4e4d84fa5f3962cffc69ff47dd310
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
$ docker pull redmine@sha256:bbfcede63b836fddf807c66bf176ad05979af7e770672c23a9c2132500ad52a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252230237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab096bab0bf335f142d1fd5e4ec25768986fde6ef07683fc858475e11b40207`
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
# Tue, 10 Oct 2017 21:10:45 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 21:10:45 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 21:10:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:13:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:13:06 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:13:06 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:13:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:13:07 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:13:07 GMT
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
	-	`sha256:89aa45a86b4bb93eda27656f65b8f2e848aa820f5280f30fdabb324af1e02cf3`  
		Last Modified: Tue, 10 Oct 2017 21:19:05 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c596e028b7596ea60c55a4e558b2d0680648ba7147b86b9fd865b47d25b064`  
		Last Modified: Tue, 10 Oct 2017 21:19:16 GMT  
		Size: 77.8 MB (77823029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa7d1246377f0591e90f22fd5da9b56f1127c739d8273c69f3d966a488a7092`  
		Last Modified: Tue, 10 Oct 2017 21:19:04 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:e8c0a46b885d9bfdea257eb24127cff5b483681e43b21c13a011a978718c4442
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244661692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01260601ab2d0dbbc9a434e9b348ce950ce1a19c3352e388889ef8ebd3f223ef`
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
# Wed, 11 Oct 2017 02:31:40 GMT
ENV REDMINE_VERSION=3.3.4
# Wed, 11 Oct 2017 02:31:40 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Wed, 11 Oct 2017 02:31:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:36:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:36:07 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:36:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:36:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:36:08 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:36:08 GMT
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
	-	`sha256:b430c5cb18df1ae3ea598a63bf1ec7216da6aec2db12d414f399497dcc0ca194`  
		Last Modified: Wed, 11 Oct 2017 02:41:43 GMT  
		Size: 2.4 MB (2390598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4329be2a15022c81e695e336eef54d11cc52027d7ed5a831406ea859afdcd6fc`  
		Last Modified: Wed, 11 Oct 2017 02:42:01 GMT  
		Size: 77.0 MB (77042054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876cf65a3647fa75984d4fb1361c460d2b1e612103d2ee05098ba4da0acc92d5`  
		Last Modified: Wed, 11 Oct 2017 02:41:42 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:276fd3f65abeaf0df040bc108e3001334dd1935a7f564b3af75db7f471e70cb4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238841582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70f8fce2dc4f876130356676e45a1c7e79de53a2ab3122027a7d5780e23332b7`
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
# Wed, 11 Oct 2017 01:45:41 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:49:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:49:45 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:49:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:49:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:49:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:49:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:49:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:49:49 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:18:39 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:19:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:19:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:19:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:19:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:20:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:20:05 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:20:06 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:20:06 GMT
ENV REDMINE_VERSION=3.3.4
# Wed, 11 Oct 2017 02:20:06 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Wed, 11 Oct 2017 02:20:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:24:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:24:25 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:24:26 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:24:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:24:26 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:24:26 GMT
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
	-	`sha256:17b729b3033f7a2c8f6046da0e2022092043398b3584636179e1cd3c7697b3f8`  
		Last Modified: Wed, 11 Oct 2017 01:56:34 GMT  
		Size: 32.9 MB (32904389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b86ec1fb988bc558d7c3886945c2c5c7d8dd7f9ad8023498b0950ae481b0d29`  
		Last Modified: Wed, 11 Oct 2017 01:56:22 GMT  
		Size: 677.1 KB (677066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3722a51794b3abb3378a91c2a28d964d56700abf1479ad58813e642e31798d4b`  
		Last Modified: Wed, 11 Oct 2017 01:56:22 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb6cdf9df01afad7c73a7f8f7450281db845d363f0ca872f7d461680f5d23c3`  
		Last Modified: Wed, 11 Oct 2017 02:29:57 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e36bccf8febb8096748c08c5bb3811945e34ba04b5f5f55ef049488c78e11e`  
		Last Modified: Wed, 11 Oct 2017 02:30:01 GMT  
		Size: 14.1 MB (14134417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e06fccd8be3a135d44f1944622688a296afc75989854e029240f427a1bba51`  
		Last Modified: Wed, 11 Oct 2017 02:29:56 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33f5b168ccf67f949f3dcec0d23d1164811f7ced85a09808fc2a58e199e7c10`  
		Last Modified: Wed, 11 Oct 2017 02:29:56 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c5ad81a22478d93ed668dbcebe90e369c85dec2bb37805e4d9a2dc162cc516`  
		Last Modified: Wed, 11 Oct 2017 02:30:11 GMT  
		Size: 54.3 MB (54317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02222b7be1e651f6cc987f99e0abd9a8406761a4cb5762bb12dbc613e85a5831`  
		Last Modified: Wed, 11 Oct 2017 02:29:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fb3a72c3a66382ee69b62c89903a60c3bf3ceb8e88990dde722bba827cff68`  
		Last Modified: Wed, 11 Oct 2017 02:29:56 GMT  
		Size: 2.4 MB (2390596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bece601cf855da3e0b0c484d70e72eb3ac4c1f74aa2e2b5b11f50a4591da1cae`  
		Last Modified: Wed, 11 Oct 2017 02:30:13 GMT  
		Size: 76.5 MB (76483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d223f103c067b0d98213240b257da33258bc1fb2d0a40a5fb8a8507e7441d0`  
		Last Modified: Wed, 11 Oct 2017 02:29:54 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:3b978e83d0f84cfceb85ede58575d43c0b0074141ca9a7c1bbe6bb4c5223d660
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244469744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db9389954dda96262b2af935425d3eef3328b322d9827e27a2fc6f1ad74be71`
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
# Tue, 10 Oct 2017 21:36:57 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 21:44:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 21:44:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 21:44:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 21:44:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 21:44:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 21:44:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 21:44:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 21:44:39 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 22:28:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 22:28:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:28:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 22:28:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 22:28:59 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 22:29:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 22:31:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:31:09 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 22:31:10 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 22:31:10 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 22:31:11 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 22:31:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 22:42:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 22:42:27 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 22:42:28 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 22:42:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 22:42:29 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 22:42:30 GMT
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
	-	`sha256:94b1099ed58b79cd01ca9b5e152b63a6c5040fb21b6b3b9de89ec0cb9ef04be7`  
		Last Modified: Tue, 10 Oct 2017 21:58:32 GMT  
		Size: 34.3 MB (34326478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f883678c81de87d41105a50c89b6a0d44395fb7cbb4554bcbeb3b756b525d44e`  
		Last Modified: Tue, 10 Oct 2017 21:58:17 GMT  
		Size: 677.0 KB (677049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e2919157cb15d15c12c15f06ccd087693eead11c5f11cc46ad944905e9ac7a`  
		Last Modified: Tue, 10 Oct 2017 21:58:16 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded11e08824cc9c566f9b4c0a4913fa55e8ee75da62df4a47cdee401754a6d47`  
		Last Modified: Tue, 10 Oct 2017 22:55:30 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daaf01fec0a2c161a153c8738c117aa718547d309d1d45d14eb2cb917f709fa`  
		Last Modified: Tue, 10 Oct 2017 22:55:35 GMT  
		Size: 14.5 MB (14462480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fddac2b70124d47b60f1370227627d8b0596b1f266c0616d7db7c1b43207ae3`  
		Last Modified: Tue, 10 Oct 2017 22:55:29 GMT  
		Size: 468.7 KB (468692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61514e761168826f94a679fea47754962d25ad66c8c4c390da7202ae12bf267c`  
		Last Modified: Tue, 10 Oct 2017 22:55:28 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a2fb3d6f3dbf42b8d10cd0e6ce6f9448ed5673750c5dba6bb030cf84128775`  
		Last Modified: Tue, 10 Oct 2017 22:56:11 GMT  
		Size: 55.8 MB (55772167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de134586d07ed9fb3c7b98bf707d50f282e43abf44fdb811392bae6322121b3a`  
		Last Modified: Tue, 10 Oct 2017 22:55:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774dfe4d1225f27a44615975015232e0597fcf61797eaa12f3505a329cee4bca`  
		Last Modified: Tue, 10 Oct 2017 22:55:28 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99c6926c4547146f6c8f20d9648c70b1be5b7eb9e6592abb4703ab21addcda8`  
		Last Modified: Tue, 10 Oct 2017 22:55:50 GMT  
		Size: 77.1 MB (77097933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f9f806ca3049d043b5d3b81205b7950fcb18b7be936da57d692fb15184126f`  
		Last Modified: Tue, 10 Oct 2017 22:55:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:618686c778a6f3829519109963be21b5e600156c2742837c0f1081509758f26f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254670502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13cfa11a25edcb5c0cef761786f8c34734499ec8722b4be54dd9c8a4ec674bd5`
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
# Wed, 11 Oct 2017 03:09:21 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 03:12:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 03:12:58 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 03:13:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 03:13:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 03:13:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 03:13:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 03:13:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 03:13:01 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 03:50:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 03:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:50:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 03:50:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 03:50:40 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 03:50:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 03:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:51:40 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 03:51:41 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 03:51:41 GMT
ENV REDMINE_VERSION=3.3.4
# Wed, 11 Oct 2017 03:51:41 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Wed, 11 Oct 2017 03:51:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 03:54:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 03:54:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 03:54:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 03:54:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 03:54:50 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 03:54:50 GMT
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
	-	`sha256:a3780c907ce2c756c057e20a2b3c2ffe3dfde018aed75b905e50dd34874c6fb1`  
		Last Modified: Wed, 11 Oct 2017 03:21:19 GMT  
		Size: 31.7 MB (31665970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1f9706abea300e7a8484a192bf4fb1bfeb5d61d618c83a35440c0c885af38b`  
		Last Modified: Wed, 11 Oct 2017 03:21:12 GMT  
		Size: 677.1 KB (677055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df18f573e98ae02723005e75467402278dc37087331d68b2aacc487648628fa9`  
		Last Modified: Wed, 11 Oct 2017 03:21:12 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057fd1095bb97e732a7a3224f31b1a048590efca975a5623dbf8df0a36e6e587`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f4014f40e7f4aab62a69b9f47365a370a86b3f1f32e6f59d49b88f58296da1`  
		Last Modified: Wed, 11 Oct 2017 04:12:03 GMT  
		Size: 14.8 MB (14817258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e929e421c171a30b2fc052e415b4d565da1b0b21c2ff7b26f5ea8766cc8affb`  
		Last Modified: Wed, 11 Oct 2017 04:11:59 GMT  
		Size: 480.6 KB (480564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f1be3131b9c2562707c5133c4b99465aa32d9f3672037324e27efdace5fcd2`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 8.6 KB (8563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa6af2ff0f784c3af2d4638b41c4456a37a450e8367cc0c83976f0fe55d542`  
		Last Modified: Wed, 11 Oct 2017 04:12:19 GMT  
		Size: 60.1 MB (60115861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b484568a1af10ed4587f4273e0c515f90c464ef820784742925f9a268647662f`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f37daa47d265e9a36cbce40eae3cf4c6c359dbd7ba41067feff3b31c56ba4c3`  
		Last Modified: Wed, 11 Oct 2017 04:12:06 GMT  
		Size: 2.4 MB (2390309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea242807792dee04f1da4b74c63e151aee1fd62b7fa05348027d58534eaca459`  
		Last Modified: Wed, 11 Oct 2017 04:12:20 GMT  
		Size: 77.1 MB (77109207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59d5e0580ea7c4fa1b9912ad4bcc58c3b3d4f794f078cfd7b12e681a63cdb61`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:2695dde57625ab01c290859c96d12315966d2a375e5eac97a50b74d1be1803bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251509266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f9094cdebfeb568bdfde3d5776165569a66a9414c9863b80bfbba2883a713f`
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
# Wed, 11 Oct 2017 01:29:34 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:43:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:43:10 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:43:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:43:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:43:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:43:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:43:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:43:34 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:36:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:37:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:37:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:37:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:37:22 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:37:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:45:11 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:45:14 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:45:16 GMT
ENV REDMINE_VERSION=3.3.4
# Wed, 11 Oct 2017 02:45:22 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Wed, 11 Oct 2017 02:45:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 03:08:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 03:08:08 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 03:08:12 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 03:08:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 03:08:18 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 03:08:21 GMT
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
	-	`sha256:91e6527e559e528bff7bcd73bbb1c45066fd7e74b6afa9be117e5c189f65c219`  
		Last Modified: Wed, 11 Oct 2017 01:50:04 GMT  
		Size: 35.2 MB (35211161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e06be32f60c0e95591916a180193b2ba88b142261c6c73877e408b9110093d4`  
		Last Modified: Wed, 11 Oct 2017 01:49:53 GMT  
		Size: 677.1 KB (677067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb6fd2f1bf8f7feee3d288e7b7ebfa82a0401a175978e54ef61635efb5c503f`  
		Last Modified: Wed, 11 Oct 2017 01:49:53 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa9de44aa453301c918c29eeb369674d24838e52b1a079d2bca479453cb2255`  
		Last Modified: Wed, 11 Oct 2017 03:36:18 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09c7734f92ca08e58395321bfb65f4c9318c34599f153175d82e12eb7b0cee7`  
		Last Modified: Wed, 11 Oct 2017 03:36:21 GMT  
		Size: 14.7 MB (14720609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3feb7e20496f614583f6f70059dc2a347014d1327a7176ca7219f836c482966`  
		Last Modified: Wed, 11 Oct 2017 03:36:17 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29266d4fc00bb77766cbf12cc9d9fb84761489966a29529be770cd3a0b10fa8e`  
		Last Modified: Wed, 11 Oct 2017 03:36:16 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ec3f4350f6e07892ab8524df5044320efed5a37b8cf841d6109a8324f6611c`  
		Last Modified: Wed, 11 Oct 2017 03:36:31 GMT  
		Size: 58.1 MB (58106203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a3edbdf6dda2488cdd8db8a103cef20145d7724b1751bccba4b333cf6b5c3c`  
		Last Modified: Wed, 11 Oct 2017 03:36:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9443d232119f0ac92cc2140eb1599f0c14781d8598451547fc55444aaf53650`  
		Last Modified: Wed, 11 Oct 2017 03:36:14 GMT  
		Size: 2.4 MB (2390600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec60976c0752807a8b3a95c5cb20281444269ec24d54410d20ec1cd2580624d`  
		Last Modified: Wed, 11 Oct 2017 03:36:28 GMT  
		Size: 78.0 MB (77977997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0b36d9b8f843e294aa69fedb48a127f6b5f5d47e8179bd326a3da3edd02247`  
		Last Modified: Wed, 11 Oct 2017 03:36:13 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:c3bcbd24617350c0bdf5dd3e4ac1e606fee7f7999247bdbb8bab243ed242bffd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258311589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0812643c79e1086d28c70abad0aebd6a45cdba1f5f9c8a87af0892f3a54fc12d`
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
# Wed, 11 Oct 2017 09:17:45 GMT
ENV REDMINE_VERSION=3.3.4
# Wed, 11 Oct 2017 09:17:45 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Wed, 11 Oct 2017 09:17:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 09:20:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 09:20:06 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 09:20:06 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 09:20:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 09:20:07 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 09:20:07 GMT
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
	-	`sha256:36e6c95340b0969f1a50937326c6d2230979773092449506020a912fb08ab4bb`  
		Last Modified: Wed, 11 Oct 2017 09:23:59 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e6e5436a9025b05c9c3b91bd054fa7e2611b5af7e9e20ab16ff1951845f17b`  
		Last Modified: Wed, 11 Oct 2017 09:24:13 GMT  
		Size: 80.2 MB (80226717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38c8d58240aa079f0690a9be09eb389e61b76b32c4871cb2d6ee901c686cd1f`  
		Last Modified: Wed, 11 Oct 2017 09:23:58 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4`

```console
$ docker pull redmine@sha256:c8699a66fb5ad35179ce149f4d55e52f4fc4e4d84fa5f3962cffc69ff47dd310
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

### `redmine:3.3.4` - linux; amd64

```console
$ docker pull redmine@sha256:bbfcede63b836fddf807c66bf176ad05979af7e770672c23a9c2132500ad52a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252230237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab096bab0bf335f142d1fd5e4ec25768986fde6ef07683fc858475e11b40207`
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
# Tue, 10 Oct 2017 21:10:45 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 21:10:45 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 21:10:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:13:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:13:06 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:13:06 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:13:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:13:07 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:13:07 GMT
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
	-	`sha256:89aa45a86b4bb93eda27656f65b8f2e848aa820f5280f30fdabb324af1e02cf3`  
		Last Modified: Tue, 10 Oct 2017 21:19:05 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c596e028b7596ea60c55a4e558b2d0680648ba7147b86b9fd865b47d25b064`  
		Last Modified: Tue, 10 Oct 2017 21:19:16 GMT  
		Size: 77.8 MB (77823029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa7d1246377f0591e90f22fd5da9b56f1127c739d8273c69f3d966a488a7092`  
		Last Modified: Tue, 10 Oct 2017 21:19:04 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:e8c0a46b885d9bfdea257eb24127cff5b483681e43b21c13a011a978718c4442
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244661692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01260601ab2d0dbbc9a434e9b348ce950ce1a19c3352e388889ef8ebd3f223ef`
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
# Wed, 11 Oct 2017 02:31:40 GMT
ENV REDMINE_VERSION=3.3.4
# Wed, 11 Oct 2017 02:31:40 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Wed, 11 Oct 2017 02:31:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:36:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:36:07 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:36:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:36:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:36:08 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:36:08 GMT
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
	-	`sha256:b430c5cb18df1ae3ea598a63bf1ec7216da6aec2db12d414f399497dcc0ca194`  
		Last Modified: Wed, 11 Oct 2017 02:41:43 GMT  
		Size: 2.4 MB (2390598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4329be2a15022c81e695e336eef54d11cc52027d7ed5a831406ea859afdcd6fc`  
		Last Modified: Wed, 11 Oct 2017 02:42:01 GMT  
		Size: 77.0 MB (77042054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876cf65a3647fa75984d4fb1361c460d2b1e612103d2ee05098ba4da0acc92d5`  
		Last Modified: Wed, 11 Oct 2017 02:41:42 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:276fd3f65abeaf0df040bc108e3001334dd1935a7f564b3af75db7f471e70cb4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238841582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70f8fce2dc4f876130356676e45a1c7e79de53a2ab3122027a7d5780e23332b7`
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
# Wed, 11 Oct 2017 01:45:41 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:49:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:49:45 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:49:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:49:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:49:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:49:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:49:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:49:49 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:18:39 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:19:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:19:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:19:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:19:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:20:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:20:05 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:20:06 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:20:06 GMT
ENV REDMINE_VERSION=3.3.4
# Wed, 11 Oct 2017 02:20:06 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Wed, 11 Oct 2017 02:20:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:24:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:24:25 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:24:26 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:24:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:24:26 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:24:26 GMT
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
	-	`sha256:17b729b3033f7a2c8f6046da0e2022092043398b3584636179e1cd3c7697b3f8`  
		Last Modified: Wed, 11 Oct 2017 01:56:34 GMT  
		Size: 32.9 MB (32904389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b86ec1fb988bc558d7c3886945c2c5c7d8dd7f9ad8023498b0950ae481b0d29`  
		Last Modified: Wed, 11 Oct 2017 01:56:22 GMT  
		Size: 677.1 KB (677066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3722a51794b3abb3378a91c2a28d964d56700abf1479ad58813e642e31798d4b`  
		Last Modified: Wed, 11 Oct 2017 01:56:22 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb6cdf9df01afad7c73a7f8f7450281db845d363f0ca872f7d461680f5d23c3`  
		Last Modified: Wed, 11 Oct 2017 02:29:57 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e36bccf8febb8096748c08c5bb3811945e34ba04b5f5f55ef049488c78e11e`  
		Last Modified: Wed, 11 Oct 2017 02:30:01 GMT  
		Size: 14.1 MB (14134417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e06fccd8be3a135d44f1944622688a296afc75989854e029240f427a1bba51`  
		Last Modified: Wed, 11 Oct 2017 02:29:56 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33f5b168ccf67f949f3dcec0d23d1164811f7ced85a09808fc2a58e199e7c10`  
		Last Modified: Wed, 11 Oct 2017 02:29:56 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c5ad81a22478d93ed668dbcebe90e369c85dec2bb37805e4d9a2dc162cc516`  
		Last Modified: Wed, 11 Oct 2017 02:30:11 GMT  
		Size: 54.3 MB (54317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02222b7be1e651f6cc987f99e0abd9a8406761a4cb5762bb12dbc613e85a5831`  
		Last Modified: Wed, 11 Oct 2017 02:29:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fb3a72c3a66382ee69b62c89903a60c3bf3ceb8e88990dde722bba827cff68`  
		Last Modified: Wed, 11 Oct 2017 02:29:56 GMT  
		Size: 2.4 MB (2390596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bece601cf855da3e0b0c484d70e72eb3ac4c1f74aa2e2b5b11f50a4591da1cae`  
		Last Modified: Wed, 11 Oct 2017 02:30:13 GMT  
		Size: 76.5 MB (76483269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d223f103c067b0d98213240b257da33258bc1fb2d0a40a5fb8a8507e7441d0`  
		Last Modified: Wed, 11 Oct 2017 02:29:54 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:3b978e83d0f84cfceb85ede58575d43c0b0074141ca9a7c1bbe6bb4c5223d660
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244469744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db9389954dda96262b2af935425d3eef3328b322d9827e27a2fc6f1ad74be71`
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
# Tue, 10 Oct 2017 21:36:57 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 21:44:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 21:44:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 21:44:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 21:44:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 21:44:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 21:44:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 21:44:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 21:44:39 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 22:28:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 22:28:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:28:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 22:28:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 22:28:59 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 22:29:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 22:31:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:31:09 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 22:31:10 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 22:31:10 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 22:31:11 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 22:31:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 22:42:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 22:42:27 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 22:42:28 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 22:42:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 22:42:29 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 22:42:30 GMT
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
	-	`sha256:94b1099ed58b79cd01ca9b5e152b63a6c5040fb21b6b3b9de89ec0cb9ef04be7`  
		Last Modified: Tue, 10 Oct 2017 21:58:32 GMT  
		Size: 34.3 MB (34326478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f883678c81de87d41105a50c89b6a0d44395fb7cbb4554bcbeb3b756b525d44e`  
		Last Modified: Tue, 10 Oct 2017 21:58:17 GMT  
		Size: 677.0 KB (677049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e2919157cb15d15c12c15f06ccd087693eead11c5f11cc46ad944905e9ac7a`  
		Last Modified: Tue, 10 Oct 2017 21:58:16 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded11e08824cc9c566f9b4c0a4913fa55e8ee75da62df4a47cdee401754a6d47`  
		Last Modified: Tue, 10 Oct 2017 22:55:30 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daaf01fec0a2c161a153c8738c117aa718547d309d1d45d14eb2cb917f709fa`  
		Last Modified: Tue, 10 Oct 2017 22:55:35 GMT  
		Size: 14.5 MB (14462480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fddac2b70124d47b60f1370227627d8b0596b1f266c0616d7db7c1b43207ae3`  
		Last Modified: Tue, 10 Oct 2017 22:55:29 GMT  
		Size: 468.7 KB (468692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61514e761168826f94a679fea47754962d25ad66c8c4c390da7202ae12bf267c`  
		Last Modified: Tue, 10 Oct 2017 22:55:28 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a2fb3d6f3dbf42b8d10cd0e6ce6f9448ed5673750c5dba6bb030cf84128775`  
		Last Modified: Tue, 10 Oct 2017 22:56:11 GMT  
		Size: 55.8 MB (55772167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de134586d07ed9fb3c7b98bf707d50f282e43abf44fdb811392bae6322121b3a`  
		Last Modified: Tue, 10 Oct 2017 22:55:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774dfe4d1225f27a44615975015232e0597fcf61797eaa12f3505a329cee4bca`  
		Last Modified: Tue, 10 Oct 2017 22:55:28 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99c6926c4547146f6c8f20d9648c70b1be5b7eb9e6592abb4703ab21addcda8`  
		Last Modified: Tue, 10 Oct 2017 22:55:50 GMT  
		Size: 77.1 MB (77097933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f9f806ca3049d043b5d3b81205b7950fcb18b7be936da57d692fb15184126f`  
		Last Modified: Tue, 10 Oct 2017 22:55:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; 386

```console
$ docker pull redmine@sha256:618686c778a6f3829519109963be21b5e600156c2742837c0f1081509758f26f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254670502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13cfa11a25edcb5c0cef761786f8c34734499ec8722b4be54dd9c8a4ec674bd5`
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
# Wed, 11 Oct 2017 03:09:21 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 03:12:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 03:12:58 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 03:13:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 03:13:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 03:13:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 03:13:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 03:13:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 03:13:01 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 03:50:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 03:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:50:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 03:50:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 03:50:40 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 03:50:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 03:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:51:40 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 03:51:41 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 03:51:41 GMT
ENV REDMINE_VERSION=3.3.4
# Wed, 11 Oct 2017 03:51:41 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Wed, 11 Oct 2017 03:51:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 03:54:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 03:54:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 03:54:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 03:54:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 03:54:50 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 03:54:50 GMT
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
	-	`sha256:a3780c907ce2c756c057e20a2b3c2ffe3dfde018aed75b905e50dd34874c6fb1`  
		Last Modified: Wed, 11 Oct 2017 03:21:19 GMT  
		Size: 31.7 MB (31665970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1f9706abea300e7a8484a192bf4fb1bfeb5d61d618c83a35440c0c885af38b`  
		Last Modified: Wed, 11 Oct 2017 03:21:12 GMT  
		Size: 677.1 KB (677055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df18f573e98ae02723005e75467402278dc37087331d68b2aacc487648628fa9`  
		Last Modified: Wed, 11 Oct 2017 03:21:12 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057fd1095bb97e732a7a3224f31b1a048590efca975a5623dbf8df0a36e6e587`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f4014f40e7f4aab62a69b9f47365a370a86b3f1f32e6f59d49b88f58296da1`  
		Last Modified: Wed, 11 Oct 2017 04:12:03 GMT  
		Size: 14.8 MB (14817258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e929e421c171a30b2fc052e415b4d565da1b0b21c2ff7b26f5ea8766cc8affb`  
		Last Modified: Wed, 11 Oct 2017 04:11:59 GMT  
		Size: 480.6 KB (480564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f1be3131b9c2562707c5133c4b99465aa32d9f3672037324e27efdace5fcd2`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 8.6 KB (8563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa6af2ff0f784c3af2d4638b41c4456a37a450e8367cc0c83976f0fe55d542`  
		Last Modified: Wed, 11 Oct 2017 04:12:19 GMT  
		Size: 60.1 MB (60115861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b484568a1af10ed4587f4273e0c515f90c464ef820784742925f9a268647662f`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f37daa47d265e9a36cbce40eae3cf4c6c359dbd7ba41067feff3b31c56ba4c3`  
		Last Modified: Wed, 11 Oct 2017 04:12:06 GMT  
		Size: 2.4 MB (2390309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea242807792dee04f1da4b74c63e151aee1fd62b7fa05348027d58534eaca459`  
		Last Modified: Wed, 11 Oct 2017 04:12:20 GMT  
		Size: 77.1 MB (77109207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59d5e0580ea7c4fa1b9912ad4bcc58c3b3d4f794f078cfd7b12e681a63cdb61`  
		Last Modified: Wed, 11 Oct 2017 04:11:58 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:2695dde57625ab01c290859c96d12315966d2a375e5eac97a50b74d1be1803bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251509266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f9094cdebfeb568bdfde3d5776165569a66a9414c9863b80bfbba2883a713f`
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
# Wed, 11 Oct 2017 01:29:34 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:43:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:43:10 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:43:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:43:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:43:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:43:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:43:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:43:34 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:36:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:37:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:37:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:37:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:37:22 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:37:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:45:11 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:45:14 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:45:16 GMT
ENV REDMINE_VERSION=3.3.4
# Wed, 11 Oct 2017 02:45:22 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Wed, 11 Oct 2017 02:45:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 03:08:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 03:08:08 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 03:08:12 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 03:08:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 03:08:18 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 03:08:21 GMT
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
	-	`sha256:91e6527e559e528bff7bcd73bbb1c45066fd7e74b6afa9be117e5c189f65c219`  
		Last Modified: Wed, 11 Oct 2017 01:50:04 GMT  
		Size: 35.2 MB (35211161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e06be32f60c0e95591916a180193b2ba88b142261c6c73877e408b9110093d4`  
		Last Modified: Wed, 11 Oct 2017 01:49:53 GMT  
		Size: 677.1 KB (677067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb6fd2f1bf8f7feee3d288e7b7ebfa82a0401a175978e54ef61635efb5c503f`  
		Last Modified: Wed, 11 Oct 2017 01:49:53 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa9de44aa453301c918c29eeb369674d24838e52b1a079d2bca479453cb2255`  
		Last Modified: Wed, 11 Oct 2017 03:36:18 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09c7734f92ca08e58395321bfb65f4c9318c34599f153175d82e12eb7b0cee7`  
		Last Modified: Wed, 11 Oct 2017 03:36:21 GMT  
		Size: 14.7 MB (14720609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3feb7e20496f614583f6f70059dc2a347014d1327a7176ca7219f836c482966`  
		Last Modified: Wed, 11 Oct 2017 03:36:17 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29266d4fc00bb77766cbf12cc9d9fb84761489966a29529be770cd3a0b10fa8e`  
		Last Modified: Wed, 11 Oct 2017 03:36:16 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ec3f4350f6e07892ab8524df5044320efed5a37b8cf841d6109a8324f6611c`  
		Last Modified: Wed, 11 Oct 2017 03:36:31 GMT  
		Size: 58.1 MB (58106203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a3edbdf6dda2488cdd8db8a103cef20145d7724b1751bccba4b333cf6b5c3c`  
		Last Modified: Wed, 11 Oct 2017 03:36:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9443d232119f0ac92cc2140eb1599f0c14781d8598451547fc55444aaf53650`  
		Last Modified: Wed, 11 Oct 2017 03:36:14 GMT  
		Size: 2.4 MB (2390600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec60976c0752807a8b3a95c5cb20281444269ec24d54410d20ec1cd2580624d`  
		Last Modified: Wed, 11 Oct 2017 03:36:28 GMT  
		Size: 78.0 MB (77977997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0b36d9b8f843e294aa69fedb48a127f6b5f5d47e8179bd326a3da3edd02247`  
		Last Modified: Wed, 11 Oct 2017 03:36:13 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; s390x

```console
$ docker pull redmine@sha256:c3bcbd24617350c0bdf5dd3e4ac1e606fee7f7999247bdbb8bab243ed242bffd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258311589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0812643c79e1086d28c70abad0aebd6a45cdba1f5f9c8a87af0892f3a54fc12d`
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
# Wed, 11 Oct 2017 09:17:45 GMT
ENV REDMINE_VERSION=3.3.4
# Wed, 11 Oct 2017 09:17:45 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Wed, 11 Oct 2017 09:17:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 09:20:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 09:20:06 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 09:20:06 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 09:20:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 09:20:07 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 09:20:07 GMT
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
	-	`sha256:36e6c95340b0969f1a50937326c6d2230979773092449506020a912fb08ab4bb`  
		Last Modified: Wed, 11 Oct 2017 09:23:59 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e6e5436a9025b05c9c3b91bd054fa7e2611b5af7e9e20ab16ff1951845f17b`  
		Last Modified: Wed, 11 Oct 2017 09:24:13 GMT  
		Size: 80.2 MB (80226717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38c8d58240aa079f0690a9be09eb389e61b76b32c4871cb2d6ee901c686cd1f`  
		Last Modified: Wed, 11 Oct 2017 09:23:58 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4-passenger`

```console
$ docker pull redmine@sha256:3d480eef6a844b2a95db0d288fec59ea9e7340e748af71560f123c48cabd3c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:5d6e94d42ed8d529e132b01cef48288371fe410a2754d1a9c022c5c9779a3675
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271432664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a8fa49d5d42ef34fb3f81ea40e50b6c386f77d308f4bb7cff237fb000e7edf`
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
# Tue, 10 Oct 2017 21:10:45 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 21:10:45 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 21:10:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:13:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:13:06 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:13:06 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:13:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:13:07 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:13:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 21:13:16 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 21:13:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:13:41 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 21:13:41 GMT
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
	-	`sha256:89aa45a86b4bb93eda27656f65b8f2e848aa820f5280f30fdabb324af1e02cf3`  
		Last Modified: Tue, 10 Oct 2017 21:19:05 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c596e028b7596ea60c55a4e558b2d0680648ba7147b86b9fd865b47d25b064`  
		Last Modified: Tue, 10 Oct 2017 21:19:16 GMT  
		Size: 77.8 MB (77823029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa7d1246377f0591e90f22fd5da9b56f1127c739d8273c69f3d966a488a7092`  
		Last Modified: Tue, 10 Oct 2017 21:19:04 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8862f4623ae235ff405b9c0e9be35f3f18fd239ae5c9028b28a22221a71d0694`  
		Last Modified: Tue, 10 Oct 2017 21:19:41 GMT  
		Size: 14.9 MB (14928482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcde4408a4bc07fa934073cc06d9931bb89bb4868624ce5607982ba70d759079`  
		Last Modified: Tue, 10 Oct 2017 21:19:39 GMT  
		Size: 4.3 MB (4273945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:3d480eef6a844b2a95db0d288fec59ea9e7340e748af71560f123c48cabd3c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:5d6e94d42ed8d529e132b01cef48288371fe410a2754d1a9c022c5c9779a3675
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271432664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a8fa49d5d42ef34fb3f81ea40e50b6c386f77d308f4bb7cff237fb000e7edf`
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
# Tue, 10 Oct 2017 21:10:45 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 21:10:45 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 21:10:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:13:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:13:06 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:13:06 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:13:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:13:07 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:13:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 21:13:16 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 21:13:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:13:41 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 21:13:41 GMT
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
	-	`sha256:89aa45a86b4bb93eda27656f65b8f2e848aa820f5280f30fdabb324af1e02cf3`  
		Last Modified: Tue, 10 Oct 2017 21:19:05 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c596e028b7596ea60c55a4e558b2d0680648ba7147b86b9fd865b47d25b064`  
		Last Modified: Tue, 10 Oct 2017 21:19:16 GMT  
		Size: 77.8 MB (77823029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa7d1246377f0591e90f22fd5da9b56f1127c739d8273c69f3d966a488a7092`  
		Last Modified: Tue, 10 Oct 2017 21:19:04 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8862f4623ae235ff405b9c0e9be35f3f18fd239ae5c9028b28a22221a71d0694`  
		Last Modified: Tue, 10 Oct 2017 21:19:41 GMT  
		Size: 14.9 MB (14928482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcde4408a4bc07fa934073cc06d9931bb89bb4868624ce5607982ba70d759079`  
		Last Modified: Tue, 10 Oct 2017 21:19:39 GMT  
		Size: 4.3 MB (4273945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:55451e8886d0cf63655d4ee77244ce7eb26c676201f086e43a0e68599538d7be
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
$ docker pull redmine@sha256:2d4b0b651db427b42fed2e0efe9bd822f3cdbaf11be27a648f93d4b6c1f516ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (241044692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c650b5a815cc3420a97a05ee32054041deeb3ed8c2f2db2877b579752fe8cc97`
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
# Tue, 10 Oct 2017 21:06:26 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 21:06:27 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 21:06:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:09:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:09:08 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:09:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:09:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:09:09 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:09:09 GMT
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
	-	`sha256:7c89f8f0043455beebe8a79e8a5a615c70beca58ba00cd112c02038d2f6c319e`  
		Last Modified: Tue, 10 Oct 2017 21:17:20 GMT  
		Size: 2.4 MB (2448154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c950026dff9cac1cbe64ead43a6444dd989a9c1e86e1d3a053fc8480b3340`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 77.2 MB (77155282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3447eaefde9d2b78ad21ca21a26832be2327f729bf128a6f78f40c1674dad7ed`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:f1e16de6edcb2bbb82f3691ab7fb23803ed3f38481ca857f2c0051a0bbd94670
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234239678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5efdbf2b28d2678d2a8ebda89abee48f2dd7ed7410f39a8f053d9aaa8ee217e5`
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
# Wed, 11 Oct 2017 02:25:35 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 02:25:36 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 02:25:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:29:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:29:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:29:55 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:29:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:29:56 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:29:56 GMT
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
	-	`sha256:bac5dd27a08de907901d5efcb9b898bc5418166c1c2a2eff2fc91525c255f87b`  
		Last Modified: Wed, 11 Oct 2017 02:41:02 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e513edffe6718ca857b6e617dd800b40588b6cd48dfb60154ca0eb5ca08bdf`  
		Last Modified: Wed, 11 Oct 2017 02:41:20 GMT  
		Size: 76.3 MB (76321098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c193da14e9d8c1818ccf29b90600b02e5847550ba296eab2c9ee40917b7b0112`  
		Last Modified: Wed, 11 Oct 2017 02:41:00 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:acb647e92d79de777a4160a17b9fd526ee1663af5930e3586e9fdc2db65a7428
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.5 MB (228545431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2d35b038a83d82f4b57b56cbd27877fb59eb4535eeaff1e0acdc7979eb45be`
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
# Wed, 11 Oct 2017 01:27:08 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:32:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:32:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:32:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:32:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:32:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:32:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:32:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:32:35 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:12:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:13:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:13:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:13:16 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:13:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:14:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:14:13 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:14:13 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:14:13 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 02:14:13 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 02:14:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:18:17 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:18:18 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:18:18 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:18:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:18:19 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:18:19 GMT
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
	-	`sha256:5385aea36ceef4a5f1eed01465b7a1e87f6a59237c912ba6b81999c5da28c25f`  
		Last Modified: Wed, 11 Oct 2017 01:52:34 GMT  
		Size: 23.2 MB (23235115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b81b5c872836f7c5276f4ef109e559e8d50820ec17abb2bd2198ee55b5bd24`  
		Last Modified: Wed, 11 Oct 2017 01:52:27 GMT  
		Size: 677.1 KB (677082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d38195c4d8fe9075fdba46eaa26aa8bbaef778c7801940434c8ad1e9a21010b`  
		Last Modified: Wed, 11 Oct 2017 01:52:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085fd971c0893ccf2edaef750f819197fe536808e6d1c7ada22ead41655974a0`  
		Last Modified: Wed, 11 Oct 2017 02:29:13 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22804d4e8d69ff9c0d3b8f0dad22322a5416f93e3a5cc3d049f97bd4e5914b5c`  
		Last Modified: Wed, 11 Oct 2017 02:29:16 GMT  
		Size: 14.1 MB (14134389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e486c8c04131291e30e39966c419dedf4583a476d6614b6286c08b02132bcc2`  
		Last Modified: Wed, 11 Oct 2017 02:29:12 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8c7299ac4232e1286b016a1d7d515d033c7ce54de51ffa6e7a9e2a9cd7940b`  
		Last Modified: Wed, 11 Oct 2017 02:29:11 GMT  
		Size: 7.3 KB (7306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6d829549beda13aa79f3cf1b6d3468338007ae0f030123b86b2a9c1275e841`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 54.3 MB (54317383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e59af38aea157ce3d1b47777fb67a9646b25fe1530a98aeb606b3d5717cdc9`  
		Last Modified: Wed, 11 Oct 2017 02:29:10 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e3a35ab724b382f04026a196bcda8c32dc08775b196c0d50d62d73f2fe3aa6`  
		Last Modified: Wed, 11 Oct 2017 02:29:11 GMT  
		Size: 2.4 MB (2448731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1698dc93b3cdb38248efe4b855955cc1a7ebeca39ef1c0ee50cb8aa7fb416459`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 75.8 MB (75798255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de52f75ebf985aaea9d9a822196431d7208bd75b4543fef363a01007285e9a3e`  
		Last Modified: Wed, 11 Oct 2017 02:29:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:14c12a5c5d6957bd4f85afe847bae0e0e7c0d48550088506e64fae1e7915f3c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233064566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a1365b7c31a9f294e434227e4a73eb16ee2da1a136c4a6ed4cd951e7816549`
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
# Tue, 10 Oct 2017 21:05:58 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 21:15:17 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 21:15:18 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 21:15:21 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 21:15:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 21:15:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 21:15:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 21:15:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 21:15:24 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 22:16:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 22:16:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:16:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 22:16:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 22:16:49 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 22:16:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 22:18:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:18:32 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 22:18:32 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 22:18:33 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 22:18:34 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 22:18:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 22:27:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 22:27:49 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 22:27:50 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 22:27:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 22:27:52 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 22:27:53 GMT
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
	-	`sha256:f614dc734ce102c88b46d516234c9d95fbaad54848855f141efa0cbe49bb5073`  
		Last Modified: Tue, 10 Oct 2017 21:50:10 GMT  
		Size: 23.6 MB (23562649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867e3a3655789b9c74e40c651ec8281c24bfb488a5e2cad0ad6258955b0422a`  
		Last Modified: Tue, 10 Oct 2017 21:50:00 GMT  
		Size: 677.1 KB (677060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc46531427ae040549535b641a4d313ae8e87451bffc764c38dc8b0030d698a5`  
		Last Modified: Tue, 10 Oct 2017 21:50:00 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9f71bcd6255cda3650c253c403ca18140745c4badcfcf112d1b9afe094372f`  
		Last Modified: Tue, 10 Oct 2017 22:53:26 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765dc8d0fe1b06fecf5f900f6f97fcb685cbcc6194e9d08d19ece202bef01735`  
		Last Modified: Tue, 10 Oct 2017 22:53:29 GMT  
		Size: 14.5 MB (14462510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563fdf1f3488c43d796f5ede83e86724e46f561cad00ff705762ef115b573beb`  
		Last Modified: Tue, 10 Oct 2017 22:53:26 GMT  
		Size: 468.7 KB (468691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd935cc325442d493df45d1e55b1a135a68ca185241a50937f0cb3b512915b83`  
		Last Modified: Tue, 10 Oct 2017 22:53:22 GMT  
		Size: 8.1 KB (8144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980dd39b17f70380d63b31fd6d63a7a340835219a901ba07eba5a4343553195d`  
		Last Modified: Tue, 10 Oct 2017 22:54:17 GMT  
		Size: 55.8 MB (55772330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e316b632848551dd605cf400a562c1ad165e0dd11779a77b64c9a21635fbd88`  
		Last Modified: Tue, 10 Oct 2017 22:53:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b5f6511f70041fe4118046c4d2000a5c5bb926b821f389340e88f32658b0c7`  
		Last Modified: Tue, 10 Oct 2017 22:53:22 GMT  
		Size: 2.4 MB (2448147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddbeaf22cceca328131b94345dc1dbb5028280e2f0d6d10fe8496456d57a130`  
		Last Modified: Tue, 10 Oct 2017 22:54:19 GMT  
		Size: 76.4 MB (76398557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153efa0d79c04242a310b6bba462b1e7a582ea7b55c6e7caf24f3883947e693f`  
		Last Modified: Tue, 10 Oct 2017 22:53:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:83cbfb608e9185e63715cb96ffaa3751adda4dcd102f7e4af623a72eda4582d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (244985496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb9defbe4e2635afd36d4b75863c0f7f0b93322791fc97b63dbfaba5f5ef2cef`
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
# Wed, 11 Oct 2017 02:51:07 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 02:55:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 02:55:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 02:55:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 02:55:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 02:55:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 02:55:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 02:55:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 02:55:18 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 03:38:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 03:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:40:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 03:40:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 03:41:47 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 03:41:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 03:42:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:52 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 03:42:52 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 03:42:52 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 03:42:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 03:42:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 03:46:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 03:46:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 03:46:05 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 03:46:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 03:46:05 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 03:46:05 GMT
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
	-	`sha256:2ba4461fd927012d1938de69de5d27ae8add55f99c55be1098189bb35511e88f`  
		Last Modified: Wed, 11 Oct 2017 03:17:44 GMT  
		Size: 22.6 MB (22598176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69537ee4170b8771ca53c24056f571d76c3f9f5067bdf5abebcbdf87d6af9f67`  
		Last Modified: Wed, 11 Oct 2017 03:17:38 GMT  
		Size: 677.1 KB (677068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b4c7a6bc93522218f28ce745b80ac8b3c78749643dd36e278d0f910163fa8a`  
		Last Modified: Wed, 11 Oct 2017 03:17:37 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4b8387ce9858c3e99caea74b8f20b0a7051287c2426516c4c1e6d8e0b2a804`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cc3351a90dfde06e7645f199e9b1aa513e3f38a88ad1fa81fac964b0b98297`  
		Last Modified: Wed, 11 Oct 2017 04:06:38 GMT  
		Size: 14.8 MB (14817228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594f8cfe4fc80f46f20f0919fc87ca20d0a6c7767547291912baf2547483cfaa`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411aef0f934fe996af96c32325227bc6ecc569c7e5f64b845b0ce34e6ded51d3`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b82e5dac927531b5efb33244e6c1c66b340cfd99ecbf4fa559717dcfbe813a`  
		Last Modified: Wed, 11 Oct 2017 04:06:52 GMT  
		Size: 60.1 MB (60116216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823bd57eff395647bfa4d441c9d17543a7f3b9869a28e3907d2100ef91cd7d76`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79891b2be19fe96201508b602c9f0f4e367a40d39c1d66d356a66bcc3495a96c`  
		Last Modified: Wed, 11 Oct 2017 04:06:38 GMT  
		Size: 2.4 MB (2448152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260cd31fc86c7ea35d2890ffe7b1b0c85988535f709f6e8057fda8fbecb69055`  
		Last Modified: Wed, 11 Oct 2017 04:06:50 GMT  
		Size: 76.4 MB (76433814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14efe08d456b9b8ecd28f55f641e49521156ebf5e88c266264b75fea302a0b02`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:727f6bb1697f337253ac78c9e4d7f4aa306a10fe891774ebcf630a25a423f965
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239727232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07efaff0ccd01ca4203dec61588d2b5a7c821d174211938cd7154c2a0f70eb0c`
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
# Wed, 11 Oct 2017 00:45:39 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:00:01 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:00:04 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:00:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:00:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:00:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:00:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:00:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:00:27 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:06:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:07:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:07:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:07:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:07:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:07:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:13:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:13:45 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:13:48 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:13:50 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 02:13:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 02:14:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:35:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:35:37 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:35:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:35:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:35:48 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:35:51 GMT
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
	-	`sha256:365dcacdfcdde714220812d874952c5ffdd5b4edde6f97db60713e6c761c409b`  
		Last Modified: Wed, 11 Oct 2017 01:46:38 GMT  
		Size: 24.1 MB (24053206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791f630ba49f3ca705e05e4b52b5c1f00cbff0ff2fb303054a49bd84ac00cbe2`  
		Last Modified: Wed, 11 Oct 2017 01:46:31 GMT  
		Size: 677.1 KB (677100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3a79ee797c15a091cd97c94f75526da32df0a1c1ec9cd7413d2fdcb0cb9151`  
		Last Modified: Wed, 11 Oct 2017 01:46:31 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cbd3e9e29404c4248a580b44cbc8162692483275bc5d82671b84399b5ce1f0`  
		Last Modified: Wed, 11 Oct 2017 03:35:35 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d129d096c85b59802022a1d3d260de3bf2544fd2fb4fda39c028b245cce6fa`  
		Last Modified: Wed, 11 Oct 2017 03:35:37 GMT  
		Size: 14.7 MB (14720592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3b8b0691e9ea91faed65a1d163e1902c061949b82ae71ae826342d82c115f3`  
		Last Modified: Wed, 11 Oct 2017 03:35:33 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e4ae9d7203cdc1920d24a0a12e39e64f341b60d7bb740e83084eaf974c115d`  
		Last Modified: Wed, 11 Oct 2017 03:35:32 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7472876c70b72868c2d96b29ad49fbc783e2adc3620f18cc63f742df37bf92a8`  
		Last Modified: Wed, 11 Oct 2017 03:35:44 GMT  
		Size: 58.1 MB (58106229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55f40a9c82fbf572f7545d698c933e23b75f7eb2b38b212e9c416b3499310b9`  
		Last Modified: Wed, 11 Oct 2017 03:35:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c746a8790697b6f6b430ae7a1bd32be6ec98e02027c0e9e92cde8aafe13d36`  
		Last Modified: Wed, 11 Oct 2017 03:35:30 GMT  
		Size: 2.4 MB (2448730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5276c9304a4a5add78b6e706b7210d4e3f416d7de9d5c3b1fb95b4ecac9c1eb`  
		Last Modified: Wed, 11 Oct 2017 03:35:46 GMT  
		Size: 77.3 MB (77295737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa79eadd0a47054320768c1a9f38b979833704909a16cf6478e4680ad49a96f5`  
		Last Modified: Wed, 11 Oct 2017 03:35:29 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:2ed2199c4481388703483205c431b4fa2fa6a4d660db7002b9fe30800cdd5c59
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243884418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da36dcb8156821235fb003005c64da6455877806ffcef3dabd0a648b52504d3c`
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
# Wed, 11 Oct 2017 09:14:17 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 09:14:17 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 09:14:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 09:16:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 09:16:44 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 09:16:44 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 09:16:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 09:16:45 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 09:16:45 GMT
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
	-	`sha256:5dc25176fb28e99a8598aa266e8172d4d41cd1c2b2ecde91e47ddbf5d19bb5e7`  
		Last Modified: Wed, 11 Oct 2017 09:23:01 GMT  
		Size: 2.4 MB (2448153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0a69e497d2b804c9986fff8aec4a28f357f86fbfc66fb36b83ac2ed3d2292`  
		Last Modified: Wed, 11 Oct 2017 09:23:12 GMT  
		Size: 79.6 MB (79602805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3fe4493b722131c3ce4bd30a6b82cb0abd9d0b5da3737774d8cf4cf2a453cb`  
		Last Modified: Wed, 11 Oct 2017 09:23:01 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.2`

```console
$ docker pull redmine@sha256:55451e8886d0cf63655d4ee77244ce7eb26c676201f086e43a0e68599538d7be
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

### `redmine:3.4.2` - linux; amd64

```console
$ docker pull redmine@sha256:2d4b0b651db427b42fed2e0efe9bd822f3cdbaf11be27a648f93d4b6c1f516ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (241044692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c650b5a815cc3420a97a05ee32054041deeb3ed8c2f2db2877b579752fe8cc97`
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
# Tue, 10 Oct 2017 21:06:26 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 21:06:27 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 21:06:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:09:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:09:08 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:09:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:09:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:09:09 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:09:09 GMT
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
	-	`sha256:7c89f8f0043455beebe8a79e8a5a615c70beca58ba00cd112c02038d2f6c319e`  
		Last Modified: Tue, 10 Oct 2017 21:17:20 GMT  
		Size: 2.4 MB (2448154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c950026dff9cac1cbe64ead43a6444dd989a9c1e86e1d3a053fc8480b3340`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 77.2 MB (77155282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3447eaefde9d2b78ad21ca21a26832be2327f729bf128a6f78f40c1674dad7ed`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; arm variant v5

```console
$ docker pull redmine@sha256:f1e16de6edcb2bbb82f3691ab7fb23803ed3f38481ca857f2c0051a0bbd94670
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234239678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5efdbf2b28d2678d2a8ebda89abee48f2dd7ed7410f39a8f053d9aaa8ee217e5`
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
# Wed, 11 Oct 2017 02:25:35 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 02:25:36 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 02:25:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:29:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:29:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:29:55 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:29:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:29:56 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:29:56 GMT
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
	-	`sha256:bac5dd27a08de907901d5efcb9b898bc5418166c1c2a2eff2fc91525c255f87b`  
		Last Modified: Wed, 11 Oct 2017 02:41:02 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e513edffe6718ca857b6e617dd800b40588b6cd48dfb60154ca0eb5ca08bdf`  
		Last Modified: Wed, 11 Oct 2017 02:41:20 GMT  
		Size: 76.3 MB (76321098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c193da14e9d8c1818ccf29b90600b02e5847550ba296eab2c9ee40917b7b0112`  
		Last Modified: Wed, 11 Oct 2017 02:41:00 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:acb647e92d79de777a4160a17b9fd526ee1663af5930e3586e9fdc2db65a7428
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.5 MB (228545431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2d35b038a83d82f4b57b56cbd27877fb59eb4535eeaff1e0acdc7979eb45be`
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
# Wed, 11 Oct 2017 01:27:08 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:32:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:32:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:32:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:32:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:32:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:32:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:32:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:32:35 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:12:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:13:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:13:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:13:16 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:13:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:14:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:14:13 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:14:13 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:14:13 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 02:14:13 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 02:14:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:18:17 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:18:18 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:18:18 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:18:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:18:19 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:18:19 GMT
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
	-	`sha256:5385aea36ceef4a5f1eed01465b7a1e87f6a59237c912ba6b81999c5da28c25f`  
		Last Modified: Wed, 11 Oct 2017 01:52:34 GMT  
		Size: 23.2 MB (23235115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b81b5c872836f7c5276f4ef109e559e8d50820ec17abb2bd2198ee55b5bd24`  
		Last Modified: Wed, 11 Oct 2017 01:52:27 GMT  
		Size: 677.1 KB (677082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d38195c4d8fe9075fdba46eaa26aa8bbaef778c7801940434c8ad1e9a21010b`  
		Last Modified: Wed, 11 Oct 2017 01:52:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085fd971c0893ccf2edaef750f819197fe536808e6d1c7ada22ead41655974a0`  
		Last Modified: Wed, 11 Oct 2017 02:29:13 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22804d4e8d69ff9c0d3b8f0dad22322a5416f93e3a5cc3d049f97bd4e5914b5c`  
		Last Modified: Wed, 11 Oct 2017 02:29:16 GMT  
		Size: 14.1 MB (14134389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e486c8c04131291e30e39966c419dedf4583a476d6614b6286c08b02132bcc2`  
		Last Modified: Wed, 11 Oct 2017 02:29:12 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8c7299ac4232e1286b016a1d7d515d033c7ce54de51ffa6e7a9e2a9cd7940b`  
		Last Modified: Wed, 11 Oct 2017 02:29:11 GMT  
		Size: 7.3 KB (7306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6d829549beda13aa79f3cf1b6d3468338007ae0f030123b86b2a9c1275e841`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 54.3 MB (54317383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e59af38aea157ce3d1b47777fb67a9646b25fe1530a98aeb606b3d5717cdc9`  
		Last Modified: Wed, 11 Oct 2017 02:29:10 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e3a35ab724b382f04026a196bcda8c32dc08775b196c0d50d62d73f2fe3aa6`  
		Last Modified: Wed, 11 Oct 2017 02:29:11 GMT  
		Size: 2.4 MB (2448731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1698dc93b3cdb38248efe4b855955cc1a7ebeca39ef1c0ee50cb8aa7fb416459`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 75.8 MB (75798255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de52f75ebf985aaea9d9a822196431d7208bd75b4543fef363a01007285e9a3e`  
		Last Modified: Wed, 11 Oct 2017 02:29:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:14c12a5c5d6957bd4f85afe847bae0e0e7c0d48550088506e64fae1e7915f3c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233064566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a1365b7c31a9f294e434227e4a73eb16ee2da1a136c4a6ed4cd951e7816549`
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
# Tue, 10 Oct 2017 21:05:58 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 21:15:17 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 21:15:18 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 21:15:21 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 21:15:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 21:15:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 21:15:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 21:15:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 21:15:24 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 22:16:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 22:16:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:16:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 22:16:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 22:16:49 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 22:16:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 22:18:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:18:32 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 22:18:32 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 22:18:33 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 22:18:34 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 22:18:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 22:27:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 22:27:49 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 22:27:50 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 22:27:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 22:27:52 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 22:27:53 GMT
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
	-	`sha256:f614dc734ce102c88b46d516234c9d95fbaad54848855f141efa0cbe49bb5073`  
		Last Modified: Tue, 10 Oct 2017 21:50:10 GMT  
		Size: 23.6 MB (23562649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867e3a3655789b9c74e40c651ec8281c24bfb488a5e2cad0ad6258955b0422a`  
		Last Modified: Tue, 10 Oct 2017 21:50:00 GMT  
		Size: 677.1 KB (677060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc46531427ae040549535b641a4d313ae8e87451bffc764c38dc8b0030d698a5`  
		Last Modified: Tue, 10 Oct 2017 21:50:00 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9f71bcd6255cda3650c253c403ca18140745c4badcfcf112d1b9afe094372f`  
		Last Modified: Tue, 10 Oct 2017 22:53:26 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765dc8d0fe1b06fecf5f900f6f97fcb685cbcc6194e9d08d19ece202bef01735`  
		Last Modified: Tue, 10 Oct 2017 22:53:29 GMT  
		Size: 14.5 MB (14462510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563fdf1f3488c43d796f5ede83e86724e46f561cad00ff705762ef115b573beb`  
		Last Modified: Tue, 10 Oct 2017 22:53:26 GMT  
		Size: 468.7 KB (468691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd935cc325442d493df45d1e55b1a135a68ca185241a50937f0cb3b512915b83`  
		Last Modified: Tue, 10 Oct 2017 22:53:22 GMT  
		Size: 8.1 KB (8144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980dd39b17f70380d63b31fd6d63a7a340835219a901ba07eba5a4343553195d`  
		Last Modified: Tue, 10 Oct 2017 22:54:17 GMT  
		Size: 55.8 MB (55772330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e316b632848551dd605cf400a562c1ad165e0dd11779a77b64c9a21635fbd88`  
		Last Modified: Tue, 10 Oct 2017 22:53:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b5f6511f70041fe4118046c4d2000a5c5bb926b821f389340e88f32658b0c7`  
		Last Modified: Tue, 10 Oct 2017 22:53:22 GMT  
		Size: 2.4 MB (2448147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddbeaf22cceca328131b94345dc1dbb5028280e2f0d6d10fe8496456d57a130`  
		Last Modified: Tue, 10 Oct 2017 22:54:19 GMT  
		Size: 76.4 MB (76398557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153efa0d79c04242a310b6bba462b1e7a582ea7b55c6e7caf24f3883947e693f`  
		Last Modified: Tue, 10 Oct 2017 22:53:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; 386

```console
$ docker pull redmine@sha256:83cbfb608e9185e63715cb96ffaa3751adda4dcd102f7e4af623a72eda4582d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (244985496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb9defbe4e2635afd36d4b75863c0f7f0b93322791fc97b63dbfaba5f5ef2cef`
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
# Wed, 11 Oct 2017 02:51:07 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 02:55:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 02:55:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 02:55:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 02:55:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 02:55:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 02:55:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 02:55:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 02:55:18 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 03:38:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 03:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:40:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 03:40:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 03:41:47 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 03:41:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 03:42:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:52 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 03:42:52 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 03:42:52 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 03:42:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 03:42:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 03:46:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 03:46:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 03:46:05 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 03:46:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 03:46:05 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 03:46:05 GMT
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
	-	`sha256:2ba4461fd927012d1938de69de5d27ae8add55f99c55be1098189bb35511e88f`  
		Last Modified: Wed, 11 Oct 2017 03:17:44 GMT  
		Size: 22.6 MB (22598176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69537ee4170b8771ca53c24056f571d76c3f9f5067bdf5abebcbdf87d6af9f67`  
		Last Modified: Wed, 11 Oct 2017 03:17:38 GMT  
		Size: 677.1 KB (677068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b4c7a6bc93522218f28ce745b80ac8b3c78749643dd36e278d0f910163fa8a`  
		Last Modified: Wed, 11 Oct 2017 03:17:37 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4b8387ce9858c3e99caea74b8f20b0a7051287c2426516c4c1e6d8e0b2a804`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cc3351a90dfde06e7645f199e9b1aa513e3f38a88ad1fa81fac964b0b98297`  
		Last Modified: Wed, 11 Oct 2017 04:06:38 GMT  
		Size: 14.8 MB (14817228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594f8cfe4fc80f46f20f0919fc87ca20d0a6c7767547291912baf2547483cfaa`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411aef0f934fe996af96c32325227bc6ecc569c7e5f64b845b0ce34e6ded51d3`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b82e5dac927531b5efb33244e6c1c66b340cfd99ecbf4fa559717dcfbe813a`  
		Last Modified: Wed, 11 Oct 2017 04:06:52 GMT  
		Size: 60.1 MB (60116216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823bd57eff395647bfa4d441c9d17543a7f3b9869a28e3907d2100ef91cd7d76`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79891b2be19fe96201508b602c9f0f4e367a40d39c1d66d356a66bcc3495a96c`  
		Last Modified: Wed, 11 Oct 2017 04:06:38 GMT  
		Size: 2.4 MB (2448152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260cd31fc86c7ea35d2890ffe7b1b0c85988535f709f6e8057fda8fbecb69055`  
		Last Modified: Wed, 11 Oct 2017 04:06:50 GMT  
		Size: 76.4 MB (76433814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14efe08d456b9b8ecd28f55f641e49521156ebf5e88c266264b75fea302a0b02`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:727f6bb1697f337253ac78c9e4d7f4aa306a10fe891774ebcf630a25a423f965
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239727232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07efaff0ccd01ca4203dec61588d2b5a7c821d174211938cd7154c2a0f70eb0c`
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
# Wed, 11 Oct 2017 00:45:39 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:00:01 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:00:04 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:00:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:00:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:00:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:00:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:00:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:00:27 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:06:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:07:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:07:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:07:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:07:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:07:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:13:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:13:45 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:13:48 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:13:50 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 02:13:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 02:14:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:35:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:35:37 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:35:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:35:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:35:48 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:35:51 GMT
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
	-	`sha256:365dcacdfcdde714220812d874952c5ffdd5b4edde6f97db60713e6c761c409b`  
		Last Modified: Wed, 11 Oct 2017 01:46:38 GMT  
		Size: 24.1 MB (24053206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791f630ba49f3ca705e05e4b52b5c1f00cbff0ff2fb303054a49bd84ac00cbe2`  
		Last Modified: Wed, 11 Oct 2017 01:46:31 GMT  
		Size: 677.1 KB (677100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3a79ee797c15a091cd97c94f75526da32df0a1c1ec9cd7413d2fdcb0cb9151`  
		Last Modified: Wed, 11 Oct 2017 01:46:31 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cbd3e9e29404c4248a580b44cbc8162692483275bc5d82671b84399b5ce1f0`  
		Last Modified: Wed, 11 Oct 2017 03:35:35 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d129d096c85b59802022a1d3d260de3bf2544fd2fb4fda39c028b245cce6fa`  
		Last Modified: Wed, 11 Oct 2017 03:35:37 GMT  
		Size: 14.7 MB (14720592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3b8b0691e9ea91faed65a1d163e1902c061949b82ae71ae826342d82c115f3`  
		Last Modified: Wed, 11 Oct 2017 03:35:33 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e4ae9d7203cdc1920d24a0a12e39e64f341b60d7bb740e83084eaf974c115d`  
		Last Modified: Wed, 11 Oct 2017 03:35:32 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7472876c70b72868c2d96b29ad49fbc783e2adc3620f18cc63f742df37bf92a8`  
		Last Modified: Wed, 11 Oct 2017 03:35:44 GMT  
		Size: 58.1 MB (58106229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55f40a9c82fbf572f7545d698c933e23b75f7eb2b38b212e9c416b3499310b9`  
		Last Modified: Wed, 11 Oct 2017 03:35:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c746a8790697b6f6b430ae7a1bd32be6ec98e02027c0e9e92cde8aafe13d36`  
		Last Modified: Wed, 11 Oct 2017 03:35:30 GMT  
		Size: 2.4 MB (2448730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5276c9304a4a5add78b6e706b7210d4e3f416d7de9d5c3b1fb95b4ecac9c1eb`  
		Last Modified: Wed, 11 Oct 2017 03:35:46 GMT  
		Size: 77.3 MB (77295737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa79eadd0a47054320768c1a9f38b979833704909a16cf6478e4680ad49a96f5`  
		Last Modified: Wed, 11 Oct 2017 03:35:29 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; s390x

```console
$ docker pull redmine@sha256:2ed2199c4481388703483205c431b4fa2fa6a4d660db7002b9fe30800cdd5c59
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243884418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da36dcb8156821235fb003005c64da6455877806ffcef3dabd0a648b52504d3c`
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
# Wed, 11 Oct 2017 09:14:17 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 09:14:17 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 09:14:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 09:16:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 09:16:44 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 09:16:44 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 09:16:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 09:16:45 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 09:16:45 GMT
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
	-	`sha256:5dc25176fb28e99a8598aa266e8172d4d41cd1c2b2ecde91e47ddbf5d19bb5e7`  
		Last Modified: Wed, 11 Oct 2017 09:23:01 GMT  
		Size: 2.4 MB (2448153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0a69e497d2b804c9986fff8aec4a28f357f86fbfc66fb36b83ac2ed3d2292`  
		Last Modified: Wed, 11 Oct 2017 09:23:12 GMT  
		Size: 79.6 MB (79602805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3fe4493b722131c3ce4bd30a6b82cb0abd9d0b5da3737774d8cf4cf2a453cb`  
		Last Modified: Wed, 11 Oct 2017 09:23:01 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.2-passenger`

```console
$ docker pull redmine@sha256:1cb1edaf16dc54c7742b4a31f23c732ba79caf67abb552aff143eea85279769d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:842b2b88ac69fde859f373a06444b9e420aafc631a4c1e9d484e985c4093a6a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.2 MB (260246964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2398d2b32e252af1d2f87fbfffb48bd547c1c5457ef86062626c35449f5512`
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
# Tue, 10 Oct 2017 21:06:26 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 21:06:27 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 21:06:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:09:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:09:08 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:09:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:09:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:09:09 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:09:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 21:09:16 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 21:09:41 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:09:42 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 21:09:42 GMT
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
	-	`sha256:7c89f8f0043455beebe8a79e8a5a615c70beca58ba00cd112c02038d2f6c319e`  
		Last Modified: Tue, 10 Oct 2017 21:17:20 GMT  
		Size: 2.4 MB (2448154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c950026dff9cac1cbe64ead43a6444dd989a9c1e86e1d3a053fc8480b3340`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 77.2 MB (77155282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3447eaefde9d2b78ad21ca21a26832be2327f729bf128a6f78f40c1674dad7ed`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7a520e259810667c2859acd9a2bd3bc01ae23654abdeb4f2c8cabb5b11627`  
		Last Modified: Tue, 10 Oct 2017 21:18:22 GMT  
		Size: 14.9 MB (14928337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab01a06e07ca73e70801e800ea8ab0249428259e352019530184415e2e0d0be5`  
		Last Modified: Tue, 10 Oct 2017 21:18:20 GMT  
		Size: 4.3 MB (4273935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:1cb1edaf16dc54c7742b4a31f23c732ba79caf67abb552aff143eea85279769d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:842b2b88ac69fde859f373a06444b9e420aafc631a4c1e9d484e985c4093a6a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.2 MB (260246964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2398d2b32e252af1d2f87fbfffb48bd547c1c5457ef86062626c35449f5512`
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
# Tue, 10 Oct 2017 21:06:26 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 21:06:27 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 21:06:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:09:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:09:08 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:09:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:09:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:09:09 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:09:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 21:09:16 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 21:09:41 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:09:42 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 21:09:42 GMT
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
	-	`sha256:7c89f8f0043455beebe8a79e8a5a615c70beca58ba00cd112c02038d2f6c319e`  
		Last Modified: Tue, 10 Oct 2017 21:17:20 GMT  
		Size: 2.4 MB (2448154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c950026dff9cac1cbe64ead43a6444dd989a9c1e86e1d3a053fc8480b3340`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 77.2 MB (77155282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3447eaefde9d2b78ad21ca21a26832be2327f729bf128a6f78f40c1674dad7ed`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7a520e259810667c2859acd9a2bd3bc01ae23654abdeb4f2c8cabb5b11627`  
		Last Modified: Tue, 10 Oct 2017 21:18:22 GMT  
		Size: 14.9 MB (14928337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab01a06e07ca73e70801e800ea8ab0249428259e352019530184415e2e0d0be5`  
		Last Modified: Tue, 10 Oct 2017 21:18:20 GMT  
		Size: 4.3 MB (4273935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:1cb1edaf16dc54c7742b4a31f23c732ba79caf67abb552aff143eea85279769d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:842b2b88ac69fde859f373a06444b9e420aafc631a4c1e9d484e985c4093a6a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.2 MB (260246964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2398d2b32e252af1d2f87fbfffb48bd547c1c5457ef86062626c35449f5512`
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
# Tue, 10 Oct 2017 21:06:26 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 21:06:27 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 21:06:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:09:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:09:08 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:09:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:09:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:09:09 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:09:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 21:09:16 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 21:09:41 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:09:42 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 21:09:42 GMT
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
	-	`sha256:7c89f8f0043455beebe8a79e8a5a615c70beca58ba00cd112c02038d2f6c319e`  
		Last Modified: Tue, 10 Oct 2017 21:17:20 GMT  
		Size: 2.4 MB (2448154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c950026dff9cac1cbe64ead43a6444dd989a9c1e86e1d3a053fc8480b3340`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 77.2 MB (77155282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3447eaefde9d2b78ad21ca21a26832be2327f729bf128a6f78f40c1674dad7ed`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7a520e259810667c2859acd9a2bd3bc01ae23654abdeb4f2c8cabb5b11627`  
		Last Modified: Tue, 10 Oct 2017 21:18:22 GMT  
		Size: 14.9 MB (14928337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab01a06e07ca73e70801e800ea8ab0249428259e352019530184415e2e0d0be5`  
		Last Modified: Tue, 10 Oct 2017 21:18:20 GMT  
		Size: 4.3 MB (4273935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:55451e8886d0cf63655d4ee77244ce7eb26c676201f086e43a0e68599538d7be
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
$ docker pull redmine@sha256:2d4b0b651db427b42fed2e0efe9bd822f3cdbaf11be27a648f93d4b6c1f516ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (241044692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c650b5a815cc3420a97a05ee32054041deeb3ed8c2f2db2877b579752fe8cc97`
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
# Tue, 10 Oct 2017 21:06:26 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 21:06:27 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 21:06:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:09:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:09:08 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:09:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:09:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:09:09 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:09:09 GMT
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
	-	`sha256:7c89f8f0043455beebe8a79e8a5a615c70beca58ba00cd112c02038d2f6c319e`  
		Last Modified: Tue, 10 Oct 2017 21:17:20 GMT  
		Size: 2.4 MB (2448154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c950026dff9cac1cbe64ead43a6444dd989a9c1e86e1d3a053fc8480b3340`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 77.2 MB (77155282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3447eaefde9d2b78ad21ca21a26832be2327f729bf128a6f78f40c1674dad7ed`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:f1e16de6edcb2bbb82f3691ab7fb23803ed3f38481ca857f2c0051a0bbd94670
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234239678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5efdbf2b28d2678d2a8ebda89abee48f2dd7ed7410f39a8f053d9aaa8ee217e5`
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
# Wed, 11 Oct 2017 02:25:35 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 02:25:36 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 02:25:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:29:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:29:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:29:55 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:29:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:29:56 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:29:56 GMT
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
	-	`sha256:bac5dd27a08de907901d5efcb9b898bc5418166c1c2a2eff2fc91525c255f87b`  
		Last Modified: Wed, 11 Oct 2017 02:41:02 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e513edffe6718ca857b6e617dd800b40588b6cd48dfb60154ca0eb5ca08bdf`  
		Last Modified: Wed, 11 Oct 2017 02:41:20 GMT  
		Size: 76.3 MB (76321098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c193da14e9d8c1818ccf29b90600b02e5847550ba296eab2c9ee40917b7b0112`  
		Last Modified: Wed, 11 Oct 2017 02:41:00 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:acb647e92d79de777a4160a17b9fd526ee1663af5930e3586e9fdc2db65a7428
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.5 MB (228545431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2d35b038a83d82f4b57b56cbd27877fb59eb4535eeaff1e0acdc7979eb45be`
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
# Wed, 11 Oct 2017 01:27:08 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:32:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:32:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:32:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:32:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:32:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:32:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:32:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:32:35 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:12:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:13:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:13:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:13:16 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:13:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:14:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:14:13 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:14:13 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:14:13 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 02:14:13 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 02:14:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:18:17 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:18:18 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:18:18 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:18:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:18:19 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:18:19 GMT
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
	-	`sha256:5385aea36ceef4a5f1eed01465b7a1e87f6a59237c912ba6b81999c5da28c25f`  
		Last Modified: Wed, 11 Oct 2017 01:52:34 GMT  
		Size: 23.2 MB (23235115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b81b5c872836f7c5276f4ef109e559e8d50820ec17abb2bd2198ee55b5bd24`  
		Last Modified: Wed, 11 Oct 2017 01:52:27 GMT  
		Size: 677.1 KB (677082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d38195c4d8fe9075fdba46eaa26aa8bbaef778c7801940434c8ad1e9a21010b`  
		Last Modified: Wed, 11 Oct 2017 01:52:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085fd971c0893ccf2edaef750f819197fe536808e6d1c7ada22ead41655974a0`  
		Last Modified: Wed, 11 Oct 2017 02:29:13 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22804d4e8d69ff9c0d3b8f0dad22322a5416f93e3a5cc3d049f97bd4e5914b5c`  
		Last Modified: Wed, 11 Oct 2017 02:29:16 GMT  
		Size: 14.1 MB (14134389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e486c8c04131291e30e39966c419dedf4583a476d6614b6286c08b02132bcc2`  
		Last Modified: Wed, 11 Oct 2017 02:29:12 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8c7299ac4232e1286b016a1d7d515d033c7ce54de51ffa6e7a9e2a9cd7940b`  
		Last Modified: Wed, 11 Oct 2017 02:29:11 GMT  
		Size: 7.3 KB (7306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6d829549beda13aa79f3cf1b6d3468338007ae0f030123b86b2a9c1275e841`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 54.3 MB (54317383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e59af38aea157ce3d1b47777fb67a9646b25fe1530a98aeb606b3d5717cdc9`  
		Last Modified: Wed, 11 Oct 2017 02:29:10 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e3a35ab724b382f04026a196bcda8c32dc08775b196c0d50d62d73f2fe3aa6`  
		Last Modified: Wed, 11 Oct 2017 02:29:11 GMT  
		Size: 2.4 MB (2448731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1698dc93b3cdb38248efe4b855955cc1a7ebeca39ef1c0ee50cb8aa7fb416459`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 75.8 MB (75798255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de52f75ebf985aaea9d9a822196431d7208bd75b4543fef363a01007285e9a3e`  
		Last Modified: Wed, 11 Oct 2017 02:29:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:14c12a5c5d6957bd4f85afe847bae0e0e7c0d48550088506e64fae1e7915f3c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233064566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a1365b7c31a9f294e434227e4a73eb16ee2da1a136c4a6ed4cd951e7816549`
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
# Tue, 10 Oct 2017 21:05:58 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Tue, 10 Oct 2017 21:15:17 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 21:15:18 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 21:15:21 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 21:15:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 21:15:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 21:15:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 21:15:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 21:15:24 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 22:16:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 22:16:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:16:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 22:16:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 22:16:49 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 22:16:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 22:18:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:18:32 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 22:18:32 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 22:18:33 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 22:18:34 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 22:18:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 22:27:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 22:27:49 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 22:27:50 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 22:27:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 22:27:52 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 22:27:53 GMT
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
	-	`sha256:f614dc734ce102c88b46d516234c9d95fbaad54848855f141efa0cbe49bb5073`  
		Last Modified: Tue, 10 Oct 2017 21:50:10 GMT  
		Size: 23.6 MB (23562649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867e3a3655789b9c74e40c651ec8281c24bfb488a5e2cad0ad6258955b0422a`  
		Last Modified: Tue, 10 Oct 2017 21:50:00 GMT  
		Size: 677.1 KB (677060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc46531427ae040549535b641a4d313ae8e87451bffc764c38dc8b0030d698a5`  
		Last Modified: Tue, 10 Oct 2017 21:50:00 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9f71bcd6255cda3650c253c403ca18140745c4badcfcf112d1b9afe094372f`  
		Last Modified: Tue, 10 Oct 2017 22:53:26 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765dc8d0fe1b06fecf5f900f6f97fcb685cbcc6194e9d08d19ece202bef01735`  
		Last Modified: Tue, 10 Oct 2017 22:53:29 GMT  
		Size: 14.5 MB (14462510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563fdf1f3488c43d796f5ede83e86724e46f561cad00ff705762ef115b573beb`  
		Last Modified: Tue, 10 Oct 2017 22:53:26 GMT  
		Size: 468.7 KB (468691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd935cc325442d493df45d1e55b1a135a68ca185241a50937f0cb3b512915b83`  
		Last Modified: Tue, 10 Oct 2017 22:53:22 GMT  
		Size: 8.1 KB (8144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980dd39b17f70380d63b31fd6d63a7a340835219a901ba07eba5a4343553195d`  
		Last Modified: Tue, 10 Oct 2017 22:54:17 GMT  
		Size: 55.8 MB (55772330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e316b632848551dd605cf400a562c1ad165e0dd11779a77b64c9a21635fbd88`  
		Last Modified: Tue, 10 Oct 2017 22:53:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b5f6511f70041fe4118046c4d2000a5c5bb926b821f389340e88f32658b0c7`  
		Last Modified: Tue, 10 Oct 2017 22:53:22 GMT  
		Size: 2.4 MB (2448147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddbeaf22cceca328131b94345dc1dbb5028280e2f0d6d10fe8496456d57a130`  
		Last Modified: Tue, 10 Oct 2017 22:54:19 GMT  
		Size: 76.4 MB (76398557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153efa0d79c04242a310b6bba462b1e7a582ea7b55c6e7caf24f3883947e693f`  
		Last Modified: Tue, 10 Oct 2017 22:53:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:83cbfb608e9185e63715cb96ffaa3751adda4dcd102f7e4af623a72eda4582d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (244985496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb9defbe4e2635afd36d4b75863c0f7f0b93322791fc97b63dbfaba5f5ef2cef`
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
# Wed, 11 Oct 2017 02:51:07 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 02:55:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 02:55:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 02:55:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 02:55:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 02:55:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 02:55:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 02:55:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 02:55:18 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 03:38:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 03:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:40:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 03:40:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 03:41:47 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 03:41:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 03:42:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:52 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 03:42:52 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 03:42:52 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 03:42:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 03:42:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 03:46:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 03:46:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 03:46:05 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 03:46:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 03:46:05 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 03:46:05 GMT
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
	-	`sha256:2ba4461fd927012d1938de69de5d27ae8add55f99c55be1098189bb35511e88f`  
		Last Modified: Wed, 11 Oct 2017 03:17:44 GMT  
		Size: 22.6 MB (22598176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69537ee4170b8771ca53c24056f571d76c3f9f5067bdf5abebcbdf87d6af9f67`  
		Last Modified: Wed, 11 Oct 2017 03:17:38 GMT  
		Size: 677.1 KB (677068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b4c7a6bc93522218f28ce745b80ac8b3c78749643dd36e278d0f910163fa8a`  
		Last Modified: Wed, 11 Oct 2017 03:17:37 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4b8387ce9858c3e99caea74b8f20b0a7051287c2426516c4c1e6d8e0b2a804`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cc3351a90dfde06e7645f199e9b1aa513e3f38a88ad1fa81fac964b0b98297`  
		Last Modified: Wed, 11 Oct 2017 04:06:38 GMT  
		Size: 14.8 MB (14817228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594f8cfe4fc80f46f20f0919fc87ca20d0a6c7767547291912baf2547483cfaa`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411aef0f934fe996af96c32325227bc6ecc569c7e5f64b845b0ce34e6ded51d3`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b82e5dac927531b5efb33244e6c1c66b340cfd99ecbf4fa559717dcfbe813a`  
		Last Modified: Wed, 11 Oct 2017 04:06:52 GMT  
		Size: 60.1 MB (60116216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823bd57eff395647bfa4d441c9d17543a7f3b9869a28e3907d2100ef91cd7d76`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79891b2be19fe96201508b602c9f0f4e367a40d39c1d66d356a66bcc3495a96c`  
		Last Modified: Wed, 11 Oct 2017 04:06:38 GMT  
		Size: 2.4 MB (2448152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260cd31fc86c7ea35d2890ffe7b1b0c85988535f709f6e8057fda8fbecb69055`  
		Last Modified: Wed, 11 Oct 2017 04:06:50 GMT  
		Size: 76.4 MB (76433814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14efe08d456b9b8ecd28f55f641e49521156ebf5e88c266264b75fea302a0b02`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:727f6bb1697f337253ac78c9e4d7f4aa306a10fe891774ebcf630a25a423f965
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239727232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07efaff0ccd01ca4203dec61588d2b5a7c821d174211938cd7154c2a0f70eb0c`
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
# Wed, 11 Oct 2017 00:45:39 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 01:00:01 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 01:00:04 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 01:00:10 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 01:00:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 01:00:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 01:00:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 01:00:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 01:00:27 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 02:06:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 02:07:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:07:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 02:07:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 02:07:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 02:07:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 02:13:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:13:45 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 02:13:48 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Oct 2017 02:13:50 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 02:13:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 02:14:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 02:35:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 02:35:37 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 02:35:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 02:35:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 02:35:48 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 02:35:51 GMT
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
	-	`sha256:365dcacdfcdde714220812d874952c5ffdd5b4edde6f97db60713e6c761c409b`  
		Last Modified: Wed, 11 Oct 2017 01:46:38 GMT  
		Size: 24.1 MB (24053206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791f630ba49f3ca705e05e4b52b5c1f00cbff0ff2fb303054a49bd84ac00cbe2`  
		Last Modified: Wed, 11 Oct 2017 01:46:31 GMT  
		Size: 677.1 KB (677100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3a79ee797c15a091cd97c94f75526da32df0a1c1ec9cd7413d2fdcb0cb9151`  
		Last Modified: Wed, 11 Oct 2017 01:46:31 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cbd3e9e29404c4248a580b44cbc8162692483275bc5d82671b84399b5ce1f0`  
		Last Modified: Wed, 11 Oct 2017 03:35:35 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d129d096c85b59802022a1d3d260de3bf2544fd2fb4fda39c028b245cce6fa`  
		Last Modified: Wed, 11 Oct 2017 03:35:37 GMT  
		Size: 14.7 MB (14720592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3b8b0691e9ea91faed65a1d163e1902c061949b82ae71ae826342d82c115f3`  
		Last Modified: Wed, 11 Oct 2017 03:35:33 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e4ae9d7203cdc1920d24a0a12e39e64f341b60d7bb740e83084eaf974c115d`  
		Last Modified: Wed, 11 Oct 2017 03:35:32 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7472876c70b72868c2d96b29ad49fbc783e2adc3620f18cc63f742df37bf92a8`  
		Last Modified: Wed, 11 Oct 2017 03:35:44 GMT  
		Size: 58.1 MB (58106229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55f40a9c82fbf572f7545d698c933e23b75f7eb2b38b212e9c416b3499310b9`  
		Last Modified: Wed, 11 Oct 2017 03:35:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c746a8790697b6f6b430ae7a1bd32be6ec98e02027c0e9e92cde8aafe13d36`  
		Last Modified: Wed, 11 Oct 2017 03:35:30 GMT  
		Size: 2.4 MB (2448730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5276c9304a4a5add78b6e706b7210d4e3f416d7de9d5c3b1fb95b4ecac9c1eb`  
		Last Modified: Wed, 11 Oct 2017 03:35:46 GMT  
		Size: 77.3 MB (77295737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa79eadd0a47054320768c1a9f38b979833704909a16cf6478e4680ad49a96f5`  
		Last Modified: Wed, 11 Oct 2017 03:35:29 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:2ed2199c4481388703483205c431b4fa2fa6a4d660db7002b9fe30800cdd5c59
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243884418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da36dcb8156821235fb003005c64da6455877806ffcef3dabd0a648b52504d3c`
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
# Wed, 11 Oct 2017 09:14:17 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 11 Oct 2017 09:14:17 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 11 Oct 2017 09:14:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Oct 2017 09:16:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Oct 2017 09:16:44 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Oct 2017 09:16:44 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 11 Oct 2017 09:16:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Oct 2017 09:16:45 GMT
EXPOSE 3000/tcp
# Wed, 11 Oct 2017 09:16:45 GMT
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
	-	`sha256:5dc25176fb28e99a8598aa266e8172d4d41cd1c2b2ecde91e47ddbf5d19bb5e7`  
		Last Modified: Wed, 11 Oct 2017 09:23:01 GMT  
		Size: 2.4 MB (2448153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0a69e497d2b804c9986fff8aec4a28f357f86fbfc66fb36b83ac2ed3d2292`  
		Last Modified: Wed, 11 Oct 2017 09:23:12 GMT  
		Size: 79.6 MB (79602805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3fe4493b722131c3ce4bd30a6b82cb0abd9d0b5da3737774d8cf4cf2a453cb`  
		Last Modified: Wed, 11 Oct 2017 09:23:01 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:1cb1edaf16dc54c7742b4a31f23c732ba79caf67abb552aff143eea85279769d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:842b2b88ac69fde859f373a06444b9e420aafc631a4c1e9d484e985c4093a6a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.2 MB (260246964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2398d2b32e252af1d2f87fbfffb48bd547c1c5457ef86062626c35449f5512`
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
# Tue, 10 Oct 2017 21:06:26 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 21:06:27 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 21:06:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 21:09:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:09:08 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 21:09:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 21:09:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 21:09:09 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 21:09:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 21:09:16 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 21:09:41 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 21:09:42 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 21:09:42 GMT
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
	-	`sha256:7c89f8f0043455beebe8a79e8a5a615c70beca58ba00cd112c02038d2f6c319e`  
		Last Modified: Tue, 10 Oct 2017 21:17:20 GMT  
		Size: 2.4 MB (2448154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c950026dff9cac1cbe64ead43a6444dd989a9c1e86e1d3a053fc8480b3340`  
		Last Modified: Tue, 10 Oct 2017 21:17:33 GMT  
		Size: 77.2 MB (77155282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3447eaefde9d2b78ad21ca21a26832be2327f729bf128a6f78f40c1674dad7ed`  
		Last Modified: Tue, 10 Oct 2017 21:17:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7a520e259810667c2859acd9a2bd3bc01ae23654abdeb4f2c8cabb5b11627`  
		Last Modified: Tue, 10 Oct 2017 21:18:22 GMT  
		Size: 14.9 MB (14928337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab01a06e07ca73e70801e800ea8ab0249428259e352019530184415e2e0d0be5`  
		Last Modified: Tue, 10 Oct 2017 21:18:20 GMT  
		Size: 4.3 MB (4273935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
