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
$ docker pull redmine@sha256:a6bd66deff38b89f7ac0563a00a75a3170f32df2784e90534811fa1526764072
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
$ docker pull redmine@sha256:7a886f1c33b9a69c82804f5be00f7d1fdf0d82137e45dc72c5276de61c0c268b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232452320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e751d16fbedf88e7d3268fba6388f6e1ee32f554d12a221aa8d0448f6f256fa2`
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
# Tue, 10 Oct 2017 00:44:40 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:51:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:51:06 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:51:07 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:51:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:51:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:51:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:51:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:51:10 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:20:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:21:13 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:21:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:21:16 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:21:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:22:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:22:14 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:22:15 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:22:15 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 02:22:15 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 02:22:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:26:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:26:38 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:26:38 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:26:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:26:39 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:26:39 GMT
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
	-	`sha256:f4e8ee24dc2be4389db7b6e1c7dcc619ceeebf7adb6015d008a586b3b0856ffe`  
		Last Modified: Tue, 10 Oct 2017 01:13:53 GMT  
		Size: 21.6 MB (21586499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915ec5dff0ad5fbafc3dd3cc5b86daec9f5f386142dce18b07a528a90377f512`  
		Last Modified: Tue, 10 Oct 2017 01:13:41 GMT  
		Size: 677.1 KB (677114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bb16b1228e97b0e23e075a0d8032e4831185afebad590064dac5c3d613159d`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32ca0633ce70b9dd05e90ba8e32352536bf04fa1910590b68db544ba7c7f7c8`  
		Last Modified: Tue, 10 Oct 2017 02:37:44 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d148a033528e2d96d5dde15956c277f8bd00458311aa4707725b812b70b666`  
		Last Modified: Tue, 10 Oct 2017 02:37:48 GMT  
		Size: 14.3 MB (14347475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc67c640888b69b349c03909bb17a788a0b9bf954f0619f523e2fa5847a48e`  
		Last Modified: Tue, 10 Oct 2017 02:37:43 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a500a2817c6d7492f7e2508e0f39e2caaa8d251fcdbf5e84073957511820ef`  
		Last Modified: Tue, 10 Oct 2017 02:37:42 GMT  
		Size: 7.8 KB (7841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e99ee7e5db68999f11eb19103c9b3aa2e96acca652db7089be17402f77e542`  
		Last Modified: Tue, 10 Oct 2017 02:37:59 GMT  
		Size: 56.6 MB (56580227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0416bca6dbdf7f53733ec20cd37f6e41f250245d89fea20e225bdf32c2368f7d`  
		Last Modified: Tue, 10 Oct 2017 02:37:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d12b87579e241698df6c43ce6766c46cb87b4f3ade0722f14625cd0d7c65fb`  
		Last Modified: Tue, 10 Oct 2017 02:37:43 GMT  
		Size: 2.4 MB (2448736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1078ba93b7cb1e2be55041e28e82a741bb60e36941f5f9011b681c333528f66f`  
		Last Modified: Tue, 10 Oct 2017 02:38:00 GMT  
		Size: 76.3 MB (76316720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0841942025efac0196690219c87b5e604a6d577456c2bfdd30874c368765787c`  
		Last Modified: Tue, 10 Oct 2017 02:37:42 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:4f8ffcb08ea78a01b96b0590dde8287fd5881f677fcf26de39f6e8137c8081eb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226744354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deae419982ffc3faf8f6c8954b86f09fbd6a39f234cce4c3c562f407067694bf`
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
# Tue, 10 Oct 2017 00:34:11 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:39:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:39:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:39:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:39:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:39:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:39:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:39:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:39:55 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:12:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:12:48 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:12:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:12:51 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:12:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:13:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:13:52 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:13:52 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:13:53 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 02:13:53 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 02:13:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:18:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:18:16 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:18:16 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:18:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:18:21 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:18:21 GMT
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
	-	`sha256:611ead5329094b1a8828f9d08c3d65577278eb7b8211edf879ac790f6611da89`  
		Last Modified: Tue, 10 Oct 2017 01:02:38 GMT  
		Size: 21.5 MB (21451279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b66dc570d238e5af798732af4a47ed0996f0085fad068fd347f689989e8363`  
		Last Modified: Tue, 10 Oct 2017 01:02:30 GMT  
		Size: 677.1 KB (677114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab3c15bba76b119ef8fcd8c553b5bd0e07f895dfc5afc311b51c94f1e535085`  
		Last Modified: Tue, 10 Oct 2017 01:02:29 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c96550580d4eb5559ffc20c39e263311b20115439dee9b2401089001aa6c8`  
		Last Modified: Tue, 10 Oct 2017 02:29:22 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf3b66a8f2619b5dc8c88674cadb2b34bdc000792e43035095d279a224fa3f3`  
		Last Modified: Tue, 10 Oct 2017 02:29:25 GMT  
		Size: 14.1 MB (14134402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24d5e56a56f70be1d9b4a49cb15a00285ac5b85bead836788ebe487bdfee279`  
		Last Modified: Tue, 10 Oct 2017 02:29:19 GMT  
		Size: 475.3 KB (475263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ddceaf1bb3b8cc7d1e69a472180746b6cf48542a2e8764d49e14ff62490236e`  
		Last Modified: Tue, 10 Oct 2017 02:29:20 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb86b5a3aa21ef2eb560aa3978df0b30f3648a06b5e2987c387b4ef18a56232`  
		Last Modified: Tue, 10 Oct 2017 02:29:36 GMT  
		Size: 54.3 MB (54317264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158c38b1aa29a7ad4defcc085cf627189a7ac772e04cc051d3b93681eeb750b4`  
		Last Modified: Tue, 10 Oct 2017 02:29:19 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad8824a86b5f211f55434eb02437149c808b012ea209387b5216f5150eda36`  
		Last Modified: Tue, 10 Oct 2017 02:29:21 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a0bac58590bc8b4c9f17efb2324e7db92730f335c6a4524fe8786773f01edd`  
		Last Modified: Tue, 10 Oct 2017 02:29:37 GMT  
		Size: 75.8 MB (75781082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2782a53d7c24e6802ca89aac0f2f5f9a7fad2a4f3b111372230a956d068a6d2c`  
		Last Modified: Tue, 10 Oct 2017 02:29:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:c14fad0a1105f5ead6baaed355499293ed97f4a896e24f71662a85bdc6c99845
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231273878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a18a3832bea9f645da8aeefa389e80dd37b813e606ef5492287f5c05969f72`
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
# Tue, 10 Oct 2017 07:42:51 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 07:52:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 07:52:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 07:52:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 07:52:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 07:52:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 07:52:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:52:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 07:52:40 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 14:37:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 14:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:38:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 14:38:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 14:38:32 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 14:38:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 14:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:40:18 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 14:40:18 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 14:40:19 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 14:40:20 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 14:40:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 14:49:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 14:49:02 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 14:49:02 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 14:49:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 14:49:04 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 14:49:05 GMT
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
	-	`sha256:31301bddc46b4c416da53df315ec834ad36125b28c58abbe6782cde7163f4f8b`  
		Last Modified: Tue, 10 Oct 2017 08:44:02 GMT  
		Size: 21.8 MB (21771846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0113cbd2719244a54d985d24d0eb0bccae891566719c3bc0d62bf5c06d14ab9f`  
		Last Modified: Tue, 10 Oct 2017 08:43:41 GMT  
		Size: 677.1 KB (677056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4f06bf4c5f8d66ee33015b325637664c715fb39d14bca0b8f1db1aa9e8e6fa`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6bd33eda81571a45c11b389b7093c27739bf0525cddb5f18468fe1e46070e07`  
		Last Modified: Tue, 10 Oct 2017 15:14:10 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e2359a65c5bdcef3464da4ba76f03508c0559777b04b57afefd1fd98e4e903`  
		Last Modified: Tue, 10 Oct 2017 15:14:15 GMT  
		Size: 14.5 MB (14462500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a8949d598f6b42a939843b204f2f191dfa48047332f5964d96ce574e98f512`  
		Last Modified: Tue, 10 Oct 2017 15:14:08 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fdb13e68c38a2fd0c525701cc9f1ef11feb98180ee14e48f6b03f779a99315`  
		Last Modified: Tue, 10 Oct 2017 15:14:08 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0c27f22a2420c98a9accc960d70c83ae01a7da1ec37c3b2088d16648b63b01`  
		Last Modified: Tue, 10 Oct 2017 15:14:26 GMT  
		Size: 55.8 MB (55772249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45bd2a623f3ac1c08b4da2b67e349fc8231064f9ebee325cfe099a95f672e24`  
		Last Modified: Tue, 10 Oct 2017 15:14:05 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0eb1091f5b3590530f386acf551659019cc6db423408e371c1633411ec4c62`  
		Last Modified: Tue, 10 Oct 2017 15:14:07 GMT  
		Size: 2.4 MB (2448153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285c6943d977039fc41105313be4444148ef42c4d034adb8398fb8ac89b19c5a`  
		Last Modified: Tue, 10 Oct 2017 15:14:29 GMT  
		Size: 76.4 MB (76398746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c47c7af0d6b956e8dfd0283b5f3a67134bb09a9c501abbb1bbf3fa6adee2878`  
		Last Modified: Tue, 10 Oct 2017 15:14:05 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:6f3aae17b80b4d8d869d98e41dab8e2b99bdd28aaf13ba79c61d23331a72882c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243181991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e87a276ea571870bc386eaa05e12d8289457e51908db7433dbba745556854ba2`
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
# Tue, 10 Oct 2017 02:52:31 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 02:57:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 02:57:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 02:57:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 02:57:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 02:57:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 02:57:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:57:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 02:57:36 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 06:03:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 06:03:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:03:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:03:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 06:03:42 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 06:03:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 06:04:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:04:45 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 06:04:46 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 06:04:46 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 06:04:46 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 06:04:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 06:07:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 06:09:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 06:09:53 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 06:09:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 06:09:54 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 06:09:54 GMT
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
	-	`sha256:1530687313522325042722fc1932820b6297d38fc6e1873a8b5ec3a02647af23`  
		Last Modified: Tue, 10 Oct 2017 03:24:43 GMT  
		Size: 20.8 MB (20809691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97bcaed5bdd39fe82379eb85413727483eb758c69c05a2788a422f4a7234764`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 677.1 KB (677057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c392ab1cac94547a2d31bf880c49c5edbaabeeb87545239f6f6fbc3ad66a6faa`  
		Last Modified: Tue, 10 Oct 2017 03:24:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef9208be00f2b9d607be9fec07789e3f9ff30ade5eaad2d154a7cdec5ec9160`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9a7a8112fbe3d05f9f0fd971f0598a227a8bbd07b717b01931b08b32a5eedb`  
		Last Modified: Tue, 10 Oct 2017 06:26:49 GMT  
		Size: 14.8 MB (14817276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c0810ce6ec8d197de0c61cc4e9e436a494df016ccc70d759c9668813645465`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647dd7b91f557e2f4ec25553a20f59a7b85a7639261a4bee9cef854dd48d166c`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0723eb3b24ed7d326eb8cbdd99d56ba83856d7afc6889e9cd29d11d871704b58`  
		Last Modified: Tue, 10 Oct 2017 06:27:04 GMT  
		Size: 60.1 MB (60116072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc3fffd5956ccd4b1bf44e8ceb7109f923a544afee314080852e65fba879caf`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90f898628665c4a1a7c31adca92b97a5127dba9f8e504d598115d5ccd43f10d`  
		Last Modified: Tue, 10 Oct 2017 06:26:49 GMT  
		Size: 2.4 MB (2448156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a716a1ca68c37cd3983edb47e3175c195c23ebadb9de786706409c1d339f9131`  
		Last Modified: Tue, 10 Oct 2017 06:27:03 GMT  
		Size: 76.4 MB (76418901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61137b158f1c46e755fdbba2629a10d4215a0255baa1834ba50a47b04ede6ffe`  
		Last Modified: Tue, 10 Oct 2017 06:26:44 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:e69baf3ca9ed66d7beed021e7520ec59377f02e82f2bbfa21c0dfa762ca36f9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237930463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66d2a054f34b39fe06368ca38c9c93e48b5ea8f5d324a33718dd2f89ad03161`
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
# Tue, 10 Oct 2017 05:57:51 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 06:13:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 06:13:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 06:13:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 06:13:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 06:13:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 06:14:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 06:14:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 06:14:20 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 11:33:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 11:35:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 11:35:37 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 11:35:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 11:35:50 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 11:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 11:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 11:42:22 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 11:42:26 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 11:42:29 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 11:42:31 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 11:42:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:03:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:03:47 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:03:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:03:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:03:57 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:03:59 GMT
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
	-	`sha256:3d6336c10d3f07936ad578ee9c0adc21f1a752da394da825038a2e7a5bfa5428`  
		Last Modified: Tue, 10 Oct 2017 06:49:06 GMT  
		Size: 22.3 MB (22260552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3588aa54fe51a1bfbb6c14b26b9f9cb9a42be8bfec2203f52f91f3d20be484`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 677.1 KB (677125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e554dd531df46258ff44f1132ecd9e24071d0268edb366b9a1d8e30ee2bd0c`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0d50576f7be3d5ffd700b17ea36df10a41c9f5492085f6ba8033ede7b8248`  
		Last Modified: Tue, 10 Oct 2017 12:54:07 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6305cb6791b4a2c725513caa26ceb322329872d19b674b47717b5c5d12aaad`  
		Last Modified: Tue, 10 Oct 2017 12:54:10 GMT  
		Size: 14.7 MB (14720867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67f2f2ad13c528bc1c3f477e6beb8f0513976848f0d93bfd79ae7cb8af16756`  
		Last Modified: Tue, 10 Oct 2017 12:54:06 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cfebd07c77d1f8b97419212e319b1babf729b9193394a744ebc6112da65763`  
		Last Modified: Tue, 10 Oct 2017 12:54:05 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83260241031ae5a10ca4d351c913e124cbca66f52512e4a731d9e74dffaa51cd`  
		Last Modified: Tue, 10 Oct 2017 12:54:17 GMT  
		Size: 58.1 MB (58106611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff2f437085ad2649b32388399e940faf6062c9c43ea41e88d0027beeda994d7`  
		Last Modified: Tue, 10 Oct 2017 12:54:02 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fd5033649bfd4c686394155e5b284a7024f52ebb735ffc29cbad8aa10d8261`  
		Last Modified: Tue, 10 Oct 2017 12:54:03 GMT  
		Size: 2.4 MB (2448735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7570bd62c49f2e2b2ea06b2f5a80618f64d9b8892c18dd77415a6f6a29907f91`  
		Last Modified: Tue, 10 Oct 2017 12:54:18 GMT  
		Size: 77.3 MB (77290942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ef4f08a363de8ffdb51c064f6a9f6f1f030283c9a9d34e1ba130bad3e5ab81`  
		Last Modified: Tue, 10 Oct 2017 12:54:03 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:c7a2b3fdff0e7a519d7c05deaa15c61916ded519bfaa41fcab8be066457d4b42
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.1 MB (242092219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb8a7aa11c1d739b44285d3cc2206806a460b2cc5c328ee90a18f13d31f2baf`
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
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:03:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:03:07 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:03:08 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:03:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:03:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:03:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:03:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:03:10 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 00:25:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 00:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:25:37 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:25:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 00:25:39 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 00:25:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 00:26:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:26:20 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 00:26:20 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 00:26:20 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 00:26:20 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 00:26:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 00:28:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:28:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 00:28:52 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 00:28:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:28:52 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 00:28:52 GMT
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
	-	`sha256:155b49cf04f75d39da57d4b1cadaba321d4a24db69bc178d4ef405f7d7fccd88`  
		Last Modified: Tue, 10 Oct 2017 00:16:52 GMT  
		Size: 22.2 MB (22214442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a0ecf44a464b94a84e709688342d33e02e0a4da44f87dec4a908b405031d22`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb40778ce152d6fe9606a6c8b5a1458792ee67895b36cdc42380f51c5456362`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5de8648d6097b3266e654f6bbd4df712d4a2b8931aa14136e7faf7bb10cb47`  
		Last Modified: Tue, 10 Oct 2017 00:36:10 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90efaad1bea825335e39a11f1d996d25406e26bef1241edd46b84cbd441d4275`  
		Last Modified: Tue, 10 Oct 2017 00:36:38 GMT  
		Size: 14.8 MB (14814983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407ec38720a469f2194149e5fa52d4c9ce54e30b59cd815f850665eef4b1ec7f`  
		Last Modified: Tue, 10 Oct 2017 00:36:10 GMT  
		Size: 486.8 KB (486817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae99c87361e9507182ab856433adea6fa635cd86b06855e3f3301f63a47d069`  
		Last Modified: Tue, 10 Oct 2017 00:36:09 GMT  
		Size: 8.6 KB (8620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734b6829738d7b66dbe5a83fb9e7cabb8d364c7a57d142b734d3430715c996fa`  
		Last Modified: Tue, 10 Oct 2017 00:36:28 GMT  
		Size: 59.1 MB (59091828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94f9bdb50f7dc4be47e8cf0e9f7ab37e14da1ea4f058a92ad03746730be859c`  
		Last Modified: Tue, 10 Oct 2017 00:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482a08f04bed5e0d93fd8181aee7d71218c8e11058d780d86c9dc5f0bbdf08e3`  
		Last Modified: Tue, 10 Oct 2017 00:36:09 GMT  
		Size: 2.4 MB (2448143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd33d42fb9a8619b4fc4528c5cb1fdbfdfe126b1187188af20951e7ebd52c8cc`  
		Last Modified: Tue, 10 Oct 2017 00:36:26 GMT  
		Size: 79.6 MB (79596921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ad9c8f1bc4cb4b7c8414789e5816f7fb0290a61d2260d59797d0c0e2508218`  
		Last Modified: Tue, 10 Oct 2017 00:36:08 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:b7936c1bc6e7b42934788a75dee33b02b9b93174e36ccb419e06ac0e9cac9d28
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
$ docker pull redmine@sha256:a283b7e2f040acf68ae4a459b0b435cbca3bb24a715e48bcb72b8e825b87609f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244602084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16577b5009ac5e1a2e8c3bc2ea5995c24cca9ea0a9403bc977018da28e0fa850`
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
# Tue, 10 Oct 2017 01:06:53 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 01:11:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 01:11:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 01:11:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 01:11:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 01:11:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 01:11:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:11:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 01:11:54 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:26:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:27:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:27:19 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:27:22 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:27:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:28:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:28:18 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:28:18 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:32:59 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 02:32:59 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 02:33:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:37:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:37:21 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:37:22 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:37:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:37:22 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:37:22 GMT
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
	-	`sha256:11999a5cd70e720c2ee721b22f3e230ad1b6e0453a68ec8e1fdc3eb26644e855`  
		Last Modified: Tue, 10 Oct 2017 01:16:19 GMT  
		Size: 33.1 MB (33126118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb9def37c1cee977aeff499b1dfcb7d99a02a45e536e3073d3edf744c74d703`  
		Last Modified: Tue, 10 Oct 2017 01:16:06 GMT  
		Size: 677.1 KB (677072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e06a095adf02c30450ca6840a157574d5e4ed11a94895e4498d18ff62beba7`  
		Last Modified: Tue, 10 Oct 2017 01:16:06 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91509bf3dde08786c50f7fa5ba6e6aee4fa186a4c4d6b3b7bf1bf7a42ce08b97`  
		Last Modified: Tue, 10 Oct 2017 02:38:22 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab375fd09821cb5daa924ec523b09801af490f7c948bbd96c6437efa508860cd`  
		Last Modified: Tue, 10 Oct 2017 02:38:27 GMT  
		Size: 14.3 MB (14347302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98322cbbda492ad9ff5949d05630487aa5d4fea34565b37baa80b9999e3fedae`  
		Last Modified: Tue, 10 Oct 2017 02:38:21 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67caf762c6d09ab7e624f0ef82f9b6923ecbc22a3a2177cd4e20f6e936a8c382`  
		Last Modified: Tue, 10 Oct 2017 02:38:21 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd96e5affd33d5e93ee3c3397b192328d16151f79ed21d5b5c7f5f91e3832d5`  
		Last Modified: Tue, 10 Oct 2017 02:38:39 GMT  
		Size: 56.6 MB (56580201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7972166653ff0a59dfd9838e78000da17cf2a3911b3f132baac4ca81d848ae`  
		Last Modified: Tue, 10 Oct 2017 02:38:20 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a443a93d60c60b4138e2b93de9b723402b107a4254ceb9261cad0bd919dca9d`  
		Last Modified: Tue, 10 Oct 2017 02:38:50 GMT  
		Size: 2.3 MB (2347479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94863ecc5d82ee598c2210e67f0060648b8178fcc7c85a42dbc9609b8969b0c`  
		Last Modified: Tue, 10 Oct 2017 02:39:07 GMT  
		Size: 77.0 MB (77028362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a062c7fdbba38a5f9d0989c0a6439a33b8a9ef7a08452917d8de4bdc76e9bdc`  
		Last Modified: Tue, 10 Oct 2017 02:38:49 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:671569e6c0de3f0543a344ec1b8a10e7f501df1db8a2c0405a62dc14b9ddccb9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238784508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5dd0e6c8ac26fa5cf8c83518c6b084671ec8cc9a955b1663e459c84878efdad`
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
# Tue, 10 Oct 2017 00:54:45 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:59:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:59:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:59:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:59:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:59:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:59:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:59:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:59:55 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:18:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:19:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:19:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:19:16 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:19:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:20:19 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:20:19 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:24:49 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 02:24:49 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 02:24:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:29:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:29:01 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:29:01 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:29:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:29:01 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:29:02 GMT
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
	-	`sha256:3ce5c37b04ac4d1326953af75c11dab767a77649d3e1e2f1db1ed3501774eab2`  
		Last Modified: Tue, 10 Oct 2017 01:06:51 GMT  
		Size: 32.9 MB (32900852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79114b8bbafee6c35999919ac97244850fa80fc6440d4db1ada4c45fd4894b15`  
		Last Modified: Tue, 10 Oct 2017 01:06:38 GMT  
		Size: 677.1 KB (677069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7048c2985db692ee8bda7202e5d6a4199eb6c10bb0dc54bd7963cddb7cfc2f31`  
		Last Modified: Tue, 10 Oct 2017 01:06:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc14b5ba527be5f0ede1b76c94983ce270023f977b153c8e195270ba60d8c9ad`  
		Last Modified: Tue, 10 Oct 2017 02:30:05 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3998b65f450b3d6870eae51b4c20504b6211620b4e1907134eaef53ae7502a6c`  
		Last Modified: Tue, 10 Oct 2017 02:30:09 GMT  
		Size: 14.1 MB (14134377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45247ce9014463d72a967983523ab5ae9ae5cf29f4ae6cda09ba3809b3fc2d1b`  
		Last Modified: Tue, 10 Oct 2017 02:30:05 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60050653ff564c0b2109e39d6f00d2f71a64c9fc53c0d6733da8a29f68e7f453`  
		Last Modified: Tue, 10 Oct 2017 02:30:04 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fa1dfb8d841faf9a7bf9642eb1d9c3d55ab327f37981dac3e3c0b2030a8cb5`  
		Last Modified: Tue, 10 Oct 2017 02:30:20 GMT  
		Size: 54.3 MB (54317067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e56d0a97b50ab641d73beb35cf923646be355343b61056e581964c7137a46c7`  
		Last Modified: Tue, 10 Oct 2017 02:30:02 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24e4d807d748d91ec5c9e8cf8b5e1b8dc5777dfb04b114148987bef1e505b9c`  
		Last Modified: Tue, 10 Oct 2017 02:30:38 GMT  
		Size: 2.3 MB (2347477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d3248b53d3e71f803caa9f6c570b6e3a876ae86d0cfdf612661a171669c66b`  
		Last Modified: Tue, 10 Oct 2017 02:30:54 GMT  
		Size: 76.5 MB (76473188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d0f508b6b638b4a815cab0c0a171701f17800a3770b2abf977e69682e73056`  
		Last Modified: Tue, 10 Oct 2017 02:30:36 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:63d66314109155ffdd61cc4f4604a60cf4e44927b8f51c80e61e4eef8bcf16c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244409514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93dfafd42d529d2cdd5b85de165af4acc8198282be214717ad964eb3b362f5ba`
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
# Tue, 10 Oct 2017 08:21:33 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 08:32:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 08:32:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 08:32:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 08:32:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 08:32:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 08:33:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:33:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 08:33:04 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 14:49:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 14:50:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:50:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 14:50:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 14:50:12 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 14:50:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 14:52:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:52:15 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 14:52:16 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 15:03:36 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 15:03:37 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 15:03:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 15:13:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 15:13:27 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 15:13:27 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 15:13:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 15:13:29 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 15:13:30 GMT
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
	-	`sha256:4d3455bcd7c209fd6ccdd76124b3737d95d491717e66083ead7abc40230043e9`  
		Last Modified: Tue, 10 Oct 2017 14:20:39 GMT  
		Size: 34.3 MB (34324982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb03eb1e91210b4c9419d89c11627d189d02357b49a452dfddfef0c4a4c0124`  
		Last Modified: Tue, 10 Oct 2017 14:20:16 GMT  
		Size: 677.0 KB (677044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de19c08411775d2cdcf72c054dafc751d40ed924a1ee5d55bf5a10895931211`  
		Last Modified: Tue, 10 Oct 2017 14:20:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8422e93c8881047504bca8253c71316a4df2a787dc50651f25ece08eecf08fe8`  
		Last Modified: Tue, 10 Oct 2017 15:15:26 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14dddeee91c6ef416d7f35e30b739eed0345a782b0a3fdadbf17fc39b2050a4`  
		Last Modified: Tue, 10 Oct 2017 15:15:30 GMT  
		Size: 14.5 MB (14462547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44132f8ec49af7c570e667d67db97c06b7afbd448a88eae697d8b919d4cf022`  
		Last Modified: Tue, 10 Oct 2017 15:15:24 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9954dc129d562ac45973bcf676b8d2563705553b0d44fc5417ab9151a6679d11`  
		Last Modified: Tue, 10 Oct 2017 15:15:24 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a2f84c26c5797d2e8afd3a09d903ad33e2c65213f1ab94845e6435a147f46b`  
		Last Modified: Tue, 10 Oct 2017 15:15:43 GMT  
		Size: 55.8 MB (55772526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5771ebe574238ad0f73d0f6e157c190e45082011d07f24c0b7b3bc8dc0418d29`  
		Last Modified: Tue, 10 Oct 2017 15:15:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095921ef11b234907bafcc939f025744722f505c6e84b7e5cf5ffceefd1dbdaa`  
		Last Modified: Tue, 10 Oct 2017 15:16:50 GMT  
		Size: 2.3 MB (2347108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c05949e589039fe0503b9cfffd43e5f24a58f9ae5474cc0f3412e68c787a8e`  
		Last Modified: Tue, 10 Oct 2017 15:17:12 GMT  
		Size: 77.1 MB (77081978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0722350ea922cae495f33902952c98cd1d6f3b3717fb465cd5c86d68f4e6af5`  
		Last Modified: Tue, 10 Oct 2017 15:16:49 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; 386

```console
$ docker pull redmine@sha256:6c3091ea2b01027402529e8174757358db2f7522ef6d04e8bf0869f039012698
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254609646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3db288f69e48e81e74a3fbfff9168fa1e1519765c999efc25853828657ce9bec`
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
# Tue, 10 Oct 2017 03:16:23 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:20:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:20:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:20:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:20:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:20:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:20:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:20:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:20:17 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 06:10:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 06:11:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:11:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:11:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 06:11:10 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 06:11:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 06:12:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:12:11 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 06:12:11 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 06:20:11 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 06:20:12 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 06:20:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 06:23:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 06:24:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 06:24:37 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 06:24:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 06:24:37 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 06:24:37 GMT
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
	-	`sha256:9a27711d7805a55409e8493b3334394e665bd8076b30a1b95e4edfeca73bed8e`  
		Last Modified: Tue, 10 Oct 2017 03:28:38 GMT  
		Size: 31.7 MB (31665421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786d10ba4684f68bff7dd0a680927acf3a605666536c79ac1e688dcb5fdba2c9`  
		Last Modified: Tue, 10 Oct 2017 03:28:30 GMT  
		Size: 677.0 KB (677049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04f1a75ebeaf318f9bc5aa6148a6e19efc67395d4daa78f0c46236bd58baa52`  
		Last Modified: Tue, 10 Oct 2017 03:28:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8075b97cd0b2291cb17995fd6f65bd08d4ed8979a25cd26e5352212b08d54629`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850e44464f020cbe3a461dfbfbe310c1f3365844c4f46713a8b95901152303e6`  
		Last Modified: Tue, 10 Oct 2017 06:27:42 GMT  
		Size: 14.8 MB (14817261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c391cfae7644809216acc64f2a7a8eab2115f2da20b44f3e70e4e33b61e70cd`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258d95f3f2bcd21512a8c368789087d58ad479a81f434d51bc6166faa558659f`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 8.6 KB (8559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a214071483b44888ecb756b6c1a9e0fa190b5b23c6a457cdc14bd05c5ff25c`  
		Last Modified: Tue, 10 Oct 2017 06:28:01 GMT  
		Size: 60.1 MB (60116239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e970c20ef280057f16ee04d74240d5b5f3a4330b91d1d1ee220475f067e6ae2e`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd96c7d7abbc7e6d36fb0197bd5b9dd1c2ea457e7a294c2a13dd1cec72d9b73`  
		Last Modified: Tue, 10 Oct 2017 06:33:11 GMT  
		Size: 2.3 MB (2347111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4fcc1d99706b8c284a71b44e5582890d9e7aed562bc6296a725308cab10a440`  
		Last Modified: Tue, 10 Oct 2017 06:33:26 GMT  
		Size: 77.1 MB (77091728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7918d5c092d7bebfa84bd71c692136e36ace5725c196f178e7ddd65770035832`  
		Last Modified: Tue, 10 Oct 2017 06:33:09 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:ea04c5b0bff10e67d23cb2c5c51f4b305b096b1578e71118c23ba4381c493715
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251469600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea6683d0e9b19609f0ced24518ad35b638db085c27d64ec088ce6556275ad07`
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
# Tue, 10 Oct 2017 06:32:24 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 06:46:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 06:46:38 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 06:46:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 06:46:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 06:46:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 06:47:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 06:47:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 06:47:15 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:04:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:05:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:05:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:05:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:05:29 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:05:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:12:09 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:12:11 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:33:05 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 12:33:07 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 12:33:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:53:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:53:27 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:53:30 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:53:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:53:40 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:53:43 GMT
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
	-	`sha256:f3f708d4f2710d3ed02137411a55b82912b2db9199444d9c736fb941c11e4475`  
		Last Modified: Tue, 10 Oct 2017 06:50:44 GMT  
		Size: 35.2 MB (35210240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae34d39e07ad0be306001494da5a7662722ccd343b119159fce4931d51c0855f`  
		Last Modified: Tue, 10 Oct 2017 06:50:32 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ca02b23560d1bcb02048dbf1b681247942dfa4dd8f091a6cc5f5aa33d1f63f`  
		Last Modified: Tue, 10 Oct 2017 06:50:32 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb55b48812b84e9d3808c6a5fecd3b8afd8693e422a1b836a46408cac196d5e`  
		Last Modified: Tue, 10 Oct 2017 12:54:51 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c596c1b5ed5efdea67c54fa1b96e358e589a0637cd4cdcb79fb747ade58aed`  
		Last Modified: Tue, 10 Oct 2017 12:54:52 GMT  
		Size: 14.7 MB (14720854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd2011f3fbe50eff158203ce98eb8317e93b2e8a172925629916b687e1d4088`  
		Last Modified: Tue, 10 Oct 2017 12:54:48 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0bd882718cf3062d8a6bad1349e84406874c4296e27921987f671214bd4afe`  
		Last Modified: Tue, 10 Oct 2017 12:54:47 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a11d57c57355d52219c84655adf4b7b90bb4ace3d5ade6509524f92a82644a`  
		Last Modified: Tue, 10 Oct 2017 12:54:59 GMT  
		Size: 58.1 MB (58106085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22aba1dd0247baa4a560a13a9a51eec18e6880444447d6536b22263de3d8eddd`  
		Last Modified: Tue, 10 Oct 2017 12:54:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a377f59aa74f34fee82be814723b2f60da8e45fcc08289def29478af77090559`  
		Last Modified: Tue, 10 Oct 2017 12:55:19 GMT  
		Size: 2.3 MB (2347478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f476708daecb4857c1ffe431b8b42d4768848bc24e336bc668e01605b44e1e58`  
		Last Modified: Tue, 10 Oct 2017 12:55:33 GMT  
		Size: 78.0 MB (77982235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04055dfd284ede3f04034c9124beb439eb068afdfce012a8192062345724f65e`  
		Last Modified: Tue, 10 Oct 2017 12:55:18 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; s390x

```console
$ docker pull redmine@sha256:4be120ca2f7cdec1bc85117f3ccbf0e50e8bc404c105b071cfa52f3dfae66a67
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.2 MB (258247826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cef59bd40b82485b56879c2742b802cc95981d3b35bc108999eb4074d1dd6e2`
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
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:14:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:14:39 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:14:40 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:14:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:14:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:14:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:14:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:14:43 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 00:29:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 00:29:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:29:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:29:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 00:29:17 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 00:29:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 00:29:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:29:51 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 00:29:52 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 00:32:55 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 00:32:55 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 00:32:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 00:35:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:35:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 00:35:54 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 00:35:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:35:55 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 00:35:55 GMT
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
	-	`sha256:3045598121841e5ba1146820d78344a511ab1e1c8e8f4c450c278dc931bbdb2f`  
		Last Modified: Tue, 10 Oct 2017 00:19:49 GMT  
		Size: 37.9 MB (37858742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51502e9db78f9f2d7d02ebb5ebee0194dea7fb571ef0d5780913690c9f9d22f7`  
		Last Modified: Tue, 10 Oct 2017 00:19:38 GMT  
		Size: 677.1 KB (677085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1713889b2caa0a4e45d9121a91d3673e9c3421eff83eecec4512d3cb45cd4898`  
		Last Modified: Tue, 10 Oct 2017 00:19:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e319dae04925fe156c0f47a0e5287220bd34a596bbf6a7b83fcc14668417f0`  
		Last Modified: Tue, 10 Oct 2017 00:37:03 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e7b9e04e6cae9b71c7abc576a1968c5829c52a72c927674ef47cd0eaac92cd`  
		Last Modified: Tue, 10 Oct 2017 00:37:09 GMT  
		Size: 14.8 MB (14814971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8015215fb041b70be153da334fc1febb379361236cc2f849b6324acdfb5d308e`  
		Last Modified: Tue, 10 Oct 2017 00:37:02 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d6914ea013b44c9ca0d5b934a8e020ed48c6313da7568a9b1c0b5f5e7e5be1`  
		Last Modified: Tue, 10 Oct 2017 00:37:02 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94502a4a9e16733556c8b0e537f4bab2c994cf2aa2cfbde0558880fe0ee5593f`  
		Last Modified: Tue, 10 Oct 2017 00:37:19 GMT  
		Size: 59.1 MB (59091548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfc27db989b38419f69d21ae54bfa9b5e1929e999047020616f86fa38db19c2`  
		Last Modified: Tue, 10 Oct 2017 00:37:00 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8681de20329c9b8b0bace0d379c485b3c957a12655e5fc48d85c0bc1d0d06263`  
		Last Modified: Tue, 10 Oct 2017 00:37:32 GMT  
		Size: 2.3 MB (2347107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d546d32a19d8e31401b4e88122f319078f3621695c6c4f53baa4369db858e0cd`  
		Last Modified: Tue, 10 Oct 2017 00:37:46 GMT  
		Size: 80.2 MB (80209521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5165cf84c1d767b5df2198bf355ae3e80b1eae6ebdf02c5c0e367958c830950`  
		Last Modified: Tue, 10 Oct 2017 00:37:31 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7`

```console
$ docker pull redmine@sha256:b7936c1bc6e7b42934788a75dee33b02b9b93174e36ccb419e06ac0e9cac9d28
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
$ docker pull redmine@sha256:a283b7e2f040acf68ae4a459b0b435cbca3bb24a715e48bcb72b8e825b87609f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244602084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16577b5009ac5e1a2e8c3bc2ea5995c24cca9ea0a9403bc977018da28e0fa850`
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
# Tue, 10 Oct 2017 01:06:53 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 01:11:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 01:11:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 01:11:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 01:11:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 01:11:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 01:11:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:11:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 01:11:54 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:26:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:27:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:27:19 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:27:22 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:27:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:28:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:28:18 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:28:18 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:32:59 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 02:32:59 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 02:33:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:37:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:37:21 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:37:22 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:37:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:37:22 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:37:22 GMT
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
	-	`sha256:11999a5cd70e720c2ee721b22f3e230ad1b6e0453a68ec8e1fdc3eb26644e855`  
		Last Modified: Tue, 10 Oct 2017 01:16:19 GMT  
		Size: 33.1 MB (33126118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb9def37c1cee977aeff499b1dfcb7d99a02a45e536e3073d3edf744c74d703`  
		Last Modified: Tue, 10 Oct 2017 01:16:06 GMT  
		Size: 677.1 KB (677072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e06a095adf02c30450ca6840a157574d5e4ed11a94895e4498d18ff62beba7`  
		Last Modified: Tue, 10 Oct 2017 01:16:06 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91509bf3dde08786c50f7fa5ba6e6aee4fa186a4c4d6b3b7bf1bf7a42ce08b97`  
		Last Modified: Tue, 10 Oct 2017 02:38:22 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab375fd09821cb5daa924ec523b09801af490f7c948bbd96c6437efa508860cd`  
		Last Modified: Tue, 10 Oct 2017 02:38:27 GMT  
		Size: 14.3 MB (14347302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98322cbbda492ad9ff5949d05630487aa5d4fea34565b37baa80b9999e3fedae`  
		Last Modified: Tue, 10 Oct 2017 02:38:21 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67caf762c6d09ab7e624f0ef82f9b6923ecbc22a3a2177cd4e20f6e936a8c382`  
		Last Modified: Tue, 10 Oct 2017 02:38:21 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd96e5affd33d5e93ee3c3397b192328d16151f79ed21d5b5c7f5f91e3832d5`  
		Last Modified: Tue, 10 Oct 2017 02:38:39 GMT  
		Size: 56.6 MB (56580201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7972166653ff0a59dfd9838e78000da17cf2a3911b3f132baac4ca81d848ae`  
		Last Modified: Tue, 10 Oct 2017 02:38:20 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a443a93d60c60b4138e2b93de9b723402b107a4254ceb9261cad0bd919dca9d`  
		Last Modified: Tue, 10 Oct 2017 02:38:50 GMT  
		Size: 2.3 MB (2347479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94863ecc5d82ee598c2210e67f0060648b8178fcc7c85a42dbc9609b8969b0c`  
		Last Modified: Tue, 10 Oct 2017 02:39:07 GMT  
		Size: 77.0 MB (77028362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a062c7fdbba38a5f9d0989c0a6439a33b8a9ef7a08452917d8de4bdc76e9bdc`  
		Last Modified: Tue, 10 Oct 2017 02:38:49 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; arm variant v7

```console
$ docker pull redmine@sha256:671569e6c0de3f0543a344ec1b8a10e7f501df1db8a2c0405a62dc14b9ddccb9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238784508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5dd0e6c8ac26fa5cf8c83518c6b084671ec8cc9a955b1663e459c84878efdad`
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
# Tue, 10 Oct 2017 00:54:45 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:59:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:59:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:59:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:59:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:59:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:59:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:59:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:59:55 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:18:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:19:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:19:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:19:16 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:19:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:20:19 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:20:19 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:24:49 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 02:24:49 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 02:24:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:29:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:29:01 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:29:01 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:29:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:29:01 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:29:02 GMT
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
	-	`sha256:3ce5c37b04ac4d1326953af75c11dab767a77649d3e1e2f1db1ed3501774eab2`  
		Last Modified: Tue, 10 Oct 2017 01:06:51 GMT  
		Size: 32.9 MB (32900852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79114b8bbafee6c35999919ac97244850fa80fc6440d4db1ada4c45fd4894b15`  
		Last Modified: Tue, 10 Oct 2017 01:06:38 GMT  
		Size: 677.1 KB (677069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7048c2985db692ee8bda7202e5d6a4199eb6c10bb0dc54bd7963cddb7cfc2f31`  
		Last Modified: Tue, 10 Oct 2017 01:06:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc14b5ba527be5f0ede1b76c94983ce270023f977b153c8e195270ba60d8c9ad`  
		Last Modified: Tue, 10 Oct 2017 02:30:05 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3998b65f450b3d6870eae51b4c20504b6211620b4e1907134eaef53ae7502a6c`  
		Last Modified: Tue, 10 Oct 2017 02:30:09 GMT  
		Size: 14.1 MB (14134377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45247ce9014463d72a967983523ab5ae9ae5cf29f4ae6cda09ba3809b3fc2d1b`  
		Last Modified: Tue, 10 Oct 2017 02:30:05 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60050653ff564c0b2109e39d6f00d2f71a64c9fc53c0d6733da8a29f68e7f453`  
		Last Modified: Tue, 10 Oct 2017 02:30:04 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fa1dfb8d841faf9a7bf9642eb1d9c3d55ab327f37981dac3e3c0b2030a8cb5`  
		Last Modified: Tue, 10 Oct 2017 02:30:20 GMT  
		Size: 54.3 MB (54317067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e56d0a97b50ab641d73beb35cf923646be355343b61056e581964c7137a46c7`  
		Last Modified: Tue, 10 Oct 2017 02:30:02 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24e4d807d748d91ec5c9e8cf8b5e1b8dc5777dfb04b114148987bef1e505b9c`  
		Last Modified: Tue, 10 Oct 2017 02:30:38 GMT  
		Size: 2.3 MB (2347477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d3248b53d3e71f803caa9f6c570b6e3a876ae86d0cfdf612661a171669c66b`  
		Last Modified: Tue, 10 Oct 2017 02:30:54 GMT  
		Size: 76.5 MB (76473188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d0f508b6b638b4a815cab0c0a171701f17800a3770b2abf977e69682e73056`  
		Last Modified: Tue, 10 Oct 2017 02:30:36 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:63d66314109155ffdd61cc4f4604a60cf4e44927b8f51c80e61e4eef8bcf16c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244409514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93dfafd42d529d2cdd5b85de165af4acc8198282be214717ad964eb3b362f5ba`
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
# Tue, 10 Oct 2017 08:21:33 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 08:32:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 08:32:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 08:32:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 08:32:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 08:32:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 08:33:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:33:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 08:33:04 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 14:49:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 14:50:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:50:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 14:50:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 14:50:12 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 14:50:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 14:52:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:52:15 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 14:52:16 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 15:03:36 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 15:03:37 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 15:03:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 15:13:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 15:13:27 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 15:13:27 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 15:13:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 15:13:29 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 15:13:30 GMT
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
	-	`sha256:4d3455bcd7c209fd6ccdd76124b3737d95d491717e66083ead7abc40230043e9`  
		Last Modified: Tue, 10 Oct 2017 14:20:39 GMT  
		Size: 34.3 MB (34324982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb03eb1e91210b4c9419d89c11627d189d02357b49a452dfddfef0c4a4c0124`  
		Last Modified: Tue, 10 Oct 2017 14:20:16 GMT  
		Size: 677.0 KB (677044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de19c08411775d2cdcf72c054dafc751d40ed924a1ee5d55bf5a10895931211`  
		Last Modified: Tue, 10 Oct 2017 14:20:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8422e93c8881047504bca8253c71316a4df2a787dc50651f25ece08eecf08fe8`  
		Last Modified: Tue, 10 Oct 2017 15:15:26 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14dddeee91c6ef416d7f35e30b739eed0345a782b0a3fdadbf17fc39b2050a4`  
		Last Modified: Tue, 10 Oct 2017 15:15:30 GMT  
		Size: 14.5 MB (14462547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44132f8ec49af7c570e667d67db97c06b7afbd448a88eae697d8b919d4cf022`  
		Last Modified: Tue, 10 Oct 2017 15:15:24 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9954dc129d562ac45973bcf676b8d2563705553b0d44fc5417ab9151a6679d11`  
		Last Modified: Tue, 10 Oct 2017 15:15:24 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a2f84c26c5797d2e8afd3a09d903ad33e2c65213f1ab94845e6435a147f46b`  
		Last Modified: Tue, 10 Oct 2017 15:15:43 GMT  
		Size: 55.8 MB (55772526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5771ebe574238ad0f73d0f6e157c190e45082011d07f24c0b7b3bc8dc0418d29`  
		Last Modified: Tue, 10 Oct 2017 15:15:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095921ef11b234907bafcc939f025744722f505c6e84b7e5cf5ffceefd1dbdaa`  
		Last Modified: Tue, 10 Oct 2017 15:16:50 GMT  
		Size: 2.3 MB (2347108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c05949e589039fe0503b9cfffd43e5f24a58f9ae5474cc0f3412e68c787a8e`  
		Last Modified: Tue, 10 Oct 2017 15:17:12 GMT  
		Size: 77.1 MB (77081978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0722350ea922cae495f33902952c98cd1d6f3b3717fb465cd5c86d68f4e6af5`  
		Last Modified: Tue, 10 Oct 2017 15:16:49 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; 386

```console
$ docker pull redmine@sha256:6c3091ea2b01027402529e8174757358db2f7522ef6d04e8bf0869f039012698
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254609646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3db288f69e48e81e74a3fbfff9168fa1e1519765c999efc25853828657ce9bec`
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
# Tue, 10 Oct 2017 03:16:23 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:20:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:20:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:20:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:20:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:20:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:20:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:20:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:20:17 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 06:10:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 06:11:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:11:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:11:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 06:11:10 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 06:11:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 06:12:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:12:11 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 06:12:11 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 06:20:11 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 06:20:12 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 06:20:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 06:23:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 06:24:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 06:24:37 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 06:24:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 06:24:37 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 06:24:37 GMT
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
	-	`sha256:9a27711d7805a55409e8493b3334394e665bd8076b30a1b95e4edfeca73bed8e`  
		Last Modified: Tue, 10 Oct 2017 03:28:38 GMT  
		Size: 31.7 MB (31665421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786d10ba4684f68bff7dd0a680927acf3a605666536c79ac1e688dcb5fdba2c9`  
		Last Modified: Tue, 10 Oct 2017 03:28:30 GMT  
		Size: 677.0 KB (677049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04f1a75ebeaf318f9bc5aa6148a6e19efc67395d4daa78f0c46236bd58baa52`  
		Last Modified: Tue, 10 Oct 2017 03:28:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8075b97cd0b2291cb17995fd6f65bd08d4ed8979a25cd26e5352212b08d54629`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850e44464f020cbe3a461dfbfbe310c1f3365844c4f46713a8b95901152303e6`  
		Last Modified: Tue, 10 Oct 2017 06:27:42 GMT  
		Size: 14.8 MB (14817261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c391cfae7644809216acc64f2a7a8eab2115f2da20b44f3e70e4e33b61e70cd`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258d95f3f2bcd21512a8c368789087d58ad479a81f434d51bc6166faa558659f`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 8.6 KB (8559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a214071483b44888ecb756b6c1a9e0fa190b5b23c6a457cdc14bd05c5ff25c`  
		Last Modified: Tue, 10 Oct 2017 06:28:01 GMT  
		Size: 60.1 MB (60116239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e970c20ef280057f16ee04d74240d5b5f3a4330b91d1d1ee220475f067e6ae2e`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd96c7d7abbc7e6d36fb0197bd5b9dd1c2ea457e7a294c2a13dd1cec72d9b73`  
		Last Modified: Tue, 10 Oct 2017 06:33:11 GMT  
		Size: 2.3 MB (2347111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4fcc1d99706b8c284a71b44e5582890d9e7aed562bc6296a725308cab10a440`  
		Last Modified: Tue, 10 Oct 2017 06:33:26 GMT  
		Size: 77.1 MB (77091728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7918d5c092d7bebfa84bd71c692136e36ace5725c196f178e7ddd65770035832`  
		Last Modified: Tue, 10 Oct 2017 06:33:09 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; ppc64le

```console
$ docker pull redmine@sha256:ea04c5b0bff10e67d23cb2c5c51f4b305b096b1578e71118c23ba4381c493715
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251469600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea6683d0e9b19609f0ced24518ad35b638db085c27d64ec088ce6556275ad07`
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
# Tue, 10 Oct 2017 06:32:24 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 06:46:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 06:46:38 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 06:46:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 06:46:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 06:46:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 06:47:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 06:47:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 06:47:15 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:04:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:05:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:05:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:05:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:05:29 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:05:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:12:09 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:12:11 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:33:05 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 12:33:07 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 12:33:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:53:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:53:27 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:53:30 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:53:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:53:40 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:53:43 GMT
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
	-	`sha256:f3f708d4f2710d3ed02137411a55b82912b2db9199444d9c736fb941c11e4475`  
		Last Modified: Tue, 10 Oct 2017 06:50:44 GMT  
		Size: 35.2 MB (35210240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae34d39e07ad0be306001494da5a7662722ccd343b119159fce4931d51c0855f`  
		Last Modified: Tue, 10 Oct 2017 06:50:32 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ca02b23560d1bcb02048dbf1b681247942dfa4dd8f091a6cc5f5aa33d1f63f`  
		Last Modified: Tue, 10 Oct 2017 06:50:32 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb55b48812b84e9d3808c6a5fecd3b8afd8693e422a1b836a46408cac196d5e`  
		Last Modified: Tue, 10 Oct 2017 12:54:51 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c596c1b5ed5efdea67c54fa1b96e358e589a0637cd4cdcb79fb747ade58aed`  
		Last Modified: Tue, 10 Oct 2017 12:54:52 GMT  
		Size: 14.7 MB (14720854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd2011f3fbe50eff158203ce98eb8317e93b2e8a172925629916b687e1d4088`  
		Last Modified: Tue, 10 Oct 2017 12:54:48 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0bd882718cf3062d8a6bad1349e84406874c4296e27921987f671214bd4afe`  
		Last Modified: Tue, 10 Oct 2017 12:54:47 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a11d57c57355d52219c84655adf4b7b90bb4ace3d5ade6509524f92a82644a`  
		Last Modified: Tue, 10 Oct 2017 12:54:59 GMT  
		Size: 58.1 MB (58106085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22aba1dd0247baa4a560a13a9a51eec18e6880444447d6536b22263de3d8eddd`  
		Last Modified: Tue, 10 Oct 2017 12:54:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a377f59aa74f34fee82be814723b2f60da8e45fcc08289def29478af77090559`  
		Last Modified: Tue, 10 Oct 2017 12:55:19 GMT  
		Size: 2.3 MB (2347478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f476708daecb4857c1ffe431b8b42d4768848bc24e336bc668e01605b44e1e58`  
		Last Modified: Tue, 10 Oct 2017 12:55:33 GMT  
		Size: 78.0 MB (77982235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04055dfd284ede3f04034c9124beb439eb068afdfce012a8192062345724f65e`  
		Last Modified: Tue, 10 Oct 2017 12:55:18 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; s390x

```console
$ docker pull redmine@sha256:4be120ca2f7cdec1bc85117f3ccbf0e50e8bc404c105b071cfa52f3dfae66a67
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.2 MB (258247826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cef59bd40b82485b56879c2742b802cc95981d3b35bc108999eb4074d1dd6e2`
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
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:14:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:14:39 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:14:40 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:14:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:14:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:14:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:14:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:14:43 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 00:29:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 00:29:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:29:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:29:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 00:29:17 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 00:29:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 00:29:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:29:51 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 00:29:52 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 00:32:55 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 00:32:55 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 00:32:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 00:35:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:35:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 00:35:54 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 00:35:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:35:55 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 00:35:55 GMT
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
	-	`sha256:3045598121841e5ba1146820d78344a511ab1e1c8e8f4c450c278dc931bbdb2f`  
		Last Modified: Tue, 10 Oct 2017 00:19:49 GMT  
		Size: 37.9 MB (37858742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51502e9db78f9f2d7d02ebb5ebee0194dea7fb571ef0d5780913690c9f9d22f7`  
		Last Modified: Tue, 10 Oct 2017 00:19:38 GMT  
		Size: 677.1 KB (677085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1713889b2caa0a4e45d9121a91d3673e9c3421eff83eecec4512d3cb45cd4898`  
		Last Modified: Tue, 10 Oct 2017 00:19:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e319dae04925fe156c0f47a0e5287220bd34a596bbf6a7b83fcc14668417f0`  
		Last Modified: Tue, 10 Oct 2017 00:37:03 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e7b9e04e6cae9b71c7abc576a1968c5829c52a72c927674ef47cd0eaac92cd`  
		Last Modified: Tue, 10 Oct 2017 00:37:09 GMT  
		Size: 14.8 MB (14814971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8015215fb041b70be153da334fc1febb379361236cc2f849b6324acdfb5d308e`  
		Last Modified: Tue, 10 Oct 2017 00:37:02 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d6914ea013b44c9ca0d5b934a8e020ed48c6313da7568a9b1c0b5f5e7e5be1`  
		Last Modified: Tue, 10 Oct 2017 00:37:02 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94502a4a9e16733556c8b0e537f4bab2c994cf2aa2cfbde0558880fe0ee5593f`  
		Last Modified: Tue, 10 Oct 2017 00:37:19 GMT  
		Size: 59.1 MB (59091548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfc27db989b38419f69d21ae54bfa9b5e1929e999047020616f86fa38db19c2`  
		Last Modified: Tue, 10 Oct 2017 00:37:00 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8681de20329c9b8b0bace0d379c485b3c957a12655e5fc48d85c0bc1d0d06263`  
		Last Modified: Tue, 10 Oct 2017 00:37:32 GMT  
		Size: 2.3 MB (2347107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d546d32a19d8e31401b4e88122f319078f3621695c6c4f53baa4369db858e0cd`  
		Last Modified: Tue, 10 Oct 2017 00:37:46 GMT  
		Size: 80.2 MB (80209521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5165cf84c1d767b5df2198bf355ae3e80b1eae6ebdf02c5c0e367958c830950`  
		Last Modified: Tue, 10 Oct 2017 00:37:31 GMT  
		Size: 1.7 KB (1710 bytes)  
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
$ docker pull redmine@sha256:206553daea6040999b818c06aca5838d07b0cdd29cce85cee8e9afff1ffb72e3
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
$ docker pull redmine@sha256:411515e8905e032af36e9fa872c8ee4ed046c3206d3e66049de7a361f42478cc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244645452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5b4636824dc2c2d6ce364aec3e96a30013b472336a8b3e7a0481bc7704d7e0`
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
# Tue, 10 Oct 2017 01:06:53 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 01:11:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 01:11:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 01:11:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 01:11:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 01:11:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 01:11:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:11:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 01:11:54 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:26:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:27:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:27:19 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:27:22 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:27:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:28:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:28:18 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:28:18 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:28:18 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 02:28:18 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 02:28:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:32:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:32:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:32:40 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:32:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:32:41 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:32:41 GMT
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
	-	`sha256:11999a5cd70e720c2ee721b22f3e230ad1b6e0453a68ec8e1fdc3eb26644e855`  
		Last Modified: Tue, 10 Oct 2017 01:16:19 GMT  
		Size: 33.1 MB (33126118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb9def37c1cee977aeff499b1dfcb7d99a02a45e536e3073d3edf744c74d703`  
		Last Modified: Tue, 10 Oct 2017 01:16:06 GMT  
		Size: 677.1 KB (677072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e06a095adf02c30450ca6840a157574d5e4ed11a94895e4498d18ff62beba7`  
		Last Modified: Tue, 10 Oct 2017 01:16:06 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91509bf3dde08786c50f7fa5ba6e6aee4fa186a4c4d6b3b7bf1bf7a42ce08b97`  
		Last Modified: Tue, 10 Oct 2017 02:38:22 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab375fd09821cb5daa924ec523b09801af490f7c948bbd96c6437efa508860cd`  
		Last Modified: Tue, 10 Oct 2017 02:38:27 GMT  
		Size: 14.3 MB (14347302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98322cbbda492ad9ff5949d05630487aa5d4fea34565b37baa80b9999e3fedae`  
		Last Modified: Tue, 10 Oct 2017 02:38:21 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67caf762c6d09ab7e624f0ef82f9b6923ecbc22a3a2177cd4e20f6e936a8c382`  
		Last Modified: Tue, 10 Oct 2017 02:38:21 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd96e5affd33d5e93ee3c3397b192328d16151f79ed21d5b5c7f5f91e3832d5`  
		Last Modified: Tue, 10 Oct 2017 02:38:39 GMT  
		Size: 56.6 MB (56580201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7972166653ff0a59dfd9838e78000da17cf2a3911b3f132baac4ca81d848ae`  
		Last Modified: Tue, 10 Oct 2017 02:38:20 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60d1dae920323bb42480b62fc388b5b85d80c4cf59d00bff97efdf62af097b7`  
		Last Modified: Tue, 10 Oct 2017 02:38:21 GMT  
		Size: 2.4 MB (2390598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4685bcae0ed53782e661415cdc52d81481c32d2f028fd9b06da789dcf62221`  
		Last Modified: Tue, 10 Oct 2017 02:38:38 GMT  
		Size: 77.0 MB (77028611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0123ba2ca6d215d2c49c1146c6e634e35247cd406bd806e29195a30bec3bbc`  
		Last Modified: Tue, 10 Oct 2017 02:38:20 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:bd7d38e0c65834c0ee461cea557d17259f14dd20e89dfc71fb2803e12ced8d14
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238827239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d12d9155b6edc8f0eae9fe3831efabbb13aa1632e32590199cbe91c33e8dd1`
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
# Tue, 10 Oct 2017 00:54:45 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:59:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:59:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:59:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:59:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:59:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:59:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:59:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:59:55 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:18:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:19:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:19:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:19:16 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:19:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:20:19 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:20:19 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:20:20 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 02:20:20 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 02:20:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:24:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:24:38 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:24:39 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:24:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:24:39 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:24:39 GMT
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
	-	`sha256:3ce5c37b04ac4d1326953af75c11dab767a77649d3e1e2f1db1ed3501774eab2`  
		Last Modified: Tue, 10 Oct 2017 01:06:51 GMT  
		Size: 32.9 MB (32900852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79114b8bbafee6c35999919ac97244850fa80fc6440d4db1ada4c45fd4894b15`  
		Last Modified: Tue, 10 Oct 2017 01:06:38 GMT  
		Size: 677.1 KB (677069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7048c2985db692ee8bda7202e5d6a4199eb6c10bb0dc54bd7963cddb7cfc2f31`  
		Last Modified: Tue, 10 Oct 2017 01:06:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc14b5ba527be5f0ede1b76c94983ce270023f977b153c8e195270ba60d8c9ad`  
		Last Modified: Tue, 10 Oct 2017 02:30:05 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3998b65f450b3d6870eae51b4c20504b6211620b4e1907134eaef53ae7502a6c`  
		Last Modified: Tue, 10 Oct 2017 02:30:09 GMT  
		Size: 14.1 MB (14134377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45247ce9014463d72a967983523ab5ae9ae5cf29f4ae6cda09ba3809b3fc2d1b`  
		Last Modified: Tue, 10 Oct 2017 02:30:05 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60050653ff564c0b2109e39d6f00d2f71a64c9fc53c0d6733da8a29f68e7f453`  
		Last Modified: Tue, 10 Oct 2017 02:30:04 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fa1dfb8d841faf9a7bf9642eb1d9c3d55ab327f37981dac3e3c0b2030a8cb5`  
		Last Modified: Tue, 10 Oct 2017 02:30:20 GMT  
		Size: 54.3 MB (54317067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e56d0a97b50ab641d73beb35cf923646be355343b61056e581964c7137a46c7`  
		Last Modified: Tue, 10 Oct 2017 02:30:02 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50744bf986cb76b749b8715718bb21ea90fde2496574abcc5a6dd31b6be005d`  
		Last Modified: Tue, 10 Oct 2017 02:30:04 GMT  
		Size: 2.4 MB (2390597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f407a8b1dca57a2c20fb0d46797c7500cc8cbcca19f51b417c4824f8f93a2b`  
		Last Modified: Tue, 10 Oct 2017 02:30:21 GMT  
		Size: 76.5 MB (76472799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa9b9b487bc18013e8b30927054e8bca69935d3ef7321d2b8ae7d858b1ab1ce`  
		Last Modified: Tue, 10 Oct 2017 02:30:04 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:0b8a80afdcecaa20836eaa5dd9630d15bb435b534955629b1927ac1d99b22ab0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244452990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313bc9f57277e07aafb964d90ce58a45adb1a4b04c4bcb7a6e4d21a762da75bb`
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
# Tue, 10 Oct 2017 08:21:33 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 08:32:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 08:32:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 08:32:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 08:32:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 08:32:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 08:33:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:33:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 08:33:04 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 14:49:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 14:50:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:50:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 14:50:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 14:50:12 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 14:50:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 14:52:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:52:15 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 14:52:16 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 14:52:16 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 14:52:17 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 14:52:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 15:03:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 15:03:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 15:03:16 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 15:03:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 15:03:17 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 15:03:18 GMT
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
	-	`sha256:4d3455bcd7c209fd6ccdd76124b3737d95d491717e66083ead7abc40230043e9`  
		Last Modified: Tue, 10 Oct 2017 14:20:39 GMT  
		Size: 34.3 MB (34324982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb03eb1e91210b4c9419d89c11627d189d02357b49a452dfddfef0c4a4c0124`  
		Last Modified: Tue, 10 Oct 2017 14:20:16 GMT  
		Size: 677.0 KB (677044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de19c08411775d2cdcf72c054dafc751d40ed924a1ee5d55bf5a10895931211`  
		Last Modified: Tue, 10 Oct 2017 14:20:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8422e93c8881047504bca8253c71316a4df2a787dc50651f25ece08eecf08fe8`  
		Last Modified: Tue, 10 Oct 2017 15:15:26 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14dddeee91c6ef416d7f35e30b739eed0345a782b0a3fdadbf17fc39b2050a4`  
		Last Modified: Tue, 10 Oct 2017 15:15:30 GMT  
		Size: 14.5 MB (14462547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44132f8ec49af7c570e667d67db97c06b7afbd448a88eae697d8b919d4cf022`  
		Last Modified: Tue, 10 Oct 2017 15:15:24 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9954dc129d562ac45973bcf676b8d2563705553b0d44fc5417ab9151a6679d11`  
		Last Modified: Tue, 10 Oct 2017 15:15:24 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a2f84c26c5797d2e8afd3a09d903ad33e2c65213f1ab94845e6435a147f46b`  
		Last Modified: Tue, 10 Oct 2017 15:15:43 GMT  
		Size: 55.8 MB (55772526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5771ebe574238ad0f73d0f6e157c190e45082011d07f24c0b7b3bc8dc0418d29`  
		Last Modified: Tue, 10 Oct 2017 15:15:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795055e1c918b78cf799283934a1890787c69b63624490058678ea679cbaae0f`  
		Last Modified: Tue, 10 Oct 2017 15:15:23 GMT  
		Size: 2.4 MB (2390319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f140617bd24e2ec7d063ae75633ce7bc4e732405fe86cb6e15d2bd8aec90a3`  
		Last Modified: Tue, 10 Oct 2017 15:15:46 GMT  
		Size: 77.1 MB (77082243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d60e104187bc503ae0109a5082e9c3dcc98f2a6efbd7fb37553ae1a331b6a`  
		Last Modified: Tue, 10 Oct 2017 15:15:21 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:b065bacee2b596e8fd6839c4d0153651a1ce5e93659beef2777b038bebec4779
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254653765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4740c2db3f3f6cde4a82b6befbb5bac55eeb9a672d21c1e1f22ae35e332a30a2`
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
# Tue, 10 Oct 2017 03:16:23 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:20:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:20:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:20:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:20:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:20:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:20:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:20:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:20:17 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 06:10:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 06:11:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:11:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:11:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 06:11:10 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 06:11:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 06:12:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:12:11 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 06:12:11 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 06:12:11 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 06:12:11 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 06:12:15 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 06:15:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 06:16:04 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 06:16:04 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 06:16:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 06:16:05 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 06:16:05 GMT
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
	-	`sha256:9a27711d7805a55409e8493b3334394e665bd8076b30a1b95e4edfeca73bed8e`  
		Last Modified: Tue, 10 Oct 2017 03:28:38 GMT  
		Size: 31.7 MB (31665421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786d10ba4684f68bff7dd0a680927acf3a605666536c79ac1e688dcb5fdba2c9`  
		Last Modified: Tue, 10 Oct 2017 03:28:30 GMT  
		Size: 677.0 KB (677049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04f1a75ebeaf318f9bc5aa6148a6e19efc67395d4daa78f0c46236bd58baa52`  
		Last Modified: Tue, 10 Oct 2017 03:28:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8075b97cd0b2291cb17995fd6f65bd08d4ed8979a25cd26e5352212b08d54629`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850e44464f020cbe3a461dfbfbe310c1f3365844c4f46713a8b95901152303e6`  
		Last Modified: Tue, 10 Oct 2017 06:27:42 GMT  
		Size: 14.8 MB (14817261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c391cfae7644809216acc64f2a7a8eab2115f2da20b44f3e70e4e33b61e70cd`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258d95f3f2bcd21512a8c368789087d58ad479a81f434d51bc6166faa558659f`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 8.6 KB (8559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a214071483b44888ecb756b6c1a9e0fa190b5b23c6a457cdc14bd05c5ff25c`  
		Last Modified: Tue, 10 Oct 2017 06:28:01 GMT  
		Size: 60.1 MB (60116239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e970c20ef280057f16ee04d74240d5b5f3a4330b91d1d1ee220475f067e6ae2e`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f9d8db48c08f7ee4cfe8b17a42cb746ab228858cc2e7757d7de011d01b872e`  
		Last Modified: Tue, 10 Oct 2017 06:27:42 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb3aaf0285ed86a39487e5dddc3a5975381a9a4669a8e749149dff578e2a8ce`  
		Last Modified: Tue, 10 Oct 2017 06:28:01 GMT  
		Size: 77.1 MB (77092648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec637902d29f13a46e062881246a6f67035fc3594738ddd2d7468596d946cd3b`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:4a83ffc0f5ef11f50a7f001450b1655694d8ad23b914debe689b158dce331625
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251513293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51403d79fe8570dca5e016a185358580be5ee15ff9a603f8e02d4541d9173d1c`
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
# Tue, 10 Oct 2017 06:32:24 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 06:46:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 06:46:38 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 06:46:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 06:46:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 06:46:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 06:47:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 06:47:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 06:47:15 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:04:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:05:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:05:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:05:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:05:29 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:05:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:12:09 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:12:11 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:12:13 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 12:12:16 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 12:12:35 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:32:27 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:32:31 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:32:35 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:32:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:32:40 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:32:43 GMT
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
	-	`sha256:f3f708d4f2710d3ed02137411a55b82912b2db9199444d9c736fb941c11e4475`  
		Last Modified: Tue, 10 Oct 2017 06:50:44 GMT  
		Size: 35.2 MB (35210240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae34d39e07ad0be306001494da5a7662722ccd343b119159fce4931d51c0855f`  
		Last Modified: Tue, 10 Oct 2017 06:50:32 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ca02b23560d1bcb02048dbf1b681247942dfa4dd8f091a6cc5f5aa33d1f63f`  
		Last Modified: Tue, 10 Oct 2017 06:50:32 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb55b48812b84e9d3808c6a5fecd3b8afd8693e422a1b836a46408cac196d5e`  
		Last Modified: Tue, 10 Oct 2017 12:54:51 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c596c1b5ed5efdea67c54fa1b96e358e589a0637cd4cdcb79fb747ade58aed`  
		Last Modified: Tue, 10 Oct 2017 12:54:52 GMT  
		Size: 14.7 MB (14720854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd2011f3fbe50eff158203ce98eb8317e93b2e8a172925629916b687e1d4088`  
		Last Modified: Tue, 10 Oct 2017 12:54:48 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0bd882718cf3062d8a6bad1349e84406874c4296e27921987f671214bd4afe`  
		Last Modified: Tue, 10 Oct 2017 12:54:47 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a11d57c57355d52219c84655adf4b7b90bb4ace3d5ade6509524f92a82644a`  
		Last Modified: Tue, 10 Oct 2017 12:54:59 GMT  
		Size: 58.1 MB (58106085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22aba1dd0247baa4a560a13a9a51eec18e6880444447d6536b22263de3d8eddd`  
		Last Modified: Tue, 10 Oct 2017 12:54:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3b715d5bcefd3044de9e3afbc9a5b724682207857ee9b803412019c3f23b7c`  
		Last Modified: Tue, 10 Oct 2017 12:54:45 GMT  
		Size: 2.4 MB (2390600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64beef57d4dcb02af301188873cc3df231880e764ba46a70008dfca2f6b7b070`  
		Last Modified: Tue, 10 Oct 2017 12:55:00 GMT  
		Size: 78.0 MB (77982806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857fe2334c450692443c174d56d76d01410f174af882dcc20c79f7adb1b27926`  
		Last Modified: Tue, 10 Oct 2017 12:54:44 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:98e78b9e76d073b710a5604afeeffb240c26cbf92fff7cdbd7408f969f19cd73
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258290800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef46f8778d08e727b68c5c027e616f560a00e0cff665e534a26a358ed5ccc76`
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
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:14:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:14:39 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:14:40 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:14:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:14:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:14:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:14:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:14:43 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 00:29:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 00:29:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:29:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:29:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 00:29:17 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 00:29:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 00:29:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:29:51 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 00:29:52 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 00:29:52 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 00:29:52 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 00:29:55 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 00:32:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:32:35 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 00:32:36 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 00:32:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:32:36 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 00:32:36 GMT
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
	-	`sha256:3045598121841e5ba1146820d78344a511ab1e1c8e8f4c450c278dc931bbdb2f`  
		Last Modified: Tue, 10 Oct 2017 00:19:49 GMT  
		Size: 37.9 MB (37858742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51502e9db78f9f2d7d02ebb5ebee0194dea7fb571ef0d5780913690c9f9d22f7`  
		Last Modified: Tue, 10 Oct 2017 00:19:38 GMT  
		Size: 677.1 KB (677085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1713889b2caa0a4e45d9121a91d3673e9c3421eff83eecec4512d3cb45cd4898`  
		Last Modified: Tue, 10 Oct 2017 00:19:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e319dae04925fe156c0f47a0e5287220bd34a596bbf6a7b83fcc14668417f0`  
		Last Modified: Tue, 10 Oct 2017 00:37:03 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e7b9e04e6cae9b71c7abc576a1968c5829c52a72c927674ef47cd0eaac92cd`  
		Last Modified: Tue, 10 Oct 2017 00:37:09 GMT  
		Size: 14.8 MB (14814971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8015215fb041b70be153da334fc1febb379361236cc2f849b6324acdfb5d308e`  
		Last Modified: Tue, 10 Oct 2017 00:37:02 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d6914ea013b44c9ca0d5b934a8e020ed48c6313da7568a9b1c0b5f5e7e5be1`  
		Last Modified: Tue, 10 Oct 2017 00:37:02 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94502a4a9e16733556c8b0e537f4bab2c994cf2aa2cfbde0558880fe0ee5593f`  
		Last Modified: Tue, 10 Oct 2017 00:37:19 GMT  
		Size: 59.1 MB (59091548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfc27db989b38419f69d21ae54bfa9b5e1929e999047020616f86fa38db19c2`  
		Last Modified: Tue, 10 Oct 2017 00:37:00 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3fc38f422c3e66e2b434295571f35559a8300ccb27b1d762c83a284e264301`  
		Last Modified: Tue, 10 Oct 2017 00:37:01 GMT  
		Size: 2.4 MB (2390307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152eb9b9786e9aee4dd07fbe62c28e43b6683c7dc82c319b361321800247f6e0`  
		Last Modified: Tue, 10 Oct 2017 00:37:18 GMT  
		Size: 80.2 MB (80209296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c08f0d64d38cbf85363013e109704f5edb4d47a78af53ad27bffbfc164236c`  
		Last Modified: Tue, 10 Oct 2017 00:37:00 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4`

```console
$ docker pull redmine@sha256:206553daea6040999b818c06aca5838d07b0cdd29cce85cee8e9afff1ffb72e3
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
$ docker pull redmine@sha256:411515e8905e032af36e9fa872c8ee4ed046c3206d3e66049de7a361f42478cc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244645452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5b4636824dc2c2d6ce364aec3e96a30013b472336a8b3e7a0481bc7704d7e0`
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
# Tue, 10 Oct 2017 01:06:53 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 01:11:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 01:11:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 01:11:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 01:11:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 01:11:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 01:11:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:11:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 01:11:54 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:26:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:27:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:27:19 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:27:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:27:22 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:27:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:28:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:28:18 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:28:18 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:28:18 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 02:28:18 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 02:28:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:32:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:32:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:32:40 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:32:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:32:41 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:32:41 GMT
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
	-	`sha256:11999a5cd70e720c2ee721b22f3e230ad1b6e0453a68ec8e1fdc3eb26644e855`  
		Last Modified: Tue, 10 Oct 2017 01:16:19 GMT  
		Size: 33.1 MB (33126118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb9def37c1cee977aeff499b1dfcb7d99a02a45e536e3073d3edf744c74d703`  
		Last Modified: Tue, 10 Oct 2017 01:16:06 GMT  
		Size: 677.1 KB (677072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e06a095adf02c30450ca6840a157574d5e4ed11a94895e4498d18ff62beba7`  
		Last Modified: Tue, 10 Oct 2017 01:16:06 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91509bf3dde08786c50f7fa5ba6e6aee4fa186a4c4d6b3b7bf1bf7a42ce08b97`  
		Last Modified: Tue, 10 Oct 2017 02:38:22 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab375fd09821cb5daa924ec523b09801af490f7c948bbd96c6437efa508860cd`  
		Last Modified: Tue, 10 Oct 2017 02:38:27 GMT  
		Size: 14.3 MB (14347302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98322cbbda492ad9ff5949d05630487aa5d4fea34565b37baa80b9999e3fedae`  
		Last Modified: Tue, 10 Oct 2017 02:38:21 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67caf762c6d09ab7e624f0ef82f9b6923ecbc22a3a2177cd4e20f6e936a8c382`  
		Last Modified: Tue, 10 Oct 2017 02:38:21 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd96e5affd33d5e93ee3c3397b192328d16151f79ed21d5b5c7f5f91e3832d5`  
		Last Modified: Tue, 10 Oct 2017 02:38:39 GMT  
		Size: 56.6 MB (56580201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7972166653ff0a59dfd9838e78000da17cf2a3911b3f132baac4ca81d848ae`  
		Last Modified: Tue, 10 Oct 2017 02:38:20 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60d1dae920323bb42480b62fc388b5b85d80c4cf59d00bff97efdf62af097b7`  
		Last Modified: Tue, 10 Oct 2017 02:38:21 GMT  
		Size: 2.4 MB (2390598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4685bcae0ed53782e661415cdc52d81481c32d2f028fd9b06da789dcf62221`  
		Last Modified: Tue, 10 Oct 2017 02:38:38 GMT  
		Size: 77.0 MB (77028611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0123ba2ca6d215d2c49c1146c6e634e35247cd406bd806e29195a30bec3bbc`  
		Last Modified: Tue, 10 Oct 2017 02:38:20 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:bd7d38e0c65834c0ee461cea557d17259f14dd20e89dfc71fb2803e12ced8d14
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238827239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d12d9155b6edc8f0eae9fe3831efabbb13aa1632e32590199cbe91c33e8dd1`
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
# Tue, 10 Oct 2017 00:54:45 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:59:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:59:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:59:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:59:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:59:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:59:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:59:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:59:55 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:18:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:19:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:19:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:19:16 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:19:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:20:19 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:20:19 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:20:20 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 02:20:20 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 02:20:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:24:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:24:38 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:24:39 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:24:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:24:39 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:24:39 GMT
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
	-	`sha256:3ce5c37b04ac4d1326953af75c11dab767a77649d3e1e2f1db1ed3501774eab2`  
		Last Modified: Tue, 10 Oct 2017 01:06:51 GMT  
		Size: 32.9 MB (32900852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79114b8bbafee6c35999919ac97244850fa80fc6440d4db1ada4c45fd4894b15`  
		Last Modified: Tue, 10 Oct 2017 01:06:38 GMT  
		Size: 677.1 KB (677069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7048c2985db692ee8bda7202e5d6a4199eb6c10bb0dc54bd7963cddb7cfc2f31`  
		Last Modified: Tue, 10 Oct 2017 01:06:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc14b5ba527be5f0ede1b76c94983ce270023f977b153c8e195270ba60d8c9ad`  
		Last Modified: Tue, 10 Oct 2017 02:30:05 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3998b65f450b3d6870eae51b4c20504b6211620b4e1907134eaef53ae7502a6c`  
		Last Modified: Tue, 10 Oct 2017 02:30:09 GMT  
		Size: 14.1 MB (14134377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45247ce9014463d72a967983523ab5ae9ae5cf29f4ae6cda09ba3809b3fc2d1b`  
		Last Modified: Tue, 10 Oct 2017 02:30:05 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60050653ff564c0b2109e39d6f00d2f71a64c9fc53c0d6733da8a29f68e7f453`  
		Last Modified: Tue, 10 Oct 2017 02:30:04 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fa1dfb8d841faf9a7bf9642eb1d9c3d55ab327f37981dac3e3c0b2030a8cb5`  
		Last Modified: Tue, 10 Oct 2017 02:30:20 GMT  
		Size: 54.3 MB (54317067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e56d0a97b50ab641d73beb35cf923646be355343b61056e581964c7137a46c7`  
		Last Modified: Tue, 10 Oct 2017 02:30:02 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50744bf986cb76b749b8715718bb21ea90fde2496574abcc5a6dd31b6be005d`  
		Last Modified: Tue, 10 Oct 2017 02:30:04 GMT  
		Size: 2.4 MB (2390597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f407a8b1dca57a2c20fb0d46797c7500cc8cbcca19f51b417c4824f8f93a2b`  
		Last Modified: Tue, 10 Oct 2017 02:30:21 GMT  
		Size: 76.5 MB (76472799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa9b9b487bc18013e8b30927054e8bca69935d3ef7321d2b8ae7d858b1ab1ce`  
		Last Modified: Tue, 10 Oct 2017 02:30:04 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:0b8a80afdcecaa20836eaa5dd9630d15bb435b534955629b1927ac1d99b22ab0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244452990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313bc9f57277e07aafb964d90ce58a45adb1a4b04c4bcb7a6e4d21a762da75bb`
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
# Tue, 10 Oct 2017 08:21:33 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 08:32:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 08:32:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 08:32:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 08:32:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 08:32:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 08:33:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:33:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 08:33:04 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 14:49:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 14:50:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:50:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 14:50:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 14:50:12 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 14:50:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 14:52:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:52:15 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 14:52:16 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 14:52:16 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 14:52:17 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 14:52:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 15:03:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 15:03:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 15:03:16 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 15:03:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 15:03:17 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 15:03:18 GMT
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
	-	`sha256:4d3455bcd7c209fd6ccdd76124b3737d95d491717e66083ead7abc40230043e9`  
		Last Modified: Tue, 10 Oct 2017 14:20:39 GMT  
		Size: 34.3 MB (34324982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb03eb1e91210b4c9419d89c11627d189d02357b49a452dfddfef0c4a4c0124`  
		Last Modified: Tue, 10 Oct 2017 14:20:16 GMT  
		Size: 677.0 KB (677044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de19c08411775d2cdcf72c054dafc751d40ed924a1ee5d55bf5a10895931211`  
		Last Modified: Tue, 10 Oct 2017 14:20:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8422e93c8881047504bca8253c71316a4df2a787dc50651f25ece08eecf08fe8`  
		Last Modified: Tue, 10 Oct 2017 15:15:26 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14dddeee91c6ef416d7f35e30b739eed0345a782b0a3fdadbf17fc39b2050a4`  
		Last Modified: Tue, 10 Oct 2017 15:15:30 GMT  
		Size: 14.5 MB (14462547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44132f8ec49af7c570e667d67db97c06b7afbd448a88eae697d8b919d4cf022`  
		Last Modified: Tue, 10 Oct 2017 15:15:24 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9954dc129d562ac45973bcf676b8d2563705553b0d44fc5417ab9151a6679d11`  
		Last Modified: Tue, 10 Oct 2017 15:15:24 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a2f84c26c5797d2e8afd3a09d903ad33e2c65213f1ab94845e6435a147f46b`  
		Last Modified: Tue, 10 Oct 2017 15:15:43 GMT  
		Size: 55.8 MB (55772526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5771ebe574238ad0f73d0f6e157c190e45082011d07f24c0b7b3bc8dc0418d29`  
		Last Modified: Tue, 10 Oct 2017 15:15:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795055e1c918b78cf799283934a1890787c69b63624490058678ea679cbaae0f`  
		Last Modified: Tue, 10 Oct 2017 15:15:23 GMT  
		Size: 2.4 MB (2390319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f140617bd24e2ec7d063ae75633ce7bc4e732405fe86cb6e15d2bd8aec90a3`  
		Last Modified: Tue, 10 Oct 2017 15:15:46 GMT  
		Size: 77.1 MB (77082243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d60e104187bc503ae0109a5082e9c3dcc98f2a6efbd7fb37553ae1a331b6a`  
		Last Modified: Tue, 10 Oct 2017 15:15:21 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; 386

```console
$ docker pull redmine@sha256:b065bacee2b596e8fd6839c4d0153651a1ce5e93659beef2777b038bebec4779
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254653765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4740c2db3f3f6cde4a82b6befbb5bac55eeb9a672d21c1e1f22ae35e332a30a2`
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
# Tue, 10 Oct 2017 03:16:23 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:20:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:20:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:20:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:20:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:20:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:20:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:20:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:20:17 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 06:10:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 06:11:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:11:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:11:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 06:11:10 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 06:11:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 06:12:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:12:11 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 06:12:11 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 06:12:11 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 06:12:11 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 06:12:15 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 06:15:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 06:16:04 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 06:16:04 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 06:16:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 06:16:05 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 06:16:05 GMT
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
	-	`sha256:9a27711d7805a55409e8493b3334394e665bd8076b30a1b95e4edfeca73bed8e`  
		Last Modified: Tue, 10 Oct 2017 03:28:38 GMT  
		Size: 31.7 MB (31665421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786d10ba4684f68bff7dd0a680927acf3a605666536c79ac1e688dcb5fdba2c9`  
		Last Modified: Tue, 10 Oct 2017 03:28:30 GMT  
		Size: 677.0 KB (677049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04f1a75ebeaf318f9bc5aa6148a6e19efc67395d4daa78f0c46236bd58baa52`  
		Last Modified: Tue, 10 Oct 2017 03:28:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8075b97cd0b2291cb17995fd6f65bd08d4ed8979a25cd26e5352212b08d54629`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850e44464f020cbe3a461dfbfbe310c1f3365844c4f46713a8b95901152303e6`  
		Last Modified: Tue, 10 Oct 2017 06:27:42 GMT  
		Size: 14.8 MB (14817261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c391cfae7644809216acc64f2a7a8eab2115f2da20b44f3e70e4e33b61e70cd`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258d95f3f2bcd21512a8c368789087d58ad479a81f434d51bc6166faa558659f`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 8.6 KB (8559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a214071483b44888ecb756b6c1a9e0fa190b5b23c6a457cdc14bd05c5ff25c`  
		Last Modified: Tue, 10 Oct 2017 06:28:01 GMT  
		Size: 60.1 MB (60116239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e970c20ef280057f16ee04d74240d5b5f3a4330b91d1d1ee220475f067e6ae2e`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f9d8db48c08f7ee4cfe8b17a42cb746ab228858cc2e7757d7de011d01b872e`  
		Last Modified: Tue, 10 Oct 2017 06:27:42 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb3aaf0285ed86a39487e5dddc3a5975381a9a4669a8e749149dff578e2a8ce`  
		Last Modified: Tue, 10 Oct 2017 06:28:01 GMT  
		Size: 77.1 MB (77092648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec637902d29f13a46e062881246a6f67035fc3594738ddd2d7468596d946cd3b`  
		Last Modified: Tue, 10 Oct 2017 06:27:38 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:4a83ffc0f5ef11f50a7f001450b1655694d8ad23b914debe689b158dce331625
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251513293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51403d79fe8570dca5e016a185358580be5ee15ff9a603f8e02d4541d9173d1c`
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
# Tue, 10 Oct 2017 06:32:24 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 06:46:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 06:46:38 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 06:46:46 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 06:46:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 06:46:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 06:47:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 06:47:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 06:47:15 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:04:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:05:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:05:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:05:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:05:29 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:05:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:12:09 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:12:11 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:12:13 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 12:12:16 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 12:12:35 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:32:27 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:32:31 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:32:35 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:32:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:32:40 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:32:43 GMT
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
	-	`sha256:f3f708d4f2710d3ed02137411a55b82912b2db9199444d9c736fb941c11e4475`  
		Last Modified: Tue, 10 Oct 2017 06:50:44 GMT  
		Size: 35.2 MB (35210240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae34d39e07ad0be306001494da5a7662722ccd343b119159fce4931d51c0855f`  
		Last Modified: Tue, 10 Oct 2017 06:50:32 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ca02b23560d1bcb02048dbf1b681247942dfa4dd8f091a6cc5f5aa33d1f63f`  
		Last Modified: Tue, 10 Oct 2017 06:50:32 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb55b48812b84e9d3808c6a5fecd3b8afd8693e422a1b836a46408cac196d5e`  
		Last Modified: Tue, 10 Oct 2017 12:54:51 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c596c1b5ed5efdea67c54fa1b96e358e589a0637cd4cdcb79fb747ade58aed`  
		Last Modified: Tue, 10 Oct 2017 12:54:52 GMT  
		Size: 14.7 MB (14720854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd2011f3fbe50eff158203ce98eb8317e93b2e8a172925629916b687e1d4088`  
		Last Modified: Tue, 10 Oct 2017 12:54:48 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0bd882718cf3062d8a6bad1349e84406874c4296e27921987f671214bd4afe`  
		Last Modified: Tue, 10 Oct 2017 12:54:47 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a11d57c57355d52219c84655adf4b7b90bb4ace3d5ade6509524f92a82644a`  
		Last Modified: Tue, 10 Oct 2017 12:54:59 GMT  
		Size: 58.1 MB (58106085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22aba1dd0247baa4a560a13a9a51eec18e6880444447d6536b22263de3d8eddd`  
		Last Modified: Tue, 10 Oct 2017 12:54:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3b715d5bcefd3044de9e3afbc9a5b724682207857ee9b803412019c3f23b7c`  
		Last Modified: Tue, 10 Oct 2017 12:54:45 GMT  
		Size: 2.4 MB (2390600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64beef57d4dcb02af301188873cc3df231880e764ba46a70008dfca2f6b7b070`  
		Last Modified: Tue, 10 Oct 2017 12:55:00 GMT  
		Size: 78.0 MB (77982806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857fe2334c450692443c174d56d76d01410f174af882dcc20c79f7adb1b27926`  
		Last Modified: Tue, 10 Oct 2017 12:54:44 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; s390x

```console
$ docker pull redmine@sha256:98e78b9e76d073b710a5604afeeffb240c26cbf92fff7cdbd7408f969f19cd73
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258290800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef46f8778d08e727b68c5c027e616f560a00e0cff665e534a26a358ed5ccc76`
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
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:14:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:14:39 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:14:40 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:14:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:14:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:14:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:14:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:14:43 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 00:29:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 00:29:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:29:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:29:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 00:29:17 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 00:29:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 00:29:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:29:51 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 00:29:52 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 00:29:52 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 00:29:52 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 00:29:55 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 00:32:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:32:35 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 00:32:36 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 00:32:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:32:36 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 00:32:36 GMT
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
	-	`sha256:3045598121841e5ba1146820d78344a511ab1e1c8e8f4c450c278dc931bbdb2f`  
		Last Modified: Tue, 10 Oct 2017 00:19:49 GMT  
		Size: 37.9 MB (37858742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51502e9db78f9f2d7d02ebb5ebee0194dea7fb571ef0d5780913690c9f9d22f7`  
		Last Modified: Tue, 10 Oct 2017 00:19:38 GMT  
		Size: 677.1 KB (677085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1713889b2caa0a4e45d9121a91d3673e9c3421eff83eecec4512d3cb45cd4898`  
		Last Modified: Tue, 10 Oct 2017 00:19:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e319dae04925fe156c0f47a0e5287220bd34a596bbf6a7b83fcc14668417f0`  
		Last Modified: Tue, 10 Oct 2017 00:37:03 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e7b9e04e6cae9b71c7abc576a1968c5829c52a72c927674ef47cd0eaac92cd`  
		Last Modified: Tue, 10 Oct 2017 00:37:09 GMT  
		Size: 14.8 MB (14814971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8015215fb041b70be153da334fc1febb379361236cc2f849b6324acdfb5d308e`  
		Last Modified: Tue, 10 Oct 2017 00:37:02 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d6914ea013b44c9ca0d5b934a8e020ed48c6313da7568a9b1c0b5f5e7e5be1`  
		Last Modified: Tue, 10 Oct 2017 00:37:02 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94502a4a9e16733556c8b0e537f4bab2c994cf2aa2cfbde0558880fe0ee5593f`  
		Last Modified: Tue, 10 Oct 2017 00:37:19 GMT  
		Size: 59.1 MB (59091548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfc27db989b38419f69d21ae54bfa9b5e1929e999047020616f86fa38db19c2`  
		Last Modified: Tue, 10 Oct 2017 00:37:00 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3fc38f422c3e66e2b434295571f35559a8300ccb27b1d762c83a284e264301`  
		Last Modified: Tue, 10 Oct 2017 00:37:01 GMT  
		Size: 2.4 MB (2390307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152eb9b9786e9aee4dd07fbe62c28e43b6683c7dc82c319b361321800247f6e0`  
		Last Modified: Tue, 10 Oct 2017 00:37:18 GMT  
		Size: 80.2 MB (80209296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c08f0d64d38cbf85363013e109704f5edb4d47a78af53ad27bffbfc164236c`  
		Last Modified: Tue, 10 Oct 2017 00:37:00 GMT  
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
$ docker pull redmine@sha256:a6bd66deff38b89f7ac0563a00a75a3170f32df2784e90534811fa1526764072
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
$ docker pull redmine@sha256:7a886f1c33b9a69c82804f5be00f7d1fdf0d82137e45dc72c5276de61c0c268b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232452320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e751d16fbedf88e7d3268fba6388f6e1ee32f554d12a221aa8d0448f6f256fa2`
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
# Tue, 10 Oct 2017 00:44:40 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:51:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:51:06 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:51:07 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:51:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:51:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:51:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:51:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:51:10 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:20:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:21:13 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:21:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:21:16 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:21:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:22:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:22:14 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:22:15 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:22:15 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 02:22:15 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 02:22:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:26:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:26:38 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:26:38 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:26:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:26:39 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:26:39 GMT
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
	-	`sha256:f4e8ee24dc2be4389db7b6e1c7dcc619ceeebf7adb6015d008a586b3b0856ffe`  
		Last Modified: Tue, 10 Oct 2017 01:13:53 GMT  
		Size: 21.6 MB (21586499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915ec5dff0ad5fbafc3dd3cc5b86daec9f5f386142dce18b07a528a90377f512`  
		Last Modified: Tue, 10 Oct 2017 01:13:41 GMT  
		Size: 677.1 KB (677114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bb16b1228e97b0e23e075a0d8032e4831185afebad590064dac5c3d613159d`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32ca0633ce70b9dd05e90ba8e32352536bf04fa1910590b68db544ba7c7f7c8`  
		Last Modified: Tue, 10 Oct 2017 02:37:44 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d148a033528e2d96d5dde15956c277f8bd00458311aa4707725b812b70b666`  
		Last Modified: Tue, 10 Oct 2017 02:37:48 GMT  
		Size: 14.3 MB (14347475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc67c640888b69b349c03909bb17a788a0b9bf954f0619f523e2fa5847a48e`  
		Last Modified: Tue, 10 Oct 2017 02:37:43 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a500a2817c6d7492f7e2508e0f39e2caaa8d251fcdbf5e84073957511820ef`  
		Last Modified: Tue, 10 Oct 2017 02:37:42 GMT  
		Size: 7.8 KB (7841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e99ee7e5db68999f11eb19103c9b3aa2e96acca652db7089be17402f77e542`  
		Last Modified: Tue, 10 Oct 2017 02:37:59 GMT  
		Size: 56.6 MB (56580227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0416bca6dbdf7f53733ec20cd37f6e41f250245d89fea20e225bdf32c2368f7d`  
		Last Modified: Tue, 10 Oct 2017 02:37:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d12b87579e241698df6c43ce6766c46cb87b4f3ade0722f14625cd0d7c65fb`  
		Last Modified: Tue, 10 Oct 2017 02:37:43 GMT  
		Size: 2.4 MB (2448736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1078ba93b7cb1e2be55041e28e82a741bb60e36941f5f9011b681c333528f66f`  
		Last Modified: Tue, 10 Oct 2017 02:38:00 GMT  
		Size: 76.3 MB (76316720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0841942025efac0196690219c87b5e604a6d577456c2bfdd30874c368765787c`  
		Last Modified: Tue, 10 Oct 2017 02:37:42 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:4f8ffcb08ea78a01b96b0590dde8287fd5881f677fcf26de39f6e8137c8081eb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226744354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deae419982ffc3faf8f6c8954b86f09fbd6a39f234cce4c3c562f407067694bf`
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
# Tue, 10 Oct 2017 00:34:11 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:39:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:39:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:39:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:39:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:39:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:39:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:39:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:39:55 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:12:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:12:48 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:12:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:12:51 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:12:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:13:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:13:52 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:13:52 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:13:53 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 02:13:53 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 02:13:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:18:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:18:16 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:18:16 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:18:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:18:21 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:18:21 GMT
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
	-	`sha256:611ead5329094b1a8828f9d08c3d65577278eb7b8211edf879ac790f6611da89`  
		Last Modified: Tue, 10 Oct 2017 01:02:38 GMT  
		Size: 21.5 MB (21451279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b66dc570d238e5af798732af4a47ed0996f0085fad068fd347f689989e8363`  
		Last Modified: Tue, 10 Oct 2017 01:02:30 GMT  
		Size: 677.1 KB (677114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab3c15bba76b119ef8fcd8c553b5bd0e07f895dfc5afc311b51c94f1e535085`  
		Last Modified: Tue, 10 Oct 2017 01:02:29 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c96550580d4eb5559ffc20c39e263311b20115439dee9b2401089001aa6c8`  
		Last Modified: Tue, 10 Oct 2017 02:29:22 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf3b66a8f2619b5dc8c88674cadb2b34bdc000792e43035095d279a224fa3f3`  
		Last Modified: Tue, 10 Oct 2017 02:29:25 GMT  
		Size: 14.1 MB (14134402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24d5e56a56f70be1d9b4a49cb15a00285ac5b85bead836788ebe487bdfee279`  
		Last Modified: Tue, 10 Oct 2017 02:29:19 GMT  
		Size: 475.3 KB (475263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ddceaf1bb3b8cc7d1e69a472180746b6cf48542a2e8764d49e14ff62490236e`  
		Last Modified: Tue, 10 Oct 2017 02:29:20 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb86b5a3aa21ef2eb560aa3978df0b30f3648a06b5e2987c387b4ef18a56232`  
		Last Modified: Tue, 10 Oct 2017 02:29:36 GMT  
		Size: 54.3 MB (54317264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158c38b1aa29a7ad4defcc085cf627189a7ac772e04cc051d3b93681eeb750b4`  
		Last Modified: Tue, 10 Oct 2017 02:29:19 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad8824a86b5f211f55434eb02437149c808b012ea209387b5216f5150eda36`  
		Last Modified: Tue, 10 Oct 2017 02:29:21 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a0bac58590bc8b4c9f17efb2324e7db92730f335c6a4524fe8786773f01edd`  
		Last Modified: Tue, 10 Oct 2017 02:29:37 GMT  
		Size: 75.8 MB (75781082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2782a53d7c24e6802ca89aac0f2f5f9a7fad2a4f3b111372230a956d068a6d2c`  
		Last Modified: Tue, 10 Oct 2017 02:29:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:c14fad0a1105f5ead6baaed355499293ed97f4a896e24f71662a85bdc6c99845
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231273878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a18a3832bea9f645da8aeefa389e80dd37b813e606ef5492287f5c05969f72`
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
# Tue, 10 Oct 2017 07:42:51 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 07:52:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 07:52:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 07:52:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 07:52:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 07:52:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 07:52:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:52:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 07:52:40 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 14:37:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 14:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:38:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 14:38:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 14:38:32 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 14:38:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 14:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:40:18 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 14:40:18 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 14:40:19 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 14:40:20 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 14:40:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 14:49:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 14:49:02 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 14:49:02 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 14:49:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 14:49:04 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 14:49:05 GMT
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
	-	`sha256:31301bddc46b4c416da53df315ec834ad36125b28c58abbe6782cde7163f4f8b`  
		Last Modified: Tue, 10 Oct 2017 08:44:02 GMT  
		Size: 21.8 MB (21771846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0113cbd2719244a54d985d24d0eb0bccae891566719c3bc0d62bf5c06d14ab9f`  
		Last Modified: Tue, 10 Oct 2017 08:43:41 GMT  
		Size: 677.1 KB (677056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4f06bf4c5f8d66ee33015b325637664c715fb39d14bca0b8f1db1aa9e8e6fa`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6bd33eda81571a45c11b389b7093c27739bf0525cddb5f18468fe1e46070e07`  
		Last Modified: Tue, 10 Oct 2017 15:14:10 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e2359a65c5bdcef3464da4ba76f03508c0559777b04b57afefd1fd98e4e903`  
		Last Modified: Tue, 10 Oct 2017 15:14:15 GMT  
		Size: 14.5 MB (14462500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a8949d598f6b42a939843b204f2f191dfa48047332f5964d96ce574e98f512`  
		Last Modified: Tue, 10 Oct 2017 15:14:08 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fdb13e68c38a2fd0c525701cc9f1ef11feb98180ee14e48f6b03f779a99315`  
		Last Modified: Tue, 10 Oct 2017 15:14:08 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0c27f22a2420c98a9accc960d70c83ae01a7da1ec37c3b2088d16648b63b01`  
		Last Modified: Tue, 10 Oct 2017 15:14:26 GMT  
		Size: 55.8 MB (55772249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45bd2a623f3ac1c08b4da2b67e349fc8231064f9ebee325cfe099a95f672e24`  
		Last Modified: Tue, 10 Oct 2017 15:14:05 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0eb1091f5b3590530f386acf551659019cc6db423408e371c1633411ec4c62`  
		Last Modified: Tue, 10 Oct 2017 15:14:07 GMT  
		Size: 2.4 MB (2448153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285c6943d977039fc41105313be4444148ef42c4d034adb8398fb8ac89b19c5a`  
		Last Modified: Tue, 10 Oct 2017 15:14:29 GMT  
		Size: 76.4 MB (76398746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c47c7af0d6b956e8dfd0283b5f3a67134bb09a9c501abbb1bbf3fa6adee2878`  
		Last Modified: Tue, 10 Oct 2017 15:14:05 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:6f3aae17b80b4d8d869d98e41dab8e2b99bdd28aaf13ba79c61d23331a72882c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243181991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e87a276ea571870bc386eaa05e12d8289457e51908db7433dbba745556854ba2`
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
# Tue, 10 Oct 2017 02:52:31 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 02:57:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 02:57:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 02:57:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 02:57:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 02:57:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 02:57:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:57:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 02:57:36 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 06:03:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 06:03:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:03:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:03:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 06:03:42 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 06:03:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 06:04:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:04:45 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 06:04:46 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 06:04:46 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 06:04:46 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 06:04:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 06:07:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 06:09:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 06:09:53 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 06:09:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 06:09:54 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 06:09:54 GMT
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
	-	`sha256:1530687313522325042722fc1932820b6297d38fc6e1873a8b5ec3a02647af23`  
		Last Modified: Tue, 10 Oct 2017 03:24:43 GMT  
		Size: 20.8 MB (20809691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97bcaed5bdd39fe82379eb85413727483eb758c69c05a2788a422f4a7234764`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 677.1 KB (677057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c392ab1cac94547a2d31bf880c49c5edbaabeeb87545239f6f6fbc3ad66a6faa`  
		Last Modified: Tue, 10 Oct 2017 03:24:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef9208be00f2b9d607be9fec07789e3f9ff30ade5eaad2d154a7cdec5ec9160`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9a7a8112fbe3d05f9f0fd971f0598a227a8bbd07b717b01931b08b32a5eedb`  
		Last Modified: Tue, 10 Oct 2017 06:26:49 GMT  
		Size: 14.8 MB (14817276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c0810ce6ec8d197de0c61cc4e9e436a494df016ccc70d759c9668813645465`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647dd7b91f557e2f4ec25553a20f59a7b85a7639261a4bee9cef854dd48d166c`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0723eb3b24ed7d326eb8cbdd99d56ba83856d7afc6889e9cd29d11d871704b58`  
		Last Modified: Tue, 10 Oct 2017 06:27:04 GMT  
		Size: 60.1 MB (60116072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc3fffd5956ccd4b1bf44e8ceb7109f923a544afee314080852e65fba879caf`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90f898628665c4a1a7c31adca92b97a5127dba9f8e504d598115d5ccd43f10d`  
		Last Modified: Tue, 10 Oct 2017 06:26:49 GMT  
		Size: 2.4 MB (2448156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a716a1ca68c37cd3983edb47e3175c195c23ebadb9de786706409c1d339f9131`  
		Last Modified: Tue, 10 Oct 2017 06:27:03 GMT  
		Size: 76.4 MB (76418901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61137b158f1c46e755fdbba2629a10d4215a0255baa1834ba50a47b04ede6ffe`  
		Last Modified: Tue, 10 Oct 2017 06:26:44 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:e69baf3ca9ed66d7beed021e7520ec59377f02e82f2bbfa21c0dfa762ca36f9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237930463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66d2a054f34b39fe06368ca38c9c93e48b5ea8f5d324a33718dd2f89ad03161`
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
# Tue, 10 Oct 2017 05:57:51 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 06:13:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 06:13:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 06:13:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 06:13:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 06:13:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 06:14:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 06:14:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 06:14:20 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 11:33:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 11:35:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 11:35:37 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 11:35:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 11:35:50 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 11:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 11:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 11:42:22 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 11:42:26 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 11:42:29 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 11:42:31 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 11:42:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:03:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:03:47 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:03:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:03:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:03:57 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:03:59 GMT
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
	-	`sha256:3d6336c10d3f07936ad578ee9c0adc21f1a752da394da825038a2e7a5bfa5428`  
		Last Modified: Tue, 10 Oct 2017 06:49:06 GMT  
		Size: 22.3 MB (22260552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3588aa54fe51a1bfbb6c14b26b9f9cb9a42be8bfec2203f52f91f3d20be484`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 677.1 KB (677125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e554dd531df46258ff44f1132ecd9e24071d0268edb366b9a1d8e30ee2bd0c`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0d50576f7be3d5ffd700b17ea36df10a41c9f5492085f6ba8033ede7b8248`  
		Last Modified: Tue, 10 Oct 2017 12:54:07 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6305cb6791b4a2c725513caa26ceb322329872d19b674b47717b5c5d12aaad`  
		Last Modified: Tue, 10 Oct 2017 12:54:10 GMT  
		Size: 14.7 MB (14720867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67f2f2ad13c528bc1c3f477e6beb8f0513976848f0d93bfd79ae7cb8af16756`  
		Last Modified: Tue, 10 Oct 2017 12:54:06 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cfebd07c77d1f8b97419212e319b1babf729b9193394a744ebc6112da65763`  
		Last Modified: Tue, 10 Oct 2017 12:54:05 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83260241031ae5a10ca4d351c913e124cbca66f52512e4a731d9e74dffaa51cd`  
		Last Modified: Tue, 10 Oct 2017 12:54:17 GMT  
		Size: 58.1 MB (58106611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff2f437085ad2649b32388399e940faf6062c9c43ea41e88d0027beeda994d7`  
		Last Modified: Tue, 10 Oct 2017 12:54:02 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fd5033649bfd4c686394155e5b284a7024f52ebb735ffc29cbad8aa10d8261`  
		Last Modified: Tue, 10 Oct 2017 12:54:03 GMT  
		Size: 2.4 MB (2448735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7570bd62c49f2e2b2ea06b2f5a80618f64d9b8892c18dd77415a6f6a29907f91`  
		Last Modified: Tue, 10 Oct 2017 12:54:18 GMT  
		Size: 77.3 MB (77290942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ef4f08a363de8ffdb51c064f6a9f6f1f030283c9a9d34e1ba130bad3e5ab81`  
		Last Modified: Tue, 10 Oct 2017 12:54:03 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:c7a2b3fdff0e7a519d7c05deaa15c61916ded519bfaa41fcab8be066457d4b42
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.1 MB (242092219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb8a7aa11c1d739b44285d3cc2206806a460b2cc5c328ee90a18f13d31f2baf`
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
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:03:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:03:07 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:03:08 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:03:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:03:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:03:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:03:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:03:10 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 00:25:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 00:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:25:37 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:25:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 00:25:39 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 00:25:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 00:26:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:26:20 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 00:26:20 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 00:26:20 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 00:26:20 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 00:26:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 00:28:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:28:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 00:28:52 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 00:28:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:28:52 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 00:28:52 GMT
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
	-	`sha256:155b49cf04f75d39da57d4b1cadaba321d4a24db69bc178d4ef405f7d7fccd88`  
		Last Modified: Tue, 10 Oct 2017 00:16:52 GMT  
		Size: 22.2 MB (22214442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a0ecf44a464b94a84e709688342d33e02e0a4da44f87dec4a908b405031d22`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb40778ce152d6fe9606a6c8b5a1458792ee67895b36cdc42380f51c5456362`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5de8648d6097b3266e654f6bbd4df712d4a2b8931aa14136e7faf7bb10cb47`  
		Last Modified: Tue, 10 Oct 2017 00:36:10 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90efaad1bea825335e39a11f1d996d25406e26bef1241edd46b84cbd441d4275`  
		Last Modified: Tue, 10 Oct 2017 00:36:38 GMT  
		Size: 14.8 MB (14814983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407ec38720a469f2194149e5fa52d4c9ce54e30b59cd815f850665eef4b1ec7f`  
		Last Modified: Tue, 10 Oct 2017 00:36:10 GMT  
		Size: 486.8 KB (486817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae99c87361e9507182ab856433adea6fa635cd86b06855e3f3301f63a47d069`  
		Last Modified: Tue, 10 Oct 2017 00:36:09 GMT  
		Size: 8.6 KB (8620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734b6829738d7b66dbe5a83fb9e7cabb8d364c7a57d142b734d3430715c996fa`  
		Last Modified: Tue, 10 Oct 2017 00:36:28 GMT  
		Size: 59.1 MB (59091828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94f9bdb50f7dc4be47e8cf0e9f7ab37e14da1ea4f058a92ad03746730be859c`  
		Last Modified: Tue, 10 Oct 2017 00:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482a08f04bed5e0d93fd8181aee7d71218c8e11058d780d86c9dc5f0bbdf08e3`  
		Last Modified: Tue, 10 Oct 2017 00:36:09 GMT  
		Size: 2.4 MB (2448143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd33d42fb9a8619b4fc4528c5cb1fdbfdfe126b1187188af20951e7ebd52c8cc`  
		Last Modified: Tue, 10 Oct 2017 00:36:26 GMT  
		Size: 79.6 MB (79596921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ad9c8f1bc4cb4b7c8414789e5816f7fb0290a61d2260d59797d0c0e2508218`  
		Last Modified: Tue, 10 Oct 2017 00:36:08 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.2`

```console
$ docker pull redmine@sha256:a6bd66deff38b89f7ac0563a00a75a3170f32df2784e90534811fa1526764072
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
$ docker pull redmine@sha256:7a886f1c33b9a69c82804f5be00f7d1fdf0d82137e45dc72c5276de61c0c268b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232452320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e751d16fbedf88e7d3268fba6388f6e1ee32f554d12a221aa8d0448f6f256fa2`
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
# Tue, 10 Oct 2017 00:44:40 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:51:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:51:06 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:51:07 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:51:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:51:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:51:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:51:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:51:10 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:20:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:21:13 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:21:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:21:16 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:21:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:22:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:22:14 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:22:15 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:22:15 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 02:22:15 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 02:22:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:26:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:26:38 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:26:38 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:26:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:26:39 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:26:39 GMT
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
	-	`sha256:f4e8ee24dc2be4389db7b6e1c7dcc619ceeebf7adb6015d008a586b3b0856ffe`  
		Last Modified: Tue, 10 Oct 2017 01:13:53 GMT  
		Size: 21.6 MB (21586499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915ec5dff0ad5fbafc3dd3cc5b86daec9f5f386142dce18b07a528a90377f512`  
		Last Modified: Tue, 10 Oct 2017 01:13:41 GMT  
		Size: 677.1 KB (677114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bb16b1228e97b0e23e075a0d8032e4831185afebad590064dac5c3d613159d`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32ca0633ce70b9dd05e90ba8e32352536bf04fa1910590b68db544ba7c7f7c8`  
		Last Modified: Tue, 10 Oct 2017 02:37:44 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d148a033528e2d96d5dde15956c277f8bd00458311aa4707725b812b70b666`  
		Last Modified: Tue, 10 Oct 2017 02:37:48 GMT  
		Size: 14.3 MB (14347475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc67c640888b69b349c03909bb17a788a0b9bf954f0619f523e2fa5847a48e`  
		Last Modified: Tue, 10 Oct 2017 02:37:43 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a500a2817c6d7492f7e2508e0f39e2caaa8d251fcdbf5e84073957511820ef`  
		Last Modified: Tue, 10 Oct 2017 02:37:42 GMT  
		Size: 7.8 KB (7841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e99ee7e5db68999f11eb19103c9b3aa2e96acca652db7089be17402f77e542`  
		Last Modified: Tue, 10 Oct 2017 02:37:59 GMT  
		Size: 56.6 MB (56580227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0416bca6dbdf7f53733ec20cd37f6e41f250245d89fea20e225bdf32c2368f7d`  
		Last Modified: Tue, 10 Oct 2017 02:37:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d12b87579e241698df6c43ce6766c46cb87b4f3ade0722f14625cd0d7c65fb`  
		Last Modified: Tue, 10 Oct 2017 02:37:43 GMT  
		Size: 2.4 MB (2448736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1078ba93b7cb1e2be55041e28e82a741bb60e36941f5f9011b681c333528f66f`  
		Last Modified: Tue, 10 Oct 2017 02:38:00 GMT  
		Size: 76.3 MB (76316720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0841942025efac0196690219c87b5e604a6d577456c2bfdd30874c368765787c`  
		Last Modified: Tue, 10 Oct 2017 02:37:42 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:4f8ffcb08ea78a01b96b0590dde8287fd5881f677fcf26de39f6e8137c8081eb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226744354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deae419982ffc3faf8f6c8954b86f09fbd6a39f234cce4c3c562f407067694bf`
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
# Tue, 10 Oct 2017 00:34:11 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:39:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:39:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:39:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:39:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:39:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:39:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:39:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:39:55 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:12:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:12:48 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:12:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:12:51 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:12:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:13:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:13:52 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:13:52 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:13:53 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 02:13:53 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 02:13:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:18:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:18:16 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:18:16 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:18:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:18:21 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:18:21 GMT
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
	-	`sha256:611ead5329094b1a8828f9d08c3d65577278eb7b8211edf879ac790f6611da89`  
		Last Modified: Tue, 10 Oct 2017 01:02:38 GMT  
		Size: 21.5 MB (21451279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b66dc570d238e5af798732af4a47ed0996f0085fad068fd347f689989e8363`  
		Last Modified: Tue, 10 Oct 2017 01:02:30 GMT  
		Size: 677.1 KB (677114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab3c15bba76b119ef8fcd8c553b5bd0e07f895dfc5afc311b51c94f1e535085`  
		Last Modified: Tue, 10 Oct 2017 01:02:29 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c96550580d4eb5559ffc20c39e263311b20115439dee9b2401089001aa6c8`  
		Last Modified: Tue, 10 Oct 2017 02:29:22 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf3b66a8f2619b5dc8c88674cadb2b34bdc000792e43035095d279a224fa3f3`  
		Last Modified: Tue, 10 Oct 2017 02:29:25 GMT  
		Size: 14.1 MB (14134402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24d5e56a56f70be1d9b4a49cb15a00285ac5b85bead836788ebe487bdfee279`  
		Last Modified: Tue, 10 Oct 2017 02:29:19 GMT  
		Size: 475.3 KB (475263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ddceaf1bb3b8cc7d1e69a472180746b6cf48542a2e8764d49e14ff62490236e`  
		Last Modified: Tue, 10 Oct 2017 02:29:20 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb86b5a3aa21ef2eb560aa3978df0b30f3648a06b5e2987c387b4ef18a56232`  
		Last Modified: Tue, 10 Oct 2017 02:29:36 GMT  
		Size: 54.3 MB (54317264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158c38b1aa29a7ad4defcc085cf627189a7ac772e04cc051d3b93681eeb750b4`  
		Last Modified: Tue, 10 Oct 2017 02:29:19 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad8824a86b5f211f55434eb02437149c808b012ea209387b5216f5150eda36`  
		Last Modified: Tue, 10 Oct 2017 02:29:21 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a0bac58590bc8b4c9f17efb2324e7db92730f335c6a4524fe8786773f01edd`  
		Last Modified: Tue, 10 Oct 2017 02:29:37 GMT  
		Size: 75.8 MB (75781082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2782a53d7c24e6802ca89aac0f2f5f9a7fad2a4f3b111372230a956d068a6d2c`  
		Last Modified: Tue, 10 Oct 2017 02:29:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:c14fad0a1105f5ead6baaed355499293ed97f4a896e24f71662a85bdc6c99845
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231273878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a18a3832bea9f645da8aeefa389e80dd37b813e606ef5492287f5c05969f72`
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
# Tue, 10 Oct 2017 07:42:51 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 07:52:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 07:52:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 07:52:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 07:52:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 07:52:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 07:52:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:52:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 07:52:40 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 14:37:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 14:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:38:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 14:38:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 14:38:32 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 14:38:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 14:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:40:18 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 14:40:18 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 14:40:19 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 14:40:20 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 14:40:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 14:49:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 14:49:02 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 14:49:02 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 14:49:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 14:49:04 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 14:49:05 GMT
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
	-	`sha256:31301bddc46b4c416da53df315ec834ad36125b28c58abbe6782cde7163f4f8b`  
		Last Modified: Tue, 10 Oct 2017 08:44:02 GMT  
		Size: 21.8 MB (21771846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0113cbd2719244a54d985d24d0eb0bccae891566719c3bc0d62bf5c06d14ab9f`  
		Last Modified: Tue, 10 Oct 2017 08:43:41 GMT  
		Size: 677.1 KB (677056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4f06bf4c5f8d66ee33015b325637664c715fb39d14bca0b8f1db1aa9e8e6fa`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6bd33eda81571a45c11b389b7093c27739bf0525cddb5f18468fe1e46070e07`  
		Last Modified: Tue, 10 Oct 2017 15:14:10 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e2359a65c5bdcef3464da4ba76f03508c0559777b04b57afefd1fd98e4e903`  
		Last Modified: Tue, 10 Oct 2017 15:14:15 GMT  
		Size: 14.5 MB (14462500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a8949d598f6b42a939843b204f2f191dfa48047332f5964d96ce574e98f512`  
		Last Modified: Tue, 10 Oct 2017 15:14:08 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fdb13e68c38a2fd0c525701cc9f1ef11feb98180ee14e48f6b03f779a99315`  
		Last Modified: Tue, 10 Oct 2017 15:14:08 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0c27f22a2420c98a9accc960d70c83ae01a7da1ec37c3b2088d16648b63b01`  
		Last Modified: Tue, 10 Oct 2017 15:14:26 GMT  
		Size: 55.8 MB (55772249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45bd2a623f3ac1c08b4da2b67e349fc8231064f9ebee325cfe099a95f672e24`  
		Last Modified: Tue, 10 Oct 2017 15:14:05 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0eb1091f5b3590530f386acf551659019cc6db423408e371c1633411ec4c62`  
		Last Modified: Tue, 10 Oct 2017 15:14:07 GMT  
		Size: 2.4 MB (2448153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285c6943d977039fc41105313be4444148ef42c4d034adb8398fb8ac89b19c5a`  
		Last Modified: Tue, 10 Oct 2017 15:14:29 GMT  
		Size: 76.4 MB (76398746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c47c7af0d6b956e8dfd0283b5f3a67134bb09a9c501abbb1bbf3fa6adee2878`  
		Last Modified: Tue, 10 Oct 2017 15:14:05 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; 386

```console
$ docker pull redmine@sha256:6f3aae17b80b4d8d869d98e41dab8e2b99bdd28aaf13ba79c61d23331a72882c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243181991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e87a276ea571870bc386eaa05e12d8289457e51908db7433dbba745556854ba2`
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
# Tue, 10 Oct 2017 02:52:31 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 02:57:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 02:57:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 02:57:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 02:57:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 02:57:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 02:57:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:57:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 02:57:36 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 06:03:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 06:03:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:03:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:03:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 06:03:42 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 06:03:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 06:04:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:04:45 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 06:04:46 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 06:04:46 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 06:04:46 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 06:04:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 06:07:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 06:09:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 06:09:53 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 06:09:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 06:09:54 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 06:09:54 GMT
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
	-	`sha256:1530687313522325042722fc1932820b6297d38fc6e1873a8b5ec3a02647af23`  
		Last Modified: Tue, 10 Oct 2017 03:24:43 GMT  
		Size: 20.8 MB (20809691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97bcaed5bdd39fe82379eb85413727483eb758c69c05a2788a422f4a7234764`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 677.1 KB (677057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c392ab1cac94547a2d31bf880c49c5edbaabeeb87545239f6f6fbc3ad66a6faa`  
		Last Modified: Tue, 10 Oct 2017 03:24:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef9208be00f2b9d607be9fec07789e3f9ff30ade5eaad2d154a7cdec5ec9160`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9a7a8112fbe3d05f9f0fd971f0598a227a8bbd07b717b01931b08b32a5eedb`  
		Last Modified: Tue, 10 Oct 2017 06:26:49 GMT  
		Size: 14.8 MB (14817276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c0810ce6ec8d197de0c61cc4e9e436a494df016ccc70d759c9668813645465`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647dd7b91f557e2f4ec25553a20f59a7b85a7639261a4bee9cef854dd48d166c`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0723eb3b24ed7d326eb8cbdd99d56ba83856d7afc6889e9cd29d11d871704b58`  
		Last Modified: Tue, 10 Oct 2017 06:27:04 GMT  
		Size: 60.1 MB (60116072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc3fffd5956ccd4b1bf44e8ceb7109f923a544afee314080852e65fba879caf`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90f898628665c4a1a7c31adca92b97a5127dba9f8e504d598115d5ccd43f10d`  
		Last Modified: Tue, 10 Oct 2017 06:26:49 GMT  
		Size: 2.4 MB (2448156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a716a1ca68c37cd3983edb47e3175c195c23ebadb9de786706409c1d339f9131`  
		Last Modified: Tue, 10 Oct 2017 06:27:03 GMT  
		Size: 76.4 MB (76418901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61137b158f1c46e755fdbba2629a10d4215a0255baa1834ba50a47b04ede6ffe`  
		Last Modified: Tue, 10 Oct 2017 06:26:44 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:e69baf3ca9ed66d7beed021e7520ec59377f02e82f2bbfa21c0dfa762ca36f9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237930463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66d2a054f34b39fe06368ca38c9c93e48b5ea8f5d324a33718dd2f89ad03161`
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
# Tue, 10 Oct 2017 05:57:51 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 06:13:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 06:13:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 06:13:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 06:13:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 06:13:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 06:14:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 06:14:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 06:14:20 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 11:33:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 11:35:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 11:35:37 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 11:35:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 11:35:50 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 11:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 11:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 11:42:22 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 11:42:26 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 11:42:29 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 11:42:31 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 11:42:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:03:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:03:47 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:03:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:03:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:03:57 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:03:59 GMT
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
	-	`sha256:3d6336c10d3f07936ad578ee9c0adc21f1a752da394da825038a2e7a5bfa5428`  
		Last Modified: Tue, 10 Oct 2017 06:49:06 GMT  
		Size: 22.3 MB (22260552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3588aa54fe51a1bfbb6c14b26b9f9cb9a42be8bfec2203f52f91f3d20be484`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 677.1 KB (677125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e554dd531df46258ff44f1132ecd9e24071d0268edb366b9a1d8e30ee2bd0c`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0d50576f7be3d5ffd700b17ea36df10a41c9f5492085f6ba8033ede7b8248`  
		Last Modified: Tue, 10 Oct 2017 12:54:07 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6305cb6791b4a2c725513caa26ceb322329872d19b674b47717b5c5d12aaad`  
		Last Modified: Tue, 10 Oct 2017 12:54:10 GMT  
		Size: 14.7 MB (14720867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67f2f2ad13c528bc1c3f477e6beb8f0513976848f0d93bfd79ae7cb8af16756`  
		Last Modified: Tue, 10 Oct 2017 12:54:06 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cfebd07c77d1f8b97419212e319b1babf729b9193394a744ebc6112da65763`  
		Last Modified: Tue, 10 Oct 2017 12:54:05 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83260241031ae5a10ca4d351c913e124cbca66f52512e4a731d9e74dffaa51cd`  
		Last Modified: Tue, 10 Oct 2017 12:54:17 GMT  
		Size: 58.1 MB (58106611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff2f437085ad2649b32388399e940faf6062c9c43ea41e88d0027beeda994d7`  
		Last Modified: Tue, 10 Oct 2017 12:54:02 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fd5033649bfd4c686394155e5b284a7024f52ebb735ffc29cbad8aa10d8261`  
		Last Modified: Tue, 10 Oct 2017 12:54:03 GMT  
		Size: 2.4 MB (2448735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7570bd62c49f2e2b2ea06b2f5a80618f64d9b8892c18dd77415a6f6a29907f91`  
		Last Modified: Tue, 10 Oct 2017 12:54:18 GMT  
		Size: 77.3 MB (77290942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ef4f08a363de8ffdb51c064f6a9f6f1f030283c9a9d34e1ba130bad3e5ab81`  
		Last Modified: Tue, 10 Oct 2017 12:54:03 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; s390x

```console
$ docker pull redmine@sha256:c7a2b3fdff0e7a519d7c05deaa15c61916ded519bfaa41fcab8be066457d4b42
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.1 MB (242092219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb8a7aa11c1d739b44285d3cc2206806a460b2cc5c328ee90a18f13d31f2baf`
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
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:03:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:03:07 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:03:08 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:03:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:03:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:03:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:03:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:03:10 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 00:25:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 00:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:25:37 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:25:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 00:25:39 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 00:25:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 00:26:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:26:20 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 00:26:20 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 00:26:20 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 00:26:20 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 00:26:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 00:28:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:28:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 00:28:52 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 00:28:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:28:52 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 00:28:52 GMT
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
	-	`sha256:155b49cf04f75d39da57d4b1cadaba321d4a24db69bc178d4ef405f7d7fccd88`  
		Last Modified: Tue, 10 Oct 2017 00:16:52 GMT  
		Size: 22.2 MB (22214442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a0ecf44a464b94a84e709688342d33e02e0a4da44f87dec4a908b405031d22`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb40778ce152d6fe9606a6c8b5a1458792ee67895b36cdc42380f51c5456362`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5de8648d6097b3266e654f6bbd4df712d4a2b8931aa14136e7faf7bb10cb47`  
		Last Modified: Tue, 10 Oct 2017 00:36:10 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90efaad1bea825335e39a11f1d996d25406e26bef1241edd46b84cbd441d4275`  
		Last Modified: Tue, 10 Oct 2017 00:36:38 GMT  
		Size: 14.8 MB (14814983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407ec38720a469f2194149e5fa52d4c9ce54e30b59cd815f850665eef4b1ec7f`  
		Last Modified: Tue, 10 Oct 2017 00:36:10 GMT  
		Size: 486.8 KB (486817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae99c87361e9507182ab856433adea6fa635cd86b06855e3f3301f63a47d069`  
		Last Modified: Tue, 10 Oct 2017 00:36:09 GMT  
		Size: 8.6 KB (8620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734b6829738d7b66dbe5a83fb9e7cabb8d364c7a57d142b734d3430715c996fa`  
		Last Modified: Tue, 10 Oct 2017 00:36:28 GMT  
		Size: 59.1 MB (59091828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94f9bdb50f7dc4be47e8cf0e9f7ab37e14da1ea4f058a92ad03746730be859c`  
		Last Modified: Tue, 10 Oct 2017 00:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482a08f04bed5e0d93fd8181aee7d71218c8e11058d780d86c9dc5f0bbdf08e3`  
		Last Modified: Tue, 10 Oct 2017 00:36:09 GMT  
		Size: 2.4 MB (2448143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd33d42fb9a8619b4fc4528c5cb1fdbfdfe126b1187188af20951e7ebd52c8cc`  
		Last Modified: Tue, 10 Oct 2017 00:36:26 GMT  
		Size: 79.6 MB (79596921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ad9c8f1bc4cb4b7c8414789e5816f7fb0290a61d2260d59797d0c0e2508218`  
		Last Modified: Tue, 10 Oct 2017 00:36:08 GMT  
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
$ docker pull redmine@sha256:a6bd66deff38b89f7ac0563a00a75a3170f32df2784e90534811fa1526764072
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
$ docker pull redmine@sha256:7a886f1c33b9a69c82804f5be00f7d1fdf0d82137e45dc72c5276de61c0c268b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232452320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e751d16fbedf88e7d3268fba6388f6e1ee32f554d12a221aa8d0448f6f256fa2`
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
# Tue, 10 Oct 2017 00:44:40 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:51:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:51:06 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:51:07 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:51:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:51:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:51:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:51:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:51:10 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:20:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:21:13 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:21:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:21:16 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:21:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:22:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:22:14 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:22:15 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:22:15 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 02:22:15 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 02:22:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:26:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:26:38 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:26:38 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:26:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:26:39 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:26:39 GMT
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
	-	`sha256:f4e8ee24dc2be4389db7b6e1c7dcc619ceeebf7adb6015d008a586b3b0856ffe`  
		Last Modified: Tue, 10 Oct 2017 01:13:53 GMT  
		Size: 21.6 MB (21586499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915ec5dff0ad5fbafc3dd3cc5b86daec9f5f386142dce18b07a528a90377f512`  
		Last Modified: Tue, 10 Oct 2017 01:13:41 GMT  
		Size: 677.1 KB (677114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bb16b1228e97b0e23e075a0d8032e4831185afebad590064dac5c3d613159d`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32ca0633ce70b9dd05e90ba8e32352536bf04fa1910590b68db544ba7c7f7c8`  
		Last Modified: Tue, 10 Oct 2017 02:37:44 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d148a033528e2d96d5dde15956c277f8bd00458311aa4707725b812b70b666`  
		Last Modified: Tue, 10 Oct 2017 02:37:48 GMT  
		Size: 14.3 MB (14347475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc67c640888b69b349c03909bb17a788a0b9bf954f0619f523e2fa5847a48e`  
		Last Modified: Tue, 10 Oct 2017 02:37:43 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a500a2817c6d7492f7e2508e0f39e2caaa8d251fcdbf5e84073957511820ef`  
		Last Modified: Tue, 10 Oct 2017 02:37:42 GMT  
		Size: 7.8 KB (7841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e99ee7e5db68999f11eb19103c9b3aa2e96acca652db7089be17402f77e542`  
		Last Modified: Tue, 10 Oct 2017 02:37:59 GMT  
		Size: 56.6 MB (56580227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0416bca6dbdf7f53733ec20cd37f6e41f250245d89fea20e225bdf32c2368f7d`  
		Last Modified: Tue, 10 Oct 2017 02:37:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d12b87579e241698df6c43ce6766c46cb87b4f3ade0722f14625cd0d7c65fb`  
		Last Modified: Tue, 10 Oct 2017 02:37:43 GMT  
		Size: 2.4 MB (2448736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1078ba93b7cb1e2be55041e28e82a741bb60e36941f5f9011b681c333528f66f`  
		Last Modified: Tue, 10 Oct 2017 02:38:00 GMT  
		Size: 76.3 MB (76316720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0841942025efac0196690219c87b5e604a6d577456c2bfdd30874c368765787c`  
		Last Modified: Tue, 10 Oct 2017 02:37:42 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:4f8ffcb08ea78a01b96b0590dde8287fd5881f677fcf26de39f6e8137c8081eb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226744354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deae419982ffc3faf8f6c8954b86f09fbd6a39f234cce4c3c562f407067694bf`
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
# Tue, 10 Oct 2017 00:34:11 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:39:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:39:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:39:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:39:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:39:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:39:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:39:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:39:55 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:12:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 02:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:12:48 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:12:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:12:51 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 02:12:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 02:13:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:13:52 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 02:13:52 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 02:13:53 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 02:13:53 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 02:13:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 02:18:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 02:18:16 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 02:18:16 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 02:18:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:18:21 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 02:18:21 GMT
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
	-	`sha256:611ead5329094b1a8828f9d08c3d65577278eb7b8211edf879ac790f6611da89`  
		Last Modified: Tue, 10 Oct 2017 01:02:38 GMT  
		Size: 21.5 MB (21451279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b66dc570d238e5af798732af4a47ed0996f0085fad068fd347f689989e8363`  
		Last Modified: Tue, 10 Oct 2017 01:02:30 GMT  
		Size: 677.1 KB (677114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab3c15bba76b119ef8fcd8c553b5bd0e07f895dfc5afc311b51c94f1e535085`  
		Last Modified: Tue, 10 Oct 2017 01:02:29 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c96550580d4eb5559ffc20c39e263311b20115439dee9b2401089001aa6c8`  
		Last Modified: Tue, 10 Oct 2017 02:29:22 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf3b66a8f2619b5dc8c88674cadb2b34bdc000792e43035095d279a224fa3f3`  
		Last Modified: Tue, 10 Oct 2017 02:29:25 GMT  
		Size: 14.1 MB (14134402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24d5e56a56f70be1d9b4a49cb15a00285ac5b85bead836788ebe487bdfee279`  
		Last Modified: Tue, 10 Oct 2017 02:29:19 GMT  
		Size: 475.3 KB (475263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ddceaf1bb3b8cc7d1e69a472180746b6cf48542a2e8764d49e14ff62490236e`  
		Last Modified: Tue, 10 Oct 2017 02:29:20 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb86b5a3aa21ef2eb560aa3978df0b30f3648a06b5e2987c387b4ef18a56232`  
		Last Modified: Tue, 10 Oct 2017 02:29:36 GMT  
		Size: 54.3 MB (54317264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158c38b1aa29a7ad4defcc085cf627189a7ac772e04cc051d3b93681eeb750b4`  
		Last Modified: Tue, 10 Oct 2017 02:29:19 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad8824a86b5f211f55434eb02437149c808b012ea209387b5216f5150eda36`  
		Last Modified: Tue, 10 Oct 2017 02:29:21 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a0bac58590bc8b4c9f17efb2324e7db92730f335c6a4524fe8786773f01edd`  
		Last Modified: Tue, 10 Oct 2017 02:29:37 GMT  
		Size: 75.8 MB (75781082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2782a53d7c24e6802ca89aac0f2f5f9a7fad2a4f3b111372230a956d068a6d2c`  
		Last Modified: Tue, 10 Oct 2017 02:29:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:c14fad0a1105f5ead6baaed355499293ed97f4a896e24f71662a85bdc6c99845
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231273878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a18a3832bea9f645da8aeefa389e80dd37b813e606ef5492287f5c05969f72`
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
# Tue, 10 Oct 2017 07:42:51 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 07:52:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 07:52:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 07:52:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 07:52:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 07:52:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 07:52:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:52:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 07:52:40 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 14:37:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 14:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:38:26 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 14:38:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 14:38:32 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 14:38:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 14:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 14:40:18 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 14:40:18 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 14:40:19 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 14:40:20 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 14:40:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 14:49:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 14:49:02 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 14:49:02 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 14:49:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 14:49:04 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 14:49:05 GMT
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
	-	`sha256:31301bddc46b4c416da53df315ec834ad36125b28c58abbe6782cde7163f4f8b`  
		Last Modified: Tue, 10 Oct 2017 08:44:02 GMT  
		Size: 21.8 MB (21771846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0113cbd2719244a54d985d24d0eb0bccae891566719c3bc0d62bf5c06d14ab9f`  
		Last Modified: Tue, 10 Oct 2017 08:43:41 GMT  
		Size: 677.1 KB (677056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4f06bf4c5f8d66ee33015b325637664c715fb39d14bca0b8f1db1aa9e8e6fa`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6bd33eda81571a45c11b389b7093c27739bf0525cddb5f18468fe1e46070e07`  
		Last Modified: Tue, 10 Oct 2017 15:14:10 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e2359a65c5bdcef3464da4ba76f03508c0559777b04b57afefd1fd98e4e903`  
		Last Modified: Tue, 10 Oct 2017 15:14:15 GMT  
		Size: 14.5 MB (14462500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a8949d598f6b42a939843b204f2f191dfa48047332f5964d96ce574e98f512`  
		Last Modified: Tue, 10 Oct 2017 15:14:08 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fdb13e68c38a2fd0c525701cc9f1ef11feb98180ee14e48f6b03f779a99315`  
		Last Modified: Tue, 10 Oct 2017 15:14:08 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0c27f22a2420c98a9accc960d70c83ae01a7da1ec37c3b2088d16648b63b01`  
		Last Modified: Tue, 10 Oct 2017 15:14:26 GMT  
		Size: 55.8 MB (55772249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45bd2a623f3ac1c08b4da2b67e349fc8231064f9ebee325cfe099a95f672e24`  
		Last Modified: Tue, 10 Oct 2017 15:14:05 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0eb1091f5b3590530f386acf551659019cc6db423408e371c1633411ec4c62`  
		Last Modified: Tue, 10 Oct 2017 15:14:07 GMT  
		Size: 2.4 MB (2448153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285c6943d977039fc41105313be4444148ef42c4d034adb8398fb8ac89b19c5a`  
		Last Modified: Tue, 10 Oct 2017 15:14:29 GMT  
		Size: 76.4 MB (76398746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c47c7af0d6b956e8dfd0283b5f3a67134bb09a9c501abbb1bbf3fa6adee2878`  
		Last Modified: Tue, 10 Oct 2017 15:14:05 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:6f3aae17b80b4d8d869d98e41dab8e2b99bdd28aaf13ba79c61d23331a72882c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243181991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e87a276ea571870bc386eaa05e12d8289457e51908db7433dbba745556854ba2`
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
# Tue, 10 Oct 2017 02:52:31 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 02:57:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 02:57:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 02:57:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 02:57:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 02:57:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 02:57:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:57:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 02:57:36 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 06:03:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 06:03:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:03:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:03:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 06:03:42 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 06:03:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 06:04:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:04:45 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 06:04:46 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 06:04:46 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 06:04:46 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 06:04:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 06:07:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 06:09:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 06:09:53 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 06:09:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 06:09:54 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 06:09:54 GMT
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
	-	`sha256:1530687313522325042722fc1932820b6297d38fc6e1873a8b5ec3a02647af23`  
		Last Modified: Tue, 10 Oct 2017 03:24:43 GMT  
		Size: 20.8 MB (20809691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97bcaed5bdd39fe82379eb85413727483eb758c69c05a2788a422f4a7234764`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 677.1 KB (677057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c392ab1cac94547a2d31bf880c49c5edbaabeeb87545239f6f6fbc3ad66a6faa`  
		Last Modified: Tue, 10 Oct 2017 03:24:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef9208be00f2b9d607be9fec07789e3f9ff30ade5eaad2d154a7cdec5ec9160`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9a7a8112fbe3d05f9f0fd971f0598a227a8bbd07b717b01931b08b32a5eedb`  
		Last Modified: Tue, 10 Oct 2017 06:26:49 GMT  
		Size: 14.8 MB (14817276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c0810ce6ec8d197de0c61cc4e9e436a494df016ccc70d759c9668813645465`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647dd7b91f557e2f4ec25553a20f59a7b85a7639261a4bee9cef854dd48d166c`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0723eb3b24ed7d326eb8cbdd99d56ba83856d7afc6889e9cd29d11d871704b58`  
		Last Modified: Tue, 10 Oct 2017 06:27:04 GMT  
		Size: 60.1 MB (60116072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc3fffd5956ccd4b1bf44e8ceb7109f923a544afee314080852e65fba879caf`  
		Last Modified: Tue, 10 Oct 2017 06:26:45 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90f898628665c4a1a7c31adca92b97a5127dba9f8e504d598115d5ccd43f10d`  
		Last Modified: Tue, 10 Oct 2017 06:26:49 GMT  
		Size: 2.4 MB (2448156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a716a1ca68c37cd3983edb47e3175c195c23ebadb9de786706409c1d339f9131`  
		Last Modified: Tue, 10 Oct 2017 06:27:03 GMT  
		Size: 76.4 MB (76418901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61137b158f1c46e755fdbba2629a10d4215a0255baa1834ba50a47b04ede6ffe`  
		Last Modified: Tue, 10 Oct 2017 06:26:44 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:e69baf3ca9ed66d7beed021e7520ec59377f02e82f2bbfa21c0dfa762ca36f9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237930463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66d2a054f34b39fe06368ca38c9c93e48b5ea8f5d324a33718dd2f89ad03161`
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
# Tue, 10 Oct 2017 05:57:51 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 06:13:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 06:13:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 06:13:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 06:13:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 06:13:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 06:14:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 06:14:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 06:14:20 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 11:33:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 11:35:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 11:35:37 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 11:35:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 11:35:50 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 11:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 11:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 11:42:22 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 11:42:26 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 11:42:29 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 11:42:31 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 11:42:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:03:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:03:47 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:03:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:03:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:03:57 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:03:59 GMT
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
	-	`sha256:3d6336c10d3f07936ad578ee9c0adc21f1a752da394da825038a2e7a5bfa5428`  
		Last Modified: Tue, 10 Oct 2017 06:49:06 GMT  
		Size: 22.3 MB (22260552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3588aa54fe51a1bfbb6c14b26b9f9cb9a42be8bfec2203f52f91f3d20be484`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 677.1 KB (677125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e554dd531df46258ff44f1132ecd9e24071d0268edb366b9a1d8e30ee2bd0c`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0d50576f7be3d5ffd700b17ea36df10a41c9f5492085f6ba8033ede7b8248`  
		Last Modified: Tue, 10 Oct 2017 12:54:07 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6305cb6791b4a2c725513caa26ceb322329872d19b674b47717b5c5d12aaad`  
		Last Modified: Tue, 10 Oct 2017 12:54:10 GMT  
		Size: 14.7 MB (14720867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67f2f2ad13c528bc1c3f477e6beb8f0513976848f0d93bfd79ae7cb8af16756`  
		Last Modified: Tue, 10 Oct 2017 12:54:06 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cfebd07c77d1f8b97419212e319b1babf729b9193394a744ebc6112da65763`  
		Last Modified: Tue, 10 Oct 2017 12:54:05 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83260241031ae5a10ca4d351c913e124cbca66f52512e4a731d9e74dffaa51cd`  
		Last Modified: Tue, 10 Oct 2017 12:54:17 GMT  
		Size: 58.1 MB (58106611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff2f437085ad2649b32388399e940faf6062c9c43ea41e88d0027beeda994d7`  
		Last Modified: Tue, 10 Oct 2017 12:54:02 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fd5033649bfd4c686394155e5b284a7024f52ebb735ffc29cbad8aa10d8261`  
		Last Modified: Tue, 10 Oct 2017 12:54:03 GMT  
		Size: 2.4 MB (2448735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7570bd62c49f2e2b2ea06b2f5a80618f64d9b8892c18dd77415a6f6a29907f91`  
		Last Modified: Tue, 10 Oct 2017 12:54:18 GMT  
		Size: 77.3 MB (77290942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ef4f08a363de8ffdb51c064f6a9f6f1f030283c9a9d34e1ba130bad3e5ab81`  
		Last Modified: Tue, 10 Oct 2017 12:54:03 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:c7a2b3fdff0e7a519d7c05deaa15c61916ded519bfaa41fcab8be066457d4b42
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.1 MB (242092219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb8a7aa11c1d739b44285d3cc2206806a460b2cc5c328ee90a18f13d31f2baf`
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
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:03:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:03:07 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:03:08 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:03:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:03:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:03:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:03:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:03:10 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 00:25:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 00:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:25:37 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:25:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 00:25:39 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 00:25:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 00:26:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:26:20 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 00:26:20 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 00:26:20 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 00:26:20 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 00:26:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 00:28:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:28:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 00:28:52 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 00:28:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:28:52 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 00:28:52 GMT
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
	-	`sha256:155b49cf04f75d39da57d4b1cadaba321d4a24db69bc178d4ef405f7d7fccd88`  
		Last Modified: Tue, 10 Oct 2017 00:16:52 GMT  
		Size: 22.2 MB (22214442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a0ecf44a464b94a84e709688342d33e02e0a4da44f87dec4a908b405031d22`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb40778ce152d6fe9606a6c8b5a1458792ee67895b36cdc42380f51c5456362`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5de8648d6097b3266e654f6bbd4df712d4a2b8931aa14136e7faf7bb10cb47`  
		Last Modified: Tue, 10 Oct 2017 00:36:10 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90efaad1bea825335e39a11f1d996d25406e26bef1241edd46b84cbd441d4275`  
		Last Modified: Tue, 10 Oct 2017 00:36:38 GMT  
		Size: 14.8 MB (14814983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407ec38720a469f2194149e5fa52d4c9ce54e30b59cd815f850665eef4b1ec7f`  
		Last Modified: Tue, 10 Oct 2017 00:36:10 GMT  
		Size: 486.8 KB (486817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae99c87361e9507182ab856433adea6fa635cd86b06855e3f3301f63a47d069`  
		Last Modified: Tue, 10 Oct 2017 00:36:09 GMT  
		Size: 8.6 KB (8620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734b6829738d7b66dbe5a83fb9e7cabb8d364c7a57d142b734d3430715c996fa`  
		Last Modified: Tue, 10 Oct 2017 00:36:28 GMT  
		Size: 59.1 MB (59091828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94f9bdb50f7dc4be47e8cf0e9f7ab37e14da1ea4f058a92ad03746730be859c`  
		Last Modified: Tue, 10 Oct 2017 00:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482a08f04bed5e0d93fd8181aee7d71218c8e11058d780d86c9dc5f0bbdf08e3`  
		Last Modified: Tue, 10 Oct 2017 00:36:09 GMT  
		Size: 2.4 MB (2448143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd33d42fb9a8619b4fc4528c5cb1fdbfdfe126b1187188af20951e7ebd52c8cc`  
		Last Modified: Tue, 10 Oct 2017 00:36:26 GMT  
		Size: 79.6 MB (79596921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ad9c8f1bc4cb4b7c8414789e5816f7fb0290a61d2260d59797d0c0e2508218`  
		Last Modified: Tue, 10 Oct 2017 00:36:08 GMT  
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
