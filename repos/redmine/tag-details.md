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
$ docker pull redmine@sha256:810955af5c62026e54842521b9a86ea777e9252c78bc103df8a7a7441c0bfc36
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
$ docker pull redmine@sha256:62ce844a74ee26f3c75900d1e6d0dbeaae8dbc046c5b38fc2cf92f69d705118d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239258053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e8f716d485f4b69c4defd7ed7501731d7c2ced86aa341c57c4d274bdcbc63d`
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
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:29:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:29:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:29:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:29:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:29:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:29:34 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:06:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:06:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:07:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:07:04 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:07:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:07:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:07:47 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:07:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 12:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:10:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:10:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:10:34 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:10:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:10:34 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:10:34 GMT
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
	-	`sha256:639e0b8fe7a558a4d8c744c0a1aebf279ba2ee7788a5414f214c6d7508a9a139`  
		Last Modified: Tue, 10 Oct 2017 04:01:02 GMT  
		Size: 21.8 MB (21819737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc49178805ef37b1b4aa061e38752ccf2d7f777526b97d7bacf0766f3d675b4`  
		Last Modified: Tue, 10 Oct 2017 04:00:56 GMT  
		Size: 677.1 KB (677054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9c3c37745f030f59b391124795656198b8148d3afa1b25a15fbf57856d7156`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440868935585c72fb144b50732211841296fd077d48368325c2996fff5854d58`  
		Last Modified: Tue, 10 Oct 2017 12:24:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685215f380a07e3305d32d2ccad6e09b0bf52a22cfd4f08d5871f03e2943c661`  
		Last Modified: Tue, 10 Oct 2017 12:24:28 GMT  
		Size: 14.7 MB (14650155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff3bee8b93e46ef0f20345a64b0a1ab23ab7ca03a844a44e49aa4277e2f9b9`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a2fdd607417608c7ad61d896e7d800e01466304caf4ba1c9fcff7a7906f1b3`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6ea2b6e0d630408df16ae0c6857c0470da8d3333d1afad875d66ab49f96919`  
		Last Modified: Tue, 10 Oct 2017 12:24:23 GMT  
		Size: 59.2 MB (59238828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6792099ec6c2756d9ce9e7357e686f44fd174652af8caea20861b0df1ed689f8`  
		Last Modified: Tue, 10 Oct 2017 12:24:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d1e7ed007591b7713b6e330e987ba098c5c93a9f50a8eaa2ac0ba84d7de44c`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 2.4 MB (2448152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eab8159b4219e851d18207e9edd5d799db0dd9d702bc48f4fa4ae691a88683f`  
		Last Modified: Tue, 10 Oct 2017 12:24:20 GMT  
		Size: 77.2 MB (77153487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4330c50276f84c98e6cfbc5ab96b46ffa4d341519d08c6156bace0284c34e5`  
		Last Modified: Tue, 10 Oct 2017 12:24:03 GMT  
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
$ docker pull redmine@sha256:06820eb4bedf754eba3ebea46f0ca23835e2eb0dd0606020c0332cae4cc9280d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230871289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49fb4d2740c0527377ab6bc3cc98d0e9ac2e8305bdb3e9514f2ec34acd69d512`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 21:05:12 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:14:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:14:38 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:14:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:14:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:14:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:14:45 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:09:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:10:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:10:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:10:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:10:25 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:10:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:12:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:12:13 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:12:13 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:12:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:21:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:21:12 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:21:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:21:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:21:14 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:21:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701b4eb71e0bf3510ce8bd387030399076be6d2b7d7c70235a0e9606429ac1e`  
		Last Modified: Fri, 15 Sep 2017 21:47:51 GMT  
		Size: 21.8 MB (21750577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb93f9be68692b4eac0dc3435da90d25d39009154df31632f387573c9b80446c`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 677.0 KB (677045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1647270beb201a12dc9cd7abe56bc867eb838e86f9b92011b94d2c1ad2f50546`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654788505f045a0e535c07635c91eeef67187d94a57280d032b8b24db51948a8`  
		Last Modified: Fri, 15 Sep 2017 22:55:53 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dfbc29dae937a15d07d60c711044c0787741fe07df7d49e679a3b3da77b4d4`  
		Last Modified: Fri, 15 Sep 2017 22:55:57 GMT  
		Size: 14.5 MB (14462497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f59e1e5cf52317d5f8d55df817f9e87a418780886559e28f7b19d865164cbd`  
		Last Modified: Fri, 15 Sep 2017 22:55:50 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde8bc116920fc8b2488b02c3dfd4f2f1be49a4baf387ba02b27232db5fe3609`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413a3a69546761330aa8d2767d9ee938f3caa68ef3c0c3dd72ad10bcc384ca9f`  
		Last Modified: Fri, 15 Sep 2017 22:56:07 GMT  
		Size: 55.8 MB (55773415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579c10bafe342aec743a53d904f5a2d25d352152d3f1354e8192a9599c37a285`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae16e7953f4e8e621bf3ee5e9dbc7d5539f188a6f4156a0c264e61781d2c90f`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 2.4 MB (2448157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ada8031b2e74fd4b92099c5b013efe16f9049aae5ae1aeaa60fcc403a45f5d`  
		Last Modified: Fri, 15 Sep 2017 22:56:09 GMT  
		Size: 76.0 MB (76016684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f26b35af18f59b7132fbc3049274d729bc9892bae5c46b3d7a34cc1f5ef9dae`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
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
$ docker pull redmine@sha256:f7d28f71c3f19ddf50657598071c288519c94d8068ecde5373d1982b1158cf20
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237527322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b216afe859b7c8f83b8d186955dc927eebda3f207696343cf1c4c1e7c57544`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:31:17 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:31:19 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:31:22 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:45:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:46:02 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:46:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:46:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:46:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:46:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:58:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:59:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:59:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:59:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:59:32 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:59:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:03:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:03:55 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:03:56 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:03:58 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:04:00 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:04:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:20:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:20:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:20:25 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:20:29 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:20:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5050b595185390551d7a09550e3710a6585d4addece55658689aaa125bc2231`  
		Last Modified: Fri, 15 Sep 2017 21:37:36 GMT  
		Size: 22.2 MB (22238462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326ceb269e5b022d990956f8a669f02da02c3094bb6ec4720618784eaf4d38a`  
		Last Modified: Fri, 15 Sep 2017 21:37:31 GMT  
		Size: 677.1 KB (677118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51ced9be5acfa91c81bb69d720864b3ec47727b1662c4a78311e158c14cde6`  
		Last Modified: Fri, 15 Sep 2017 21:37:30 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9983a85c9c7c976defa4741404c74c06a301d9f4fe57187a255f843767a4fb`  
		Last Modified: Fri, 15 Sep 2017 23:17:05 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d223e69916fddca9157f953fceea07ed5606a39cd1c1d9a52a01a8bd791e1567`  
		Last Modified: Fri, 15 Sep 2017 23:17:08 GMT  
		Size: 14.7 MB (14720580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6edbe513c926f962b7ece75e0fa60afd9374f29ea66822d90ff65e3e174072`  
		Last Modified: Fri, 15 Sep 2017 23:17:04 GMT  
		Size: 469.8 KB (469844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18105ecaa882c60e7e89b00ac117cfd0844dba99ac359b62c3bd3fa85178bcd5`  
		Last Modified: Fri, 15 Sep 2017 23:17:02 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be82616d3a5dbcf14b1e2f7196ca6e8595297cdc8993b2f976a303fca1c41bc`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 58.1 MB (58106039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3996f2f600c0aa1a4ae7d314cad79a3c1c943652f29f60f787d9ace4ee6e85`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99db50c579e97156eac175a1ff5080f9f4bf5604966070d0af48062076ebe8f2`  
		Last Modified: Fri, 15 Sep 2017 23:17:01 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9170b609cac67c0b66d556342c1e544f8ace4f9a982467b40d58b58500e2be`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 76.9 MB (76912066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd16dad7d125c4c8c55249c39aa89acbd24edc6aae9a5225b82a35d50402314`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 1.7 KB (1707 bytes)  
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
$ docker pull redmine@sha256:0e890f92008462f540fac1aa4f57ff83112a655fb36280aee24e6022d5ca8dc6
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
$ docker pull redmine@sha256:e03b92adcc0c435d6a875b5944d1f538986e68554eb254a070b567878a9e5bb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252185037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:109f57e1ca68ef51ab3ded573dfe12a4b1ca6d2ec19927fcf8c7d885e691d941`
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
# Tue, 10 Oct 2017 03:50:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:54:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:57:27 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:57:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:57:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:57:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:57:29 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:11:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:11:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:11:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:11:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:11:58 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:12:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:12:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:12:48 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:12:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:16:30 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 12:16:30 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 12:16:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:19:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:21:55 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:21:55 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:21:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:21:56 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:21:56 GMT
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
	-	`sha256:3ebd37acad1a34ce0c7334332d6134c5231b332e165f7237f9326a522af7e0a7`  
		Last Modified: Tue, 10 Oct 2017 04:06:08 GMT  
		Size: 34.2 MB (34180481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a0a3327c3983fe171393217a4edeb0a4a7643f25e2e0948644cf3855549ffd`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 677.0 KB (677050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433dd56fed40e801c3ed86ee65f23249bc5ac68afff452b7f764e1d1c86ee0f2`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4574f526bb9a2972a6ea0b17ac752bd1f4ed95c2ed4cf5975a93951ad46647`  
		Last Modified: Tue, 10 Oct 2017 12:26:07 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecb202e9c6eb26402712b30ed9d2649b8e719b20e46741844857235b73af0b1`  
		Last Modified: Tue, 10 Oct 2017 12:26:10 GMT  
		Size: 14.7 MB (14650164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140e35e0df68acc714ee2ca1f0fbc94264bb23f7600cbea64510d44ca36ce90a`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e78b1c1329adf09a0b350dfb2ac35122c0cf3a0627abebe3634374c0dbab88`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd714427e93532517862e8d5372d0b7064be0e024b7c30ad8c287f6497ade09`  
		Last Modified: Tue, 10 Oct 2017 12:26:22 GMT  
		Size: 59.2 MB (59237882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0af3c954eae9fbbb7f5a611b168db1d7c26fd90289611a36b4150a9db1cb4d2`  
		Last Modified: Tue, 10 Oct 2017 12:26:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e0e60a183877ba9d41c47e453f4d8afcd4fb77549b2396d8fa3fa51733086d`  
		Last Modified: Tue, 10 Oct 2017 12:27:18 GMT  
		Size: 2.3 MB (2347108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c43a1663c3d446c4d600f0685a272a6054ea5f30bcdd30c923440568293a56`  
		Last Modified: Tue, 10 Oct 2017 12:27:32 GMT  
		Size: 77.8 MB (77821711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097dc63c26172cf97582fb38dedd9b17882fb226b3ffe4ddc9b949266e1c24de`  
		Last Modified: Tue, 10 Oct 2017 12:27:17 GMT  
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
$ docker pull redmine@sha256:07dbc88c56c33eff3e6408d076b2a7d92f2263ead8f4f8ef912e14814df9efbf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244003583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff7de504be104d38daf2435d77b6df8942bed50809d3420e64c09d29862382e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 02:04:38 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 21:36:24 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:36:25 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:36:26 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:43:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:43:40 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:43:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:43:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:43:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:43:52 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:21:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:24:15 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:24:16 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:35:11 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 22:35:11 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 22:35:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:44:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:44:53 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:44:54 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:44:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:44:55 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:45:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a40c479b5b36d687c4d505c8bf1d73b7a87947acb71a068eba51b98e7ddc77`  
		Last Modified: Fri, 15 Sep 2017 21:53:23 GMT  
		Size: 34.3 MB (34297135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a24f4cd61a212516946d903024537bffd598a2e6f406b3d1856209cf6b3c41d`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05fa2210f052d1f353eb69aedaedd566f46fe3f233dca5499a9a715a5a086ce`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49735b228543d97dfc1c6f259e616e2a6c7ed056d44f488ddb7d9530255c226`  
		Last Modified: Fri, 15 Sep 2017 22:56:59 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f40d509be2372969bdcd28d22629f9790cbb8c25fceb440ce574f4f04b8fc9`  
		Last Modified: Fri, 15 Sep 2017 22:57:03 GMT  
		Size: 14.5 MB (14462476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03cb5caad7e76162b18cdc25bb086700a40fbc084f6052f272e7ffe29baa7d`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f641fc41dca22c0130a2e96b8c67d42ce75b76c8e263053618b10be1147146`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521c1eade02f6a131c41d80558f68cc609e85c76bdd79f8a3ba3c128999b974`  
		Last Modified: Fri, 15 Sep 2017 22:57:17 GMT  
		Size: 55.8 MB (55773277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95457b1922e696db8c8976502a947a6ee3dc272214041d5ff0d9d76f546f652`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74afb0f2949af9340e5b9602c1e77f7bbff29ace9dfc597ae516164e25b486d`  
		Last Modified: Fri, 15 Sep 2017 22:57:46 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00d76137899aa7740e0e126bc19c705fc191c37ba59e87cac0c61252735888f`  
		Last Modified: Fri, 15 Sep 2017 22:58:07 GMT  
		Size: 76.7 MB (76703623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96ae3951ad0dc7898133a173a5c357fc2c7c6e64e31a9b2125b2d8d4ecc25b9`  
		Last Modified: Fri, 15 Sep 2017 22:57:45 GMT  
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
$ docker pull redmine@sha256:21f1234f03c78538267c30ee79892e4585bc63c8db3bc115167d5924f92b7557
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251065531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210bc6a2a6fa3d9a4f1066748f916f3dc024711d09a6100f28bf00a70062cf48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 21:21:42 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:21:45 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:21:49 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:33:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:34:00 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:34:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:34:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:34:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:34:20 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:20:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:27:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:27:28 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:27:31 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:44:26 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 22:44:28 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 22:44:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 23:00:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 23:00:24 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 23:00:26 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 23:00:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 23:00:30 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 23:00:37 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70b88c08445910f839d2b3045d4ca797c39d1026164877059c618f4c3619a2f`  
		Last Modified: Fri, 15 Sep 2017 21:42:03 GMT  
		Size: 35.2 MB (35185766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2131e2d1f7b065623e1df5ac02a5285402c5cba83730d7e8b3ab490e0e050b`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35781705888945fb0289c2812a9a4661e2e433e377496bcca4387bf61bc28bb`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2efa4d52a1298dc2674750ff91bfb986f208e0b3d8888b290c84585999936`  
		Last Modified: Fri, 15 Sep 2017 23:17:57 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd694fca3faeaf63a427ecbb1895cc3240fcc3dd7ea700c783bf11309d611740`  
		Last Modified: Fri, 15 Sep 2017 23:18:00 GMT  
		Size: 14.7 MB (14720423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d98848f6b5648d3b61f33ec419f3f1594bb1452680d7b31360aed048f92718c`  
		Last Modified: Fri, 15 Sep 2017 23:17:54 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666695a75c0ee6495254f0ffed0b8ecea6cbf4f5ac19523a9856bdc8d88630e4`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2cea5c2890cddb24026a1cdc37a3ec8981793a6022b88a6015d40c3d582277`  
		Last Modified: Fri, 15 Sep 2017 23:18:08 GMT  
		Size: 58.1 MB (58105863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c45426ff11a7730b70f65363ca3857f5ce5eeb829b2841b60653305068d500`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5171be8f5e1c2b91cff240b10cad1577835583c934c67e154acc9bec2d14e5`  
		Last Modified: Fri, 15 Sep 2017 23:18:40 GMT  
		Size: 2.3 MB (2347475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b2afeeed175ff02efe1b4ab96f7f282c52a18a64a659299443bb4da2fe4c2d`  
		Last Modified: Fri, 15 Sep 2017 23:19:05 GMT  
		Size: 77.6 MB (77604606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c3024887354a9766a7074f1563c960c45d8ec0958dcf884a4c71eb44f7aa5a`  
		Last Modified: Fri, 15 Sep 2017 23:18:39 GMT  
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
$ docker pull redmine@sha256:0e890f92008462f540fac1aa4f57ff83112a655fb36280aee24e6022d5ca8dc6
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
$ docker pull redmine@sha256:e03b92adcc0c435d6a875b5944d1f538986e68554eb254a070b567878a9e5bb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252185037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:109f57e1ca68ef51ab3ded573dfe12a4b1ca6d2ec19927fcf8c7d885e691d941`
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
# Tue, 10 Oct 2017 03:50:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:54:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:57:27 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:57:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:57:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:57:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:57:29 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:11:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:11:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:11:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:11:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:11:58 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:12:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:12:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:12:48 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:12:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:16:30 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 12:16:30 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 12:16:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:19:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:21:55 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:21:55 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:21:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:21:56 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:21:56 GMT
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
	-	`sha256:3ebd37acad1a34ce0c7334332d6134c5231b332e165f7237f9326a522af7e0a7`  
		Last Modified: Tue, 10 Oct 2017 04:06:08 GMT  
		Size: 34.2 MB (34180481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a0a3327c3983fe171393217a4edeb0a4a7643f25e2e0948644cf3855549ffd`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 677.0 KB (677050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433dd56fed40e801c3ed86ee65f23249bc5ac68afff452b7f764e1d1c86ee0f2`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4574f526bb9a2972a6ea0b17ac752bd1f4ed95c2ed4cf5975a93951ad46647`  
		Last Modified: Tue, 10 Oct 2017 12:26:07 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecb202e9c6eb26402712b30ed9d2649b8e719b20e46741844857235b73af0b1`  
		Last Modified: Tue, 10 Oct 2017 12:26:10 GMT  
		Size: 14.7 MB (14650164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140e35e0df68acc714ee2ca1f0fbc94264bb23f7600cbea64510d44ca36ce90a`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e78b1c1329adf09a0b350dfb2ac35122c0cf3a0627abebe3634374c0dbab88`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd714427e93532517862e8d5372d0b7064be0e024b7c30ad8c287f6497ade09`  
		Last Modified: Tue, 10 Oct 2017 12:26:22 GMT  
		Size: 59.2 MB (59237882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0af3c954eae9fbbb7f5a611b168db1d7c26fd90289611a36b4150a9db1cb4d2`  
		Last Modified: Tue, 10 Oct 2017 12:26:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e0e60a183877ba9d41c47e453f4d8afcd4fb77549b2396d8fa3fa51733086d`  
		Last Modified: Tue, 10 Oct 2017 12:27:18 GMT  
		Size: 2.3 MB (2347108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c43a1663c3d446c4d600f0685a272a6054ea5f30bcdd30c923440568293a56`  
		Last Modified: Tue, 10 Oct 2017 12:27:32 GMT  
		Size: 77.8 MB (77821711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097dc63c26172cf97582fb38dedd9b17882fb226b3ffe4ddc9b949266e1c24de`  
		Last Modified: Tue, 10 Oct 2017 12:27:17 GMT  
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
$ docker pull redmine@sha256:07dbc88c56c33eff3e6408d076b2a7d92f2263ead8f4f8ef912e14814df9efbf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244003583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff7de504be104d38daf2435d77b6df8942bed50809d3420e64c09d29862382e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 02:04:38 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 21:36:24 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:36:25 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:36:26 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:43:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:43:40 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:43:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:43:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:43:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:43:52 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:21:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:24:15 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:24:16 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:35:11 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 22:35:11 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 22:35:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:44:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:44:53 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:44:54 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:44:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:44:55 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:45:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a40c479b5b36d687c4d505c8bf1d73b7a87947acb71a068eba51b98e7ddc77`  
		Last Modified: Fri, 15 Sep 2017 21:53:23 GMT  
		Size: 34.3 MB (34297135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a24f4cd61a212516946d903024537bffd598a2e6f406b3d1856209cf6b3c41d`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05fa2210f052d1f353eb69aedaedd566f46fe3f233dca5499a9a715a5a086ce`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49735b228543d97dfc1c6f259e616e2a6c7ed056d44f488ddb7d9530255c226`  
		Last Modified: Fri, 15 Sep 2017 22:56:59 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f40d509be2372969bdcd28d22629f9790cbb8c25fceb440ce574f4f04b8fc9`  
		Last Modified: Fri, 15 Sep 2017 22:57:03 GMT  
		Size: 14.5 MB (14462476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03cb5caad7e76162b18cdc25bb086700a40fbc084f6052f272e7ffe29baa7d`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f641fc41dca22c0130a2e96b8c67d42ce75b76c8e263053618b10be1147146`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521c1eade02f6a131c41d80558f68cc609e85c76bdd79f8a3ba3c128999b974`  
		Last Modified: Fri, 15 Sep 2017 22:57:17 GMT  
		Size: 55.8 MB (55773277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95457b1922e696db8c8976502a947a6ee3dc272214041d5ff0d9d76f546f652`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74afb0f2949af9340e5b9602c1e77f7bbff29ace9dfc597ae516164e25b486d`  
		Last Modified: Fri, 15 Sep 2017 22:57:46 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00d76137899aa7740e0e126bc19c705fc191c37ba59e87cac0c61252735888f`  
		Last Modified: Fri, 15 Sep 2017 22:58:07 GMT  
		Size: 76.7 MB (76703623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96ae3951ad0dc7898133a173a5c357fc2c7c6e64e31a9b2125b2d8d4ecc25b9`  
		Last Modified: Fri, 15 Sep 2017 22:57:45 GMT  
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
$ docker pull redmine@sha256:21f1234f03c78538267c30ee79892e4585bc63c8db3bc115167d5924f92b7557
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251065531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210bc6a2a6fa3d9a4f1066748f916f3dc024711d09a6100f28bf00a70062cf48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 21:21:42 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:21:45 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:21:49 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:33:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:34:00 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:34:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:34:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:34:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:34:20 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:20:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:27:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:27:28 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:27:31 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:44:26 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 22:44:28 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 22:44:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 23:00:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 23:00:24 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 23:00:26 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 23:00:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 23:00:30 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 23:00:37 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70b88c08445910f839d2b3045d4ca797c39d1026164877059c618f4c3619a2f`  
		Last Modified: Fri, 15 Sep 2017 21:42:03 GMT  
		Size: 35.2 MB (35185766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2131e2d1f7b065623e1df5ac02a5285402c5cba83730d7e8b3ab490e0e050b`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35781705888945fb0289c2812a9a4661e2e433e377496bcca4387bf61bc28bb`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2efa4d52a1298dc2674750ff91bfb986f208e0b3d8888b290c84585999936`  
		Last Modified: Fri, 15 Sep 2017 23:17:57 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd694fca3faeaf63a427ecbb1895cc3240fcc3dd7ea700c783bf11309d611740`  
		Last Modified: Fri, 15 Sep 2017 23:18:00 GMT  
		Size: 14.7 MB (14720423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d98848f6b5648d3b61f33ec419f3f1594bb1452680d7b31360aed048f92718c`  
		Last Modified: Fri, 15 Sep 2017 23:17:54 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666695a75c0ee6495254f0ffed0b8ecea6cbf4f5ac19523a9856bdc8d88630e4`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2cea5c2890cddb24026a1cdc37a3ec8981793a6022b88a6015d40c3d582277`  
		Last Modified: Fri, 15 Sep 2017 23:18:08 GMT  
		Size: 58.1 MB (58105863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c45426ff11a7730b70f65363ca3857f5ce5eeb829b2841b60653305068d500`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5171be8f5e1c2b91cff240b10cad1577835583c934c67e154acc9bec2d14e5`  
		Last Modified: Fri, 15 Sep 2017 23:18:40 GMT  
		Size: 2.3 MB (2347475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b2afeeed175ff02efe1b4ab96f7f282c52a18a64a659299443bb4da2fe4c2d`  
		Last Modified: Fri, 15 Sep 2017 23:19:05 GMT  
		Size: 77.6 MB (77604606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c3024887354a9766a7074f1563c960c45d8ec0958dcf884a4c71eb44f7aa5a`  
		Last Modified: Fri, 15 Sep 2017 23:18:39 GMT  
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
$ docker pull redmine@sha256:b0787ed929c821a5fcc64964a37faaa4b71d30e851467f4ceefe2397ac731ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.7-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:ed8417dfd3c29545713ef73faebd0cd3dc0772955e641d1af86aaffd83a2a26c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271387559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44eeec19c20fe8cb56a6c5769f776c17770303635d47170858d87dba8f289c45`
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
# Tue, 10 Oct 2017 03:50:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:54:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:57:27 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:57:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:57:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:57:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:57:29 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:11:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:11:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:11:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:11:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:11:58 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:12:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:12:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:12:48 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:12:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:16:30 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 12:16:30 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 12:16:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:19:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:21:55 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:21:55 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:21:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:21:56 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:21:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 12:23:14 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 12:23:42 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:23:43 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 12:23:43 GMT
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
	-	`sha256:3ebd37acad1a34ce0c7334332d6134c5231b332e165f7237f9326a522af7e0a7`  
		Last Modified: Tue, 10 Oct 2017 04:06:08 GMT  
		Size: 34.2 MB (34180481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a0a3327c3983fe171393217a4edeb0a4a7643f25e2e0948644cf3855549ffd`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 677.0 KB (677050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433dd56fed40e801c3ed86ee65f23249bc5ac68afff452b7f764e1d1c86ee0f2`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4574f526bb9a2972a6ea0b17ac752bd1f4ed95c2ed4cf5975a93951ad46647`  
		Last Modified: Tue, 10 Oct 2017 12:26:07 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecb202e9c6eb26402712b30ed9d2649b8e719b20e46741844857235b73af0b1`  
		Last Modified: Tue, 10 Oct 2017 12:26:10 GMT  
		Size: 14.7 MB (14650164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140e35e0df68acc714ee2ca1f0fbc94264bb23f7600cbea64510d44ca36ce90a`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e78b1c1329adf09a0b350dfb2ac35122c0cf3a0627abebe3634374c0dbab88`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd714427e93532517862e8d5372d0b7064be0e024b7c30ad8c287f6497ade09`  
		Last Modified: Tue, 10 Oct 2017 12:26:22 GMT  
		Size: 59.2 MB (59237882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0af3c954eae9fbbb7f5a611b168db1d7c26fd90289611a36b4150a9db1cb4d2`  
		Last Modified: Tue, 10 Oct 2017 12:26:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e0e60a183877ba9d41c47e453f4d8afcd4fb77549b2396d8fa3fa51733086d`  
		Last Modified: Tue, 10 Oct 2017 12:27:18 GMT  
		Size: 2.3 MB (2347108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c43a1663c3d446c4d600f0685a272a6054ea5f30bcdd30c923440568293a56`  
		Last Modified: Tue, 10 Oct 2017 12:27:32 GMT  
		Size: 77.8 MB (77821711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097dc63c26172cf97582fb38dedd9b17882fb226b3ffe4ddc9b949266e1c24de`  
		Last Modified: Tue, 10 Oct 2017 12:27:17 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd23c992f133b2325d3550aaa88934bfb6cb69c435ffb81adc45837c4c794631`  
		Last Modified: Tue, 10 Oct 2017 12:28:03 GMT  
		Size: 14.9 MB (14928575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86b6f31a9eb54f12e6a02c8a366197284f3565fd074e6a950a1960976a12da1`  
		Last Modified: Tue, 10 Oct 2017 12:27:57 GMT  
		Size: 4.3 MB (4273947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:b0787ed929c821a5fcc64964a37faaa4b71d30e851467f4ceefe2397ac731ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:ed8417dfd3c29545713ef73faebd0cd3dc0772955e641d1af86aaffd83a2a26c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271387559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44eeec19c20fe8cb56a6c5769f776c17770303635d47170858d87dba8f289c45`
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
# Tue, 10 Oct 2017 03:50:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:54:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:57:27 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:57:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:57:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:57:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:57:29 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:11:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:11:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:11:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:11:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:11:58 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:12:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:12:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:12:48 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:12:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:16:30 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 10 Oct 2017 12:16:30 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 10 Oct 2017 12:16:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:19:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:21:55 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:21:55 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:21:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:21:56 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:21:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 12:23:14 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 12:23:42 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:23:43 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 12:23:43 GMT
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
	-	`sha256:3ebd37acad1a34ce0c7334332d6134c5231b332e165f7237f9326a522af7e0a7`  
		Last Modified: Tue, 10 Oct 2017 04:06:08 GMT  
		Size: 34.2 MB (34180481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a0a3327c3983fe171393217a4edeb0a4a7643f25e2e0948644cf3855549ffd`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 677.0 KB (677050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433dd56fed40e801c3ed86ee65f23249bc5ac68afff452b7f764e1d1c86ee0f2`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4574f526bb9a2972a6ea0b17ac752bd1f4ed95c2ed4cf5975a93951ad46647`  
		Last Modified: Tue, 10 Oct 2017 12:26:07 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecb202e9c6eb26402712b30ed9d2649b8e719b20e46741844857235b73af0b1`  
		Last Modified: Tue, 10 Oct 2017 12:26:10 GMT  
		Size: 14.7 MB (14650164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140e35e0df68acc714ee2ca1f0fbc94264bb23f7600cbea64510d44ca36ce90a`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e78b1c1329adf09a0b350dfb2ac35122c0cf3a0627abebe3634374c0dbab88`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd714427e93532517862e8d5372d0b7064be0e024b7c30ad8c287f6497ade09`  
		Last Modified: Tue, 10 Oct 2017 12:26:22 GMT  
		Size: 59.2 MB (59237882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0af3c954eae9fbbb7f5a611b168db1d7c26fd90289611a36b4150a9db1cb4d2`  
		Last Modified: Tue, 10 Oct 2017 12:26:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e0e60a183877ba9d41c47e453f4d8afcd4fb77549b2396d8fa3fa51733086d`  
		Last Modified: Tue, 10 Oct 2017 12:27:18 GMT  
		Size: 2.3 MB (2347108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c43a1663c3d446c4d600f0685a272a6054ea5f30bcdd30c923440568293a56`  
		Last Modified: Tue, 10 Oct 2017 12:27:32 GMT  
		Size: 77.8 MB (77821711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097dc63c26172cf97582fb38dedd9b17882fb226b3ffe4ddc9b949266e1c24de`  
		Last Modified: Tue, 10 Oct 2017 12:27:17 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd23c992f133b2325d3550aaa88934bfb6cb69c435ffb81adc45837c4c794631`  
		Last Modified: Tue, 10 Oct 2017 12:28:03 GMT  
		Size: 14.9 MB (14928575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86b6f31a9eb54f12e6a02c8a366197284f3565fd074e6a950a1960976a12da1`  
		Last Modified: Tue, 10 Oct 2017 12:27:57 GMT  
		Size: 4.3 MB (4273947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:89a4d6037be947e6b43e34488b1182bec68165de57e6f3d01e47607141a53f3c
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
$ docker pull redmine@sha256:9f3a1b84ce579f00e661f15dbe2135e0eef6c4bf4bebc9e88b79aff7c4549984
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252226908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a553910abc7407a8305000756fee8f293c6d73ea389fa376c30e3725319e2c`
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
# Tue, 10 Oct 2017 03:50:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:54:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:57:27 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:57:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:57:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:57:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:57:29 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:11:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:11:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:11:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:11:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:11:58 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:12:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:12:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:12:48 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:12:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:12:49 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 12:12:49 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 12:12:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:15:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:15:36 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:15:36 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:15:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:15:37 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:15:37 GMT
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
	-	`sha256:3ebd37acad1a34ce0c7334332d6134c5231b332e165f7237f9326a522af7e0a7`  
		Last Modified: Tue, 10 Oct 2017 04:06:08 GMT  
		Size: 34.2 MB (34180481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a0a3327c3983fe171393217a4edeb0a4a7643f25e2e0948644cf3855549ffd`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 677.0 KB (677050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433dd56fed40e801c3ed86ee65f23249bc5ac68afff452b7f764e1d1c86ee0f2`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4574f526bb9a2972a6ea0b17ac752bd1f4ed95c2ed4cf5975a93951ad46647`  
		Last Modified: Tue, 10 Oct 2017 12:26:07 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecb202e9c6eb26402712b30ed9d2649b8e719b20e46741844857235b73af0b1`  
		Last Modified: Tue, 10 Oct 2017 12:26:10 GMT  
		Size: 14.7 MB (14650164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140e35e0df68acc714ee2ca1f0fbc94264bb23f7600cbea64510d44ca36ce90a`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e78b1c1329adf09a0b350dfb2ac35122c0cf3a0627abebe3634374c0dbab88`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd714427e93532517862e8d5372d0b7064be0e024b7c30ad8c287f6497ade09`  
		Last Modified: Tue, 10 Oct 2017 12:26:22 GMT  
		Size: 59.2 MB (59237882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0af3c954eae9fbbb7f5a611b168db1d7c26fd90289611a36b4150a9db1cb4d2`  
		Last Modified: Tue, 10 Oct 2017 12:26:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2606817a19de22def12af726fae6d1b437fb3a9e4b17c8b7b113c612413135f1`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 2.4 MB (2390309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36085bd0df46bdda8e3d015e0057af17db824c3fcc2cec6c1521e38f67fef4`  
		Last Modified: Tue, 10 Oct 2017 12:26:21 GMT  
		Size: 77.8 MB (77820380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6c16025ba527d1cb4bc5bfd2dba99b8150b7ff6359d8ef4699fa44d76c4d9e`  
		Last Modified: Tue, 10 Oct 2017 12:26:02 GMT  
		Size: 1.7 KB (1710 bytes)  
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
$ docker pull redmine@sha256:4ab3062ce6c350f9fe5f86f0eca1b323e507d638e8e8a9848de88f9f863c4377
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244046355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6cf540c88ce763b510dfc4434f8c439c743b91a3d5dd24336437fb4e9c0108`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 02:04:38 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 21:36:24 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:36:25 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:36:26 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:43:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:43:40 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:43:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:43:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:43:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:43:52 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:21:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:24:15 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:24:16 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:24:16 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 22:24:17 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 22:24:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:34:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:34:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:34:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:34:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:34:52 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:34:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a40c479b5b36d687c4d505c8bf1d73b7a87947acb71a068eba51b98e7ddc77`  
		Last Modified: Fri, 15 Sep 2017 21:53:23 GMT  
		Size: 34.3 MB (34297135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a24f4cd61a212516946d903024537bffd598a2e6f406b3d1856209cf6b3c41d`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05fa2210f052d1f353eb69aedaedd566f46fe3f233dca5499a9a715a5a086ce`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49735b228543d97dfc1c6f259e616e2a6c7ed056d44f488ddb7d9530255c226`  
		Last Modified: Fri, 15 Sep 2017 22:56:59 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f40d509be2372969bdcd28d22629f9790cbb8c25fceb440ce574f4f04b8fc9`  
		Last Modified: Fri, 15 Sep 2017 22:57:03 GMT  
		Size: 14.5 MB (14462476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03cb5caad7e76162b18cdc25bb086700a40fbc084f6052f272e7ffe29baa7d`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f641fc41dca22c0130a2e96b8c67d42ce75b76c8e263053618b10be1147146`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521c1eade02f6a131c41d80558f68cc609e85c76bdd79f8a3ba3c128999b974`  
		Last Modified: Fri, 15 Sep 2017 22:57:17 GMT  
		Size: 55.8 MB (55773277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95457b1922e696db8c8976502a947a6ee3dc272214041d5ff0d9d76f546f652`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894cbdbc56b1f07c1a658683c6e7e1c78b3cdd1907efe316801788c6595b6bc8`  
		Last Modified: Fri, 15 Sep 2017 22:56:55 GMT  
		Size: 2.4 MB (2390312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cc1621c8a25b2c8dc9b68f92bb3061e41c78b939c30ff78f3efde52196c314`  
		Last Modified: Fri, 15 Sep 2017 22:57:22 GMT  
		Size: 76.7 MB (76703193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64ab4450f49d0ca78eda6916b5a19970bd54a4ffb403730ed9af57c6bc04c93`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
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
$ docker pull redmine@sha256:7dbbba12c03627d4c83c37dcc6cfe8c3b198b9dad84a2154b795f7c77fd096d3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251108840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b474fe8628bba024894d576d5fad524a22f6bdcf4158a4140b0704888a9e31`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 21:21:42 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:21:45 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:21:49 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:33:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:34:00 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:34:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:34:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:34:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:34:20 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:20:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:27:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:27:28 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:27:31 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:27:33 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 22:27:44 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 22:27:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:43:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:43:56 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:43:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:44:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:44:02 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:44:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70b88c08445910f839d2b3045d4ca797c39d1026164877059c618f4c3619a2f`  
		Last Modified: Fri, 15 Sep 2017 21:42:03 GMT  
		Size: 35.2 MB (35185766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2131e2d1f7b065623e1df5ac02a5285402c5cba83730d7e8b3ab490e0e050b`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35781705888945fb0289c2812a9a4661e2e433e377496bcca4387bf61bc28bb`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2efa4d52a1298dc2674750ff91bfb986f208e0b3d8888b290c84585999936`  
		Last Modified: Fri, 15 Sep 2017 23:17:57 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd694fca3faeaf63a427ecbb1895cc3240fcc3dd7ea700c783bf11309d611740`  
		Last Modified: Fri, 15 Sep 2017 23:18:00 GMT  
		Size: 14.7 MB (14720423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d98848f6b5648d3b61f33ec419f3f1594bb1452680d7b31360aed048f92718c`  
		Last Modified: Fri, 15 Sep 2017 23:17:54 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666695a75c0ee6495254f0ffed0b8ecea6cbf4f5ac19523a9856bdc8d88630e4`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2cea5c2890cddb24026a1cdc37a3ec8981793a6022b88a6015d40c3d582277`  
		Last Modified: Fri, 15 Sep 2017 23:18:08 GMT  
		Size: 58.1 MB (58105863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c45426ff11a7730b70f65363ca3857f5ce5eeb829b2841b60653305068d500`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5f461ea3d422f457a4b692f4d6bbf441b26aeba27fb0ef237d43a8f6d88318`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 2.4 MB (2390599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f857c80c63798adfdd39c79f42c88c06851f3fc49fe47878b7e69a5a495db90`  
		Last Modified: Fri, 15 Sep 2017 23:18:19 GMT  
		Size: 77.6 MB (77604791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851977ac15e0bfb45b1e679a94382c2890fad6b8d44cab4a985e368c7923051e`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
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
$ docker pull redmine@sha256:89a4d6037be947e6b43e34488b1182bec68165de57e6f3d01e47607141a53f3c
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
$ docker pull redmine@sha256:9f3a1b84ce579f00e661f15dbe2135e0eef6c4bf4bebc9e88b79aff7c4549984
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252226908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a553910abc7407a8305000756fee8f293c6d73ea389fa376c30e3725319e2c`
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
# Tue, 10 Oct 2017 03:50:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:54:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:57:27 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:57:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:57:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:57:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:57:29 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:11:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:11:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:11:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:11:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:11:58 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:12:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:12:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:12:48 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:12:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:12:49 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 12:12:49 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 12:12:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:15:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:15:36 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:15:36 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:15:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:15:37 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:15:37 GMT
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
	-	`sha256:3ebd37acad1a34ce0c7334332d6134c5231b332e165f7237f9326a522af7e0a7`  
		Last Modified: Tue, 10 Oct 2017 04:06:08 GMT  
		Size: 34.2 MB (34180481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a0a3327c3983fe171393217a4edeb0a4a7643f25e2e0948644cf3855549ffd`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 677.0 KB (677050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433dd56fed40e801c3ed86ee65f23249bc5ac68afff452b7f764e1d1c86ee0f2`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4574f526bb9a2972a6ea0b17ac752bd1f4ed95c2ed4cf5975a93951ad46647`  
		Last Modified: Tue, 10 Oct 2017 12:26:07 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecb202e9c6eb26402712b30ed9d2649b8e719b20e46741844857235b73af0b1`  
		Last Modified: Tue, 10 Oct 2017 12:26:10 GMT  
		Size: 14.7 MB (14650164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140e35e0df68acc714ee2ca1f0fbc94264bb23f7600cbea64510d44ca36ce90a`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e78b1c1329adf09a0b350dfb2ac35122c0cf3a0627abebe3634374c0dbab88`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd714427e93532517862e8d5372d0b7064be0e024b7c30ad8c287f6497ade09`  
		Last Modified: Tue, 10 Oct 2017 12:26:22 GMT  
		Size: 59.2 MB (59237882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0af3c954eae9fbbb7f5a611b168db1d7c26fd90289611a36b4150a9db1cb4d2`  
		Last Modified: Tue, 10 Oct 2017 12:26:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2606817a19de22def12af726fae6d1b437fb3a9e4b17c8b7b113c612413135f1`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 2.4 MB (2390309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36085bd0df46bdda8e3d015e0057af17db824c3fcc2cec6c1521e38f67fef4`  
		Last Modified: Tue, 10 Oct 2017 12:26:21 GMT  
		Size: 77.8 MB (77820380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6c16025ba527d1cb4bc5bfd2dba99b8150b7ff6359d8ef4699fa44d76c4d9e`  
		Last Modified: Tue, 10 Oct 2017 12:26:02 GMT  
		Size: 1.7 KB (1710 bytes)  
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
$ docker pull redmine@sha256:4ab3062ce6c350f9fe5f86f0eca1b323e507d638e8e8a9848de88f9f863c4377
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244046355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6cf540c88ce763b510dfc4434f8c439c743b91a3d5dd24336437fb4e9c0108`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 02:04:38 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 21:36:24 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:36:25 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:36:26 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:43:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:43:40 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:43:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:43:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:43:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:43:52 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:21:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:24:15 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:24:16 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:24:16 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 22:24:17 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 22:24:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:34:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:34:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:34:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:34:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:34:52 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:34:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a40c479b5b36d687c4d505c8bf1d73b7a87947acb71a068eba51b98e7ddc77`  
		Last Modified: Fri, 15 Sep 2017 21:53:23 GMT  
		Size: 34.3 MB (34297135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a24f4cd61a212516946d903024537bffd598a2e6f406b3d1856209cf6b3c41d`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05fa2210f052d1f353eb69aedaedd566f46fe3f233dca5499a9a715a5a086ce`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49735b228543d97dfc1c6f259e616e2a6c7ed056d44f488ddb7d9530255c226`  
		Last Modified: Fri, 15 Sep 2017 22:56:59 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f40d509be2372969bdcd28d22629f9790cbb8c25fceb440ce574f4f04b8fc9`  
		Last Modified: Fri, 15 Sep 2017 22:57:03 GMT  
		Size: 14.5 MB (14462476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03cb5caad7e76162b18cdc25bb086700a40fbc084f6052f272e7ffe29baa7d`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f641fc41dca22c0130a2e96b8c67d42ce75b76c8e263053618b10be1147146`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521c1eade02f6a131c41d80558f68cc609e85c76bdd79f8a3ba3c128999b974`  
		Last Modified: Fri, 15 Sep 2017 22:57:17 GMT  
		Size: 55.8 MB (55773277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95457b1922e696db8c8976502a947a6ee3dc272214041d5ff0d9d76f546f652`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894cbdbc56b1f07c1a658683c6e7e1c78b3cdd1907efe316801788c6595b6bc8`  
		Last Modified: Fri, 15 Sep 2017 22:56:55 GMT  
		Size: 2.4 MB (2390312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cc1621c8a25b2c8dc9b68f92bb3061e41c78b939c30ff78f3efde52196c314`  
		Last Modified: Fri, 15 Sep 2017 22:57:22 GMT  
		Size: 76.7 MB (76703193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64ab4450f49d0ca78eda6916b5a19970bd54a4ffb403730ed9af57c6bc04c93`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
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
$ docker pull redmine@sha256:7dbbba12c03627d4c83c37dcc6cfe8c3b198b9dad84a2154b795f7c77fd096d3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251108840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b474fe8628bba024894d576d5fad524a22f6bdcf4158a4140b0704888a9e31`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 21:21:42 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:21:45 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:21:49 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:33:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:34:00 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:34:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:34:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:34:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:34:20 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:20:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:27:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:27:28 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:27:31 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:27:33 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 22:27:44 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 22:27:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:43:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:43:56 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:43:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:44:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:44:02 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:44:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70b88c08445910f839d2b3045d4ca797c39d1026164877059c618f4c3619a2f`  
		Last Modified: Fri, 15 Sep 2017 21:42:03 GMT  
		Size: 35.2 MB (35185766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2131e2d1f7b065623e1df5ac02a5285402c5cba83730d7e8b3ab490e0e050b`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35781705888945fb0289c2812a9a4661e2e433e377496bcca4387bf61bc28bb`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2efa4d52a1298dc2674750ff91bfb986f208e0b3d8888b290c84585999936`  
		Last Modified: Fri, 15 Sep 2017 23:17:57 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd694fca3faeaf63a427ecbb1895cc3240fcc3dd7ea700c783bf11309d611740`  
		Last Modified: Fri, 15 Sep 2017 23:18:00 GMT  
		Size: 14.7 MB (14720423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d98848f6b5648d3b61f33ec419f3f1594bb1452680d7b31360aed048f92718c`  
		Last Modified: Fri, 15 Sep 2017 23:17:54 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666695a75c0ee6495254f0ffed0b8ecea6cbf4f5ac19523a9856bdc8d88630e4`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2cea5c2890cddb24026a1cdc37a3ec8981793a6022b88a6015d40c3d582277`  
		Last Modified: Fri, 15 Sep 2017 23:18:08 GMT  
		Size: 58.1 MB (58105863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c45426ff11a7730b70f65363ca3857f5ce5eeb829b2841b60653305068d500`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5f461ea3d422f457a4b692f4d6bbf441b26aeba27fb0ef237d43a8f6d88318`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 2.4 MB (2390599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f857c80c63798adfdd39c79f42c88c06851f3fc49fe47878b7e69a5a495db90`  
		Last Modified: Fri, 15 Sep 2017 23:18:19 GMT  
		Size: 77.6 MB (77604791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851977ac15e0bfb45b1e679a94382c2890fad6b8d44cab4a985e368c7923051e`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
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
$ docker pull redmine@sha256:1b14a3ea55f25671766a1a488f86d0f6642ca8cb70686310dc7ea57a99037748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:8cfca47bd4635e7e87be845eb7e692c1764ef051fa2ffcfb4c2779fde9305ee7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271429282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316bef4648c0bcb9c76732a3a05a2783ff282ef4e5c8ade39273c8cc6a268ca2`
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
# Tue, 10 Oct 2017 03:50:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:54:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:57:27 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:57:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:57:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:57:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:57:29 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:11:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:11:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:11:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:11:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:11:58 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:12:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:12:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:12:48 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:12:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:12:49 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 12:12:49 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 12:12:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:15:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:15:36 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:15:36 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:15:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:15:37 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:15:37 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 12:15:47 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 12:16:12 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:16:18 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 12:16:18 GMT
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
	-	`sha256:3ebd37acad1a34ce0c7334332d6134c5231b332e165f7237f9326a522af7e0a7`  
		Last Modified: Tue, 10 Oct 2017 04:06:08 GMT  
		Size: 34.2 MB (34180481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a0a3327c3983fe171393217a4edeb0a4a7643f25e2e0948644cf3855549ffd`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 677.0 KB (677050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433dd56fed40e801c3ed86ee65f23249bc5ac68afff452b7f764e1d1c86ee0f2`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4574f526bb9a2972a6ea0b17ac752bd1f4ed95c2ed4cf5975a93951ad46647`  
		Last Modified: Tue, 10 Oct 2017 12:26:07 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecb202e9c6eb26402712b30ed9d2649b8e719b20e46741844857235b73af0b1`  
		Last Modified: Tue, 10 Oct 2017 12:26:10 GMT  
		Size: 14.7 MB (14650164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140e35e0df68acc714ee2ca1f0fbc94264bb23f7600cbea64510d44ca36ce90a`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e78b1c1329adf09a0b350dfb2ac35122c0cf3a0627abebe3634374c0dbab88`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd714427e93532517862e8d5372d0b7064be0e024b7c30ad8c287f6497ade09`  
		Last Modified: Tue, 10 Oct 2017 12:26:22 GMT  
		Size: 59.2 MB (59237882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0af3c954eae9fbbb7f5a611b168db1d7c26fd90289611a36b4150a9db1cb4d2`  
		Last Modified: Tue, 10 Oct 2017 12:26:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2606817a19de22def12af726fae6d1b437fb3a9e4b17c8b7b113c612413135f1`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 2.4 MB (2390309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36085bd0df46bdda8e3d015e0057af17db824c3fcc2cec6c1521e38f67fef4`  
		Last Modified: Tue, 10 Oct 2017 12:26:21 GMT  
		Size: 77.8 MB (77820380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6c16025ba527d1cb4bc5bfd2dba99b8150b7ff6359d8ef4699fa44d76c4d9e`  
		Last Modified: Tue, 10 Oct 2017 12:26:02 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17ece22ed4a856afd1eb645600f93b53c8a21504040f601bd1b3da7ade92c8a`  
		Last Modified: Tue, 10 Oct 2017 12:26:51 GMT  
		Size: 14.9 MB (14928428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e54fdd78c21010e53b598904bec114a94f81c8c286aaa183032387f8978a5`  
		Last Modified: Tue, 10 Oct 2017 12:26:47 GMT  
		Size: 4.3 MB (4273946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:1b14a3ea55f25671766a1a488f86d0f6642ca8cb70686310dc7ea57a99037748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:8cfca47bd4635e7e87be845eb7e692c1764ef051fa2ffcfb4c2779fde9305ee7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271429282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316bef4648c0bcb9c76732a3a05a2783ff282ef4e5c8ade39273c8cc6a268ca2`
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
# Tue, 10 Oct 2017 03:50:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:54:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:57:27 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:57:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:57:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:57:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:57:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:57:29 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:11:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:11:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:11:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:11:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:11:58 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:12:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:12:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:12:48 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:12:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:12:49 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 10 Oct 2017 12:12:49 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 10 Oct 2017 12:12:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:15:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:15:36 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:15:36 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:15:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:15:37 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:15:37 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 12:15:47 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 12:16:12 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:16:18 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 12:16:18 GMT
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
	-	`sha256:3ebd37acad1a34ce0c7334332d6134c5231b332e165f7237f9326a522af7e0a7`  
		Last Modified: Tue, 10 Oct 2017 04:06:08 GMT  
		Size: 34.2 MB (34180481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a0a3327c3983fe171393217a4edeb0a4a7643f25e2e0948644cf3855549ffd`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 677.0 KB (677050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433dd56fed40e801c3ed86ee65f23249bc5ac68afff452b7f764e1d1c86ee0f2`  
		Last Modified: Tue, 10 Oct 2017 04:05:59 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4574f526bb9a2972a6ea0b17ac752bd1f4ed95c2ed4cf5975a93951ad46647`  
		Last Modified: Tue, 10 Oct 2017 12:26:07 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecb202e9c6eb26402712b30ed9d2649b8e719b20e46741844857235b73af0b1`  
		Last Modified: Tue, 10 Oct 2017 12:26:10 GMT  
		Size: 14.7 MB (14650164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140e35e0df68acc714ee2ca1f0fbc94264bb23f7600cbea64510d44ca36ce90a`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e78b1c1329adf09a0b350dfb2ac35122c0cf3a0627abebe3634374c0dbab88`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd714427e93532517862e8d5372d0b7064be0e024b7c30ad8c287f6497ade09`  
		Last Modified: Tue, 10 Oct 2017 12:26:22 GMT  
		Size: 59.2 MB (59237882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0af3c954eae9fbbb7f5a611b168db1d7c26fd90289611a36b4150a9db1cb4d2`  
		Last Modified: Tue, 10 Oct 2017 12:26:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2606817a19de22def12af726fae6d1b437fb3a9e4b17c8b7b113c612413135f1`  
		Last Modified: Tue, 10 Oct 2017 12:26:05 GMT  
		Size: 2.4 MB (2390309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36085bd0df46bdda8e3d015e0057af17db824c3fcc2cec6c1521e38f67fef4`  
		Last Modified: Tue, 10 Oct 2017 12:26:21 GMT  
		Size: 77.8 MB (77820380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6c16025ba527d1cb4bc5bfd2dba99b8150b7ff6359d8ef4699fa44d76c4d9e`  
		Last Modified: Tue, 10 Oct 2017 12:26:02 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17ece22ed4a856afd1eb645600f93b53c8a21504040f601bd1b3da7ade92c8a`  
		Last Modified: Tue, 10 Oct 2017 12:26:51 GMT  
		Size: 14.9 MB (14928428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e54fdd78c21010e53b598904bec114a94f81c8c286aaa183032387f8978a5`  
		Last Modified: Tue, 10 Oct 2017 12:26:47 GMT  
		Size: 4.3 MB (4273946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:810955af5c62026e54842521b9a86ea777e9252c78bc103df8a7a7441c0bfc36
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
$ docker pull redmine@sha256:62ce844a74ee26f3c75900d1e6d0dbeaae8dbc046c5b38fc2cf92f69d705118d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239258053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e8f716d485f4b69c4defd7ed7501731d7c2ced86aa341c57c4d274bdcbc63d`
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
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:29:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:29:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:29:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:29:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:29:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:29:34 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:06:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:06:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:07:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:07:04 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:07:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:07:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:07:47 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:07:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 12:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:10:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:10:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:10:34 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:10:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:10:34 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:10:34 GMT
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
	-	`sha256:639e0b8fe7a558a4d8c744c0a1aebf279ba2ee7788a5414f214c6d7508a9a139`  
		Last Modified: Tue, 10 Oct 2017 04:01:02 GMT  
		Size: 21.8 MB (21819737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc49178805ef37b1b4aa061e38752ccf2d7f777526b97d7bacf0766f3d675b4`  
		Last Modified: Tue, 10 Oct 2017 04:00:56 GMT  
		Size: 677.1 KB (677054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9c3c37745f030f59b391124795656198b8148d3afa1b25a15fbf57856d7156`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440868935585c72fb144b50732211841296fd077d48368325c2996fff5854d58`  
		Last Modified: Tue, 10 Oct 2017 12:24:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685215f380a07e3305d32d2ccad6e09b0bf52a22cfd4f08d5871f03e2943c661`  
		Last Modified: Tue, 10 Oct 2017 12:24:28 GMT  
		Size: 14.7 MB (14650155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff3bee8b93e46ef0f20345a64b0a1ab23ab7ca03a844a44e49aa4277e2f9b9`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a2fdd607417608c7ad61d896e7d800e01466304caf4ba1c9fcff7a7906f1b3`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6ea2b6e0d630408df16ae0c6857c0470da8d3333d1afad875d66ab49f96919`  
		Last Modified: Tue, 10 Oct 2017 12:24:23 GMT  
		Size: 59.2 MB (59238828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6792099ec6c2756d9ce9e7357e686f44fd174652af8caea20861b0df1ed689f8`  
		Last Modified: Tue, 10 Oct 2017 12:24:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d1e7ed007591b7713b6e330e987ba098c5c93a9f50a8eaa2ac0ba84d7de44c`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 2.4 MB (2448152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eab8159b4219e851d18207e9edd5d799db0dd9d702bc48f4fa4ae691a88683f`  
		Last Modified: Tue, 10 Oct 2017 12:24:20 GMT  
		Size: 77.2 MB (77153487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4330c50276f84c98e6cfbc5ab96b46ffa4d341519d08c6156bace0284c34e5`  
		Last Modified: Tue, 10 Oct 2017 12:24:03 GMT  
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
$ docker pull redmine@sha256:06820eb4bedf754eba3ebea46f0ca23835e2eb0dd0606020c0332cae4cc9280d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230871289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49fb4d2740c0527377ab6bc3cc98d0e9ac2e8305bdb3e9514f2ec34acd69d512`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 21:05:12 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:14:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:14:38 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:14:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:14:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:14:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:14:45 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:09:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:10:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:10:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:10:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:10:25 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:10:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:12:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:12:13 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:12:13 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:12:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:21:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:21:12 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:21:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:21:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:21:14 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:21:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701b4eb71e0bf3510ce8bd387030399076be6d2b7d7c70235a0e9606429ac1e`  
		Last Modified: Fri, 15 Sep 2017 21:47:51 GMT  
		Size: 21.8 MB (21750577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb93f9be68692b4eac0dc3435da90d25d39009154df31632f387573c9b80446c`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 677.0 KB (677045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1647270beb201a12dc9cd7abe56bc867eb838e86f9b92011b94d2c1ad2f50546`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654788505f045a0e535c07635c91eeef67187d94a57280d032b8b24db51948a8`  
		Last Modified: Fri, 15 Sep 2017 22:55:53 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dfbc29dae937a15d07d60c711044c0787741fe07df7d49e679a3b3da77b4d4`  
		Last Modified: Fri, 15 Sep 2017 22:55:57 GMT  
		Size: 14.5 MB (14462497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f59e1e5cf52317d5f8d55df817f9e87a418780886559e28f7b19d865164cbd`  
		Last Modified: Fri, 15 Sep 2017 22:55:50 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde8bc116920fc8b2488b02c3dfd4f2f1be49a4baf387ba02b27232db5fe3609`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413a3a69546761330aa8d2767d9ee938f3caa68ef3c0c3dd72ad10bcc384ca9f`  
		Last Modified: Fri, 15 Sep 2017 22:56:07 GMT  
		Size: 55.8 MB (55773415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579c10bafe342aec743a53d904f5a2d25d352152d3f1354e8192a9599c37a285`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae16e7953f4e8e621bf3ee5e9dbc7d5539f188a6f4156a0c264e61781d2c90f`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 2.4 MB (2448157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ada8031b2e74fd4b92099c5b013efe16f9049aae5ae1aeaa60fcc403a45f5d`  
		Last Modified: Fri, 15 Sep 2017 22:56:09 GMT  
		Size: 76.0 MB (76016684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f26b35af18f59b7132fbc3049274d729bc9892bae5c46b3d7a34cc1f5ef9dae`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
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
$ docker pull redmine@sha256:f7d28f71c3f19ddf50657598071c288519c94d8068ecde5373d1982b1158cf20
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237527322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b216afe859b7c8f83b8d186955dc927eebda3f207696343cf1c4c1e7c57544`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:31:17 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:31:19 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:31:22 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:45:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:46:02 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:46:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:46:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:46:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:46:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:58:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:59:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:59:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:59:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:59:32 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:59:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:03:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:03:55 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:03:56 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:03:58 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:04:00 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:04:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:20:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:20:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:20:25 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:20:29 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:20:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5050b595185390551d7a09550e3710a6585d4addece55658689aaa125bc2231`  
		Last Modified: Fri, 15 Sep 2017 21:37:36 GMT  
		Size: 22.2 MB (22238462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326ceb269e5b022d990956f8a669f02da02c3094bb6ec4720618784eaf4d38a`  
		Last Modified: Fri, 15 Sep 2017 21:37:31 GMT  
		Size: 677.1 KB (677118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51ced9be5acfa91c81bb69d720864b3ec47727b1662c4a78311e158c14cde6`  
		Last Modified: Fri, 15 Sep 2017 21:37:30 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9983a85c9c7c976defa4741404c74c06a301d9f4fe57187a255f843767a4fb`  
		Last Modified: Fri, 15 Sep 2017 23:17:05 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d223e69916fddca9157f953fceea07ed5606a39cd1c1d9a52a01a8bd791e1567`  
		Last Modified: Fri, 15 Sep 2017 23:17:08 GMT  
		Size: 14.7 MB (14720580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6edbe513c926f962b7ece75e0fa60afd9374f29ea66822d90ff65e3e174072`  
		Last Modified: Fri, 15 Sep 2017 23:17:04 GMT  
		Size: 469.8 KB (469844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18105ecaa882c60e7e89b00ac117cfd0844dba99ac359b62c3bd3fa85178bcd5`  
		Last Modified: Fri, 15 Sep 2017 23:17:02 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be82616d3a5dbcf14b1e2f7196ca6e8595297cdc8993b2f976a303fca1c41bc`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 58.1 MB (58106039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3996f2f600c0aa1a4ae7d314cad79a3c1c943652f29f60f787d9ace4ee6e85`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99db50c579e97156eac175a1ff5080f9f4bf5604966070d0af48062076ebe8f2`  
		Last Modified: Fri, 15 Sep 2017 23:17:01 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9170b609cac67c0b66d556342c1e544f8ace4f9a982467b40d58b58500e2be`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 76.9 MB (76912066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd16dad7d125c4c8c55249c39aa89acbd24edc6aae9a5225b82a35d50402314`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 1.7 KB (1707 bytes)  
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
$ docker pull redmine@sha256:810955af5c62026e54842521b9a86ea777e9252c78bc103df8a7a7441c0bfc36
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
$ docker pull redmine@sha256:62ce844a74ee26f3c75900d1e6d0dbeaae8dbc046c5b38fc2cf92f69d705118d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239258053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e8f716d485f4b69c4defd7ed7501731d7c2ced86aa341c57c4d274bdcbc63d`
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
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:29:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:29:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:29:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:29:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:29:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:29:34 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:06:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:06:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:07:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:07:04 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:07:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:07:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:07:47 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:07:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 12:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:10:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:10:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:10:34 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:10:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:10:34 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:10:34 GMT
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
	-	`sha256:639e0b8fe7a558a4d8c744c0a1aebf279ba2ee7788a5414f214c6d7508a9a139`  
		Last Modified: Tue, 10 Oct 2017 04:01:02 GMT  
		Size: 21.8 MB (21819737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc49178805ef37b1b4aa061e38752ccf2d7f777526b97d7bacf0766f3d675b4`  
		Last Modified: Tue, 10 Oct 2017 04:00:56 GMT  
		Size: 677.1 KB (677054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9c3c37745f030f59b391124795656198b8148d3afa1b25a15fbf57856d7156`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440868935585c72fb144b50732211841296fd077d48368325c2996fff5854d58`  
		Last Modified: Tue, 10 Oct 2017 12:24:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685215f380a07e3305d32d2ccad6e09b0bf52a22cfd4f08d5871f03e2943c661`  
		Last Modified: Tue, 10 Oct 2017 12:24:28 GMT  
		Size: 14.7 MB (14650155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff3bee8b93e46ef0f20345a64b0a1ab23ab7ca03a844a44e49aa4277e2f9b9`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a2fdd607417608c7ad61d896e7d800e01466304caf4ba1c9fcff7a7906f1b3`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6ea2b6e0d630408df16ae0c6857c0470da8d3333d1afad875d66ab49f96919`  
		Last Modified: Tue, 10 Oct 2017 12:24:23 GMT  
		Size: 59.2 MB (59238828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6792099ec6c2756d9ce9e7357e686f44fd174652af8caea20861b0df1ed689f8`  
		Last Modified: Tue, 10 Oct 2017 12:24:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d1e7ed007591b7713b6e330e987ba098c5c93a9f50a8eaa2ac0ba84d7de44c`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 2.4 MB (2448152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eab8159b4219e851d18207e9edd5d799db0dd9d702bc48f4fa4ae691a88683f`  
		Last Modified: Tue, 10 Oct 2017 12:24:20 GMT  
		Size: 77.2 MB (77153487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4330c50276f84c98e6cfbc5ab96b46ffa4d341519d08c6156bace0284c34e5`  
		Last Modified: Tue, 10 Oct 2017 12:24:03 GMT  
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
$ docker pull redmine@sha256:06820eb4bedf754eba3ebea46f0ca23835e2eb0dd0606020c0332cae4cc9280d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230871289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49fb4d2740c0527377ab6bc3cc98d0e9ac2e8305bdb3e9514f2ec34acd69d512`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 21:05:12 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:14:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:14:38 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:14:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:14:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:14:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:14:45 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:09:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:10:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:10:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:10:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:10:25 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:10:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:12:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:12:13 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:12:13 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:12:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:21:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:21:12 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:21:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:21:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:21:14 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:21:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701b4eb71e0bf3510ce8bd387030399076be6d2b7d7c70235a0e9606429ac1e`  
		Last Modified: Fri, 15 Sep 2017 21:47:51 GMT  
		Size: 21.8 MB (21750577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb93f9be68692b4eac0dc3435da90d25d39009154df31632f387573c9b80446c`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 677.0 KB (677045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1647270beb201a12dc9cd7abe56bc867eb838e86f9b92011b94d2c1ad2f50546`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654788505f045a0e535c07635c91eeef67187d94a57280d032b8b24db51948a8`  
		Last Modified: Fri, 15 Sep 2017 22:55:53 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dfbc29dae937a15d07d60c711044c0787741fe07df7d49e679a3b3da77b4d4`  
		Last Modified: Fri, 15 Sep 2017 22:55:57 GMT  
		Size: 14.5 MB (14462497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f59e1e5cf52317d5f8d55df817f9e87a418780886559e28f7b19d865164cbd`  
		Last Modified: Fri, 15 Sep 2017 22:55:50 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde8bc116920fc8b2488b02c3dfd4f2f1be49a4baf387ba02b27232db5fe3609`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413a3a69546761330aa8d2767d9ee938f3caa68ef3c0c3dd72ad10bcc384ca9f`  
		Last Modified: Fri, 15 Sep 2017 22:56:07 GMT  
		Size: 55.8 MB (55773415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579c10bafe342aec743a53d904f5a2d25d352152d3f1354e8192a9599c37a285`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae16e7953f4e8e621bf3ee5e9dbc7d5539f188a6f4156a0c264e61781d2c90f`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 2.4 MB (2448157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ada8031b2e74fd4b92099c5b013efe16f9049aae5ae1aeaa60fcc403a45f5d`  
		Last Modified: Fri, 15 Sep 2017 22:56:09 GMT  
		Size: 76.0 MB (76016684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f26b35af18f59b7132fbc3049274d729bc9892bae5c46b3d7a34cc1f5ef9dae`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
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
$ docker pull redmine@sha256:f7d28f71c3f19ddf50657598071c288519c94d8068ecde5373d1982b1158cf20
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237527322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b216afe859b7c8f83b8d186955dc927eebda3f207696343cf1c4c1e7c57544`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:31:17 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:31:19 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:31:22 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:45:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:46:02 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:46:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:46:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:46:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:46:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:58:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:59:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:59:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:59:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:59:32 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:59:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:03:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:03:55 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:03:56 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:03:58 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:04:00 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:04:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:20:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:20:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:20:25 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:20:29 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:20:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5050b595185390551d7a09550e3710a6585d4addece55658689aaa125bc2231`  
		Last Modified: Fri, 15 Sep 2017 21:37:36 GMT  
		Size: 22.2 MB (22238462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326ceb269e5b022d990956f8a669f02da02c3094bb6ec4720618784eaf4d38a`  
		Last Modified: Fri, 15 Sep 2017 21:37:31 GMT  
		Size: 677.1 KB (677118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51ced9be5acfa91c81bb69d720864b3ec47727b1662c4a78311e158c14cde6`  
		Last Modified: Fri, 15 Sep 2017 21:37:30 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9983a85c9c7c976defa4741404c74c06a301d9f4fe57187a255f843767a4fb`  
		Last Modified: Fri, 15 Sep 2017 23:17:05 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d223e69916fddca9157f953fceea07ed5606a39cd1c1d9a52a01a8bd791e1567`  
		Last Modified: Fri, 15 Sep 2017 23:17:08 GMT  
		Size: 14.7 MB (14720580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6edbe513c926f962b7ece75e0fa60afd9374f29ea66822d90ff65e3e174072`  
		Last Modified: Fri, 15 Sep 2017 23:17:04 GMT  
		Size: 469.8 KB (469844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18105ecaa882c60e7e89b00ac117cfd0844dba99ac359b62c3bd3fa85178bcd5`  
		Last Modified: Fri, 15 Sep 2017 23:17:02 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be82616d3a5dbcf14b1e2f7196ca6e8595297cdc8993b2f976a303fca1c41bc`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 58.1 MB (58106039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3996f2f600c0aa1a4ae7d314cad79a3c1c943652f29f60f787d9ace4ee6e85`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99db50c579e97156eac175a1ff5080f9f4bf5604966070d0af48062076ebe8f2`  
		Last Modified: Fri, 15 Sep 2017 23:17:01 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9170b609cac67c0b66d556342c1e544f8ace4f9a982467b40d58b58500e2be`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 76.9 MB (76912066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd16dad7d125c4c8c55249c39aa89acbd24edc6aae9a5225b82a35d50402314`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 1.7 KB (1707 bytes)  
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
$ docker pull redmine@sha256:fe937c1cf567f65b3b894d30c31a837c43283bbe0578870d8e4f34c5f0824711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:4c8a17a3947196e7753d603315b1fe68146663bed744c277a0131b5449e9917e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258460327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82d0cf3e0388594edb026246b10491dd45a04cc7d7dc39b9acb60ef153d943f`
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
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:29:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:29:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:29:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:29:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:29:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:29:34 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:06:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:06:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:07:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:07:04 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:07:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:07:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:07:47 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:07:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 12:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:10:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:10:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:10:34 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:10:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:10:34 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:10:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 12:10:53 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 12:11:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:11:24 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 12:11:24 GMT
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
	-	`sha256:639e0b8fe7a558a4d8c744c0a1aebf279ba2ee7788a5414f214c6d7508a9a139`  
		Last Modified: Tue, 10 Oct 2017 04:01:02 GMT  
		Size: 21.8 MB (21819737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc49178805ef37b1b4aa061e38752ccf2d7f777526b97d7bacf0766f3d675b4`  
		Last Modified: Tue, 10 Oct 2017 04:00:56 GMT  
		Size: 677.1 KB (677054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9c3c37745f030f59b391124795656198b8148d3afa1b25a15fbf57856d7156`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440868935585c72fb144b50732211841296fd077d48368325c2996fff5854d58`  
		Last Modified: Tue, 10 Oct 2017 12:24:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685215f380a07e3305d32d2ccad6e09b0bf52a22cfd4f08d5871f03e2943c661`  
		Last Modified: Tue, 10 Oct 2017 12:24:28 GMT  
		Size: 14.7 MB (14650155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff3bee8b93e46ef0f20345a64b0a1ab23ab7ca03a844a44e49aa4277e2f9b9`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a2fdd607417608c7ad61d896e7d800e01466304caf4ba1c9fcff7a7906f1b3`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6ea2b6e0d630408df16ae0c6857c0470da8d3333d1afad875d66ab49f96919`  
		Last Modified: Tue, 10 Oct 2017 12:24:23 GMT  
		Size: 59.2 MB (59238828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6792099ec6c2756d9ce9e7357e686f44fd174652af8caea20861b0df1ed689f8`  
		Last Modified: Tue, 10 Oct 2017 12:24:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d1e7ed007591b7713b6e330e987ba098c5c93a9f50a8eaa2ac0ba84d7de44c`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 2.4 MB (2448152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eab8159b4219e851d18207e9edd5d799db0dd9d702bc48f4fa4ae691a88683f`  
		Last Modified: Tue, 10 Oct 2017 12:24:20 GMT  
		Size: 77.2 MB (77153487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4330c50276f84c98e6cfbc5ab96b46ffa4d341519d08c6156bace0284c34e5`  
		Last Modified: Tue, 10 Oct 2017 12:24:03 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4522854585566154230733e1e37c8aaca7dcc63ec4d53b7d33875c67085cc4de`  
		Last Modified: Tue, 10 Oct 2017 12:25:18 GMT  
		Size: 14.9 MB (14928346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e26f5da52721f95a7aba09dac0d26f57e27a70522dc312f29246d65a026dfda`  
		Last Modified: Tue, 10 Oct 2017 12:25:14 GMT  
		Size: 4.3 MB (4273928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:fe937c1cf567f65b3b894d30c31a837c43283bbe0578870d8e4f34c5f0824711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:4c8a17a3947196e7753d603315b1fe68146663bed744c277a0131b5449e9917e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258460327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82d0cf3e0388594edb026246b10491dd45a04cc7d7dc39b9acb60ef153d943f`
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
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:29:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:29:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:29:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:29:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:29:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:29:34 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:06:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:06:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:07:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:07:04 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:07:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:07:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:07:47 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:07:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 12:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:10:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:10:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:10:34 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:10:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:10:34 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:10:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 12:10:53 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 12:11:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:11:24 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 12:11:24 GMT
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
	-	`sha256:639e0b8fe7a558a4d8c744c0a1aebf279ba2ee7788a5414f214c6d7508a9a139`  
		Last Modified: Tue, 10 Oct 2017 04:01:02 GMT  
		Size: 21.8 MB (21819737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc49178805ef37b1b4aa061e38752ccf2d7f777526b97d7bacf0766f3d675b4`  
		Last Modified: Tue, 10 Oct 2017 04:00:56 GMT  
		Size: 677.1 KB (677054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9c3c37745f030f59b391124795656198b8148d3afa1b25a15fbf57856d7156`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440868935585c72fb144b50732211841296fd077d48368325c2996fff5854d58`  
		Last Modified: Tue, 10 Oct 2017 12:24:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685215f380a07e3305d32d2ccad6e09b0bf52a22cfd4f08d5871f03e2943c661`  
		Last Modified: Tue, 10 Oct 2017 12:24:28 GMT  
		Size: 14.7 MB (14650155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff3bee8b93e46ef0f20345a64b0a1ab23ab7ca03a844a44e49aa4277e2f9b9`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a2fdd607417608c7ad61d896e7d800e01466304caf4ba1c9fcff7a7906f1b3`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6ea2b6e0d630408df16ae0c6857c0470da8d3333d1afad875d66ab49f96919`  
		Last Modified: Tue, 10 Oct 2017 12:24:23 GMT  
		Size: 59.2 MB (59238828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6792099ec6c2756d9ce9e7357e686f44fd174652af8caea20861b0df1ed689f8`  
		Last Modified: Tue, 10 Oct 2017 12:24:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d1e7ed007591b7713b6e330e987ba098c5c93a9f50a8eaa2ac0ba84d7de44c`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 2.4 MB (2448152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eab8159b4219e851d18207e9edd5d799db0dd9d702bc48f4fa4ae691a88683f`  
		Last Modified: Tue, 10 Oct 2017 12:24:20 GMT  
		Size: 77.2 MB (77153487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4330c50276f84c98e6cfbc5ab96b46ffa4d341519d08c6156bace0284c34e5`  
		Last Modified: Tue, 10 Oct 2017 12:24:03 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4522854585566154230733e1e37c8aaca7dcc63ec4d53b7d33875c67085cc4de`  
		Last Modified: Tue, 10 Oct 2017 12:25:18 GMT  
		Size: 14.9 MB (14928346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e26f5da52721f95a7aba09dac0d26f57e27a70522dc312f29246d65a026dfda`  
		Last Modified: Tue, 10 Oct 2017 12:25:14 GMT  
		Size: 4.3 MB (4273928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:fe937c1cf567f65b3b894d30c31a837c43283bbe0578870d8e4f34c5f0824711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:4c8a17a3947196e7753d603315b1fe68146663bed744c277a0131b5449e9917e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258460327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82d0cf3e0388594edb026246b10491dd45a04cc7d7dc39b9acb60ef153d943f`
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
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:29:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:29:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:29:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:29:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:29:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:29:34 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:06:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:06:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:07:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:07:04 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:07:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:07:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:07:47 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:07:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 12:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:10:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:10:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:10:34 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:10:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:10:34 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:10:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 12:10:53 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 12:11:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:11:24 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 12:11:24 GMT
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
	-	`sha256:639e0b8fe7a558a4d8c744c0a1aebf279ba2ee7788a5414f214c6d7508a9a139`  
		Last Modified: Tue, 10 Oct 2017 04:01:02 GMT  
		Size: 21.8 MB (21819737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc49178805ef37b1b4aa061e38752ccf2d7f777526b97d7bacf0766f3d675b4`  
		Last Modified: Tue, 10 Oct 2017 04:00:56 GMT  
		Size: 677.1 KB (677054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9c3c37745f030f59b391124795656198b8148d3afa1b25a15fbf57856d7156`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440868935585c72fb144b50732211841296fd077d48368325c2996fff5854d58`  
		Last Modified: Tue, 10 Oct 2017 12:24:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685215f380a07e3305d32d2ccad6e09b0bf52a22cfd4f08d5871f03e2943c661`  
		Last Modified: Tue, 10 Oct 2017 12:24:28 GMT  
		Size: 14.7 MB (14650155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff3bee8b93e46ef0f20345a64b0a1ab23ab7ca03a844a44e49aa4277e2f9b9`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a2fdd607417608c7ad61d896e7d800e01466304caf4ba1c9fcff7a7906f1b3`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6ea2b6e0d630408df16ae0c6857c0470da8d3333d1afad875d66ab49f96919`  
		Last Modified: Tue, 10 Oct 2017 12:24:23 GMT  
		Size: 59.2 MB (59238828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6792099ec6c2756d9ce9e7357e686f44fd174652af8caea20861b0df1ed689f8`  
		Last Modified: Tue, 10 Oct 2017 12:24:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d1e7ed007591b7713b6e330e987ba098c5c93a9f50a8eaa2ac0ba84d7de44c`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 2.4 MB (2448152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eab8159b4219e851d18207e9edd5d799db0dd9d702bc48f4fa4ae691a88683f`  
		Last Modified: Tue, 10 Oct 2017 12:24:20 GMT  
		Size: 77.2 MB (77153487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4330c50276f84c98e6cfbc5ab96b46ffa4d341519d08c6156bace0284c34e5`  
		Last Modified: Tue, 10 Oct 2017 12:24:03 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4522854585566154230733e1e37c8aaca7dcc63ec4d53b7d33875c67085cc4de`  
		Last Modified: Tue, 10 Oct 2017 12:25:18 GMT  
		Size: 14.9 MB (14928346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e26f5da52721f95a7aba09dac0d26f57e27a70522dc312f29246d65a026dfda`  
		Last Modified: Tue, 10 Oct 2017 12:25:14 GMT  
		Size: 4.3 MB (4273928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:810955af5c62026e54842521b9a86ea777e9252c78bc103df8a7a7441c0bfc36
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
$ docker pull redmine@sha256:62ce844a74ee26f3c75900d1e6d0dbeaae8dbc046c5b38fc2cf92f69d705118d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239258053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e8f716d485f4b69c4defd7ed7501731d7c2ced86aa341c57c4d274bdcbc63d`
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
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:29:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:29:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:29:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:29:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:29:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:29:34 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:06:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:06:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:07:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:07:04 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:07:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:07:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:07:47 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:07:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 12:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:10:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:10:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:10:34 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:10:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:10:34 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:10:34 GMT
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
	-	`sha256:639e0b8fe7a558a4d8c744c0a1aebf279ba2ee7788a5414f214c6d7508a9a139`  
		Last Modified: Tue, 10 Oct 2017 04:01:02 GMT  
		Size: 21.8 MB (21819737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc49178805ef37b1b4aa061e38752ccf2d7f777526b97d7bacf0766f3d675b4`  
		Last Modified: Tue, 10 Oct 2017 04:00:56 GMT  
		Size: 677.1 KB (677054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9c3c37745f030f59b391124795656198b8148d3afa1b25a15fbf57856d7156`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440868935585c72fb144b50732211841296fd077d48368325c2996fff5854d58`  
		Last Modified: Tue, 10 Oct 2017 12:24:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685215f380a07e3305d32d2ccad6e09b0bf52a22cfd4f08d5871f03e2943c661`  
		Last Modified: Tue, 10 Oct 2017 12:24:28 GMT  
		Size: 14.7 MB (14650155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff3bee8b93e46ef0f20345a64b0a1ab23ab7ca03a844a44e49aa4277e2f9b9`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a2fdd607417608c7ad61d896e7d800e01466304caf4ba1c9fcff7a7906f1b3`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6ea2b6e0d630408df16ae0c6857c0470da8d3333d1afad875d66ab49f96919`  
		Last Modified: Tue, 10 Oct 2017 12:24:23 GMT  
		Size: 59.2 MB (59238828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6792099ec6c2756d9ce9e7357e686f44fd174652af8caea20861b0df1ed689f8`  
		Last Modified: Tue, 10 Oct 2017 12:24:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d1e7ed007591b7713b6e330e987ba098c5c93a9f50a8eaa2ac0ba84d7de44c`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 2.4 MB (2448152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eab8159b4219e851d18207e9edd5d799db0dd9d702bc48f4fa4ae691a88683f`  
		Last Modified: Tue, 10 Oct 2017 12:24:20 GMT  
		Size: 77.2 MB (77153487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4330c50276f84c98e6cfbc5ab96b46ffa4d341519d08c6156bace0284c34e5`  
		Last Modified: Tue, 10 Oct 2017 12:24:03 GMT  
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
$ docker pull redmine@sha256:06820eb4bedf754eba3ebea46f0ca23835e2eb0dd0606020c0332cae4cc9280d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230871289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49fb4d2740c0527377ab6bc3cc98d0e9ac2e8305bdb3e9514f2ec34acd69d512`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 21:05:12 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:14:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:14:38 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:14:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:14:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:14:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:14:45 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:09:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:10:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:10:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:10:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:10:25 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:10:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:12:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:12:13 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:12:13 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:12:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:21:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:21:12 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:21:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:21:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:21:14 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:21:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701b4eb71e0bf3510ce8bd387030399076be6d2b7d7c70235a0e9606429ac1e`  
		Last Modified: Fri, 15 Sep 2017 21:47:51 GMT  
		Size: 21.8 MB (21750577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb93f9be68692b4eac0dc3435da90d25d39009154df31632f387573c9b80446c`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 677.0 KB (677045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1647270beb201a12dc9cd7abe56bc867eb838e86f9b92011b94d2c1ad2f50546`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654788505f045a0e535c07635c91eeef67187d94a57280d032b8b24db51948a8`  
		Last Modified: Fri, 15 Sep 2017 22:55:53 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dfbc29dae937a15d07d60c711044c0787741fe07df7d49e679a3b3da77b4d4`  
		Last Modified: Fri, 15 Sep 2017 22:55:57 GMT  
		Size: 14.5 MB (14462497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f59e1e5cf52317d5f8d55df817f9e87a418780886559e28f7b19d865164cbd`  
		Last Modified: Fri, 15 Sep 2017 22:55:50 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde8bc116920fc8b2488b02c3dfd4f2f1be49a4baf387ba02b27232db5fe3609`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413a3a69546761330aa8d2767d9ee938f3caa68ef3c0c3dd72ad10bcc384ca9f`  
		Last Modified: Fri, 15 Sep 2017 22:56:07 GMT  
		Size: 55.8 MB (55773415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579c10bafe342aec743a53d904f5a2d25d352152d3f1354e8192a9599c37a285`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae16e7953f4e8e621bf3ee5e9dbc7d5539f188a6f4156a0c264e61781d2c90f`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 2.4 MB (2448157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ada8031b2e74fd4b92099c5b013efe16f9049aae5ae1aeaa60fcc403a45f5d`  
		Last Modified: Fri, 15 Sep 2017 22:56:09 GMT  
		Size: 76.0 MB (76016684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f26b35af18f59b7132fbc3049274d729bc9892bae5c46b3d7a34cc1f5ef9dae`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
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
$ docker pull redmine@sha256:f7d28f71c3f19ddf50657598071c288519c94d8068ecde5373d1982b1158cf20
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237527322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b216afe859b7c8f83b8d186955dc927eebda3f207696343cf1c4c1e7c57544`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:31:17 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:31:19 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:31:22 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:45:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:46:02 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:46:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:46:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:46:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:46:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:58:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:59:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:59:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:59:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:59:32 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:59:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:03:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:03:55 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:03:56 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:03:58 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:04:00 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:04:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:20:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:20:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:20:25 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:20:29 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:20:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5050b595185390551d7a09550e3710a6585d4addece55658689aaa125bc2231`  
		Last Modified: Fri, 15 Sep 2017 21:37:36 GMT  
		Size: 22.2 MB (22238462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326ceb269e5b022d990956f8a669f02da02c3094bb6ec4720618784eaf4d38a`  
		Last Modified: Fri, 15 Sep 2017 21:37:31 GMT  
		Size: 677.1 KB (677118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51ced9be5acfa91c81bb69d720864b3ec47727b1662c4a78311e158c14cde6`  
		Last Modified: Fri, 15 Sep 2017 21:37:30 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9983a85c9c7c976defa4741404c74c06a301d9f4fe57187a255f843767a4fb`  
		Last Modified: Fri, 15 Sep 2017 23:17:05 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d223e69916fddca9157f953fceea07ed5606a39cd1c1d9a52a01a8bd791e1567`  
		Last Modified: Fri, 15 Sep 2017 23:17:08 GMT  
		Size: 14.7 MB (14720580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6edbe513c926f962b7ece75e0fa60afd9374f29ea66822d90ff65e3e174072`  
		Last Modified: Fri, 15 Sep 2017 23:17:04 GMT  
		Size: 469.8 KB (469844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18105ecaa882c60e7e89b00ac117cfd0844dba99ac359b62c3bd3fa85178bcd5`  
		Last Modified: Fri, 15 Sep 2017 23:17:02 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be82616d3a5dbcf14b1e2f7196ca6e8595297cdc8993b2f976a303fca1c41bc`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 58.1 MB (58106039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3996f2f600c0aa1a4ae7d314cad79a3c1c943652f29f60f787d9ace4ee6e85`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99db50c579e97156eac175a1ff5080f9f4bf5604966070d0af48062076ebe8f2`  
		Last Modified: Fri, 15 Sep 2017 23:17:01 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9170b609cac67c0b66d556342c1e544f8ace4f9a982467b40d58b58500e2be`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 76.9 MB (76912066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd16dad7d125c4c8c55249c39aa89acbd24edc6aae9a5225b82a35d50402314`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 1.7 KB (1707 bytes)  
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
$ docker pull redmine@sha256:fe937c1cf567f65b3b894d30c31a837c43283bbe0578870d8e4f34c5f0824711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:4c8a17a3947196e7753d603315b1fe68146663bed744c277a0131b5449e9917e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258460327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82d0cf3e0388594edb026246b10491dd45a04cc7d7dc39b9acb60ef153d943f`
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
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 03:29:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 03:29:31 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 03:29:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 03:29:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 03:29:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:29:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 03:29:34 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 12:06:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 10 Oct 2017 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:06:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:07:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:07:04 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 10 Oct 2017 12:07:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 10 Oct 2017 12:07:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 12:07:47 GMT
ENV RAILS_ENV=production
# Tue, 10 Oct 2017 12:07:48 GMT
WORKDIR /usr/src/redmine
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 10 Oct 2017 12:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 10 Oct 2017 12:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 10 Oct 2017 12:10:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:10:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 10 Oct 2017 12:10:34 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 10 Oct 2017 12:10:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 12:10:34 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:10:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Oct 2017 12:10:53 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 10 Oct 2017 12:11:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 12:11:24 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Oct 2017 12:11:24 GMT
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
	-	`sha256:639e0b8fe7a558a4d8c744c0a1aebf279ba2ee7788a5414f214c6d7508a9a139`  
		Last Modified: Tue, 10 Oct 2017 04:01:02 GMT  
		Size: 21.8 MB (21819737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc49178805ef37b1b4aa061e38752ccf2d7f777526b97d7bacf0766f3d675b4`  
		Last Modified: Tue, 10 Oct 2017 04:00:56 GMT  
		Size: 677.1 KB (677054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9c3c37745f030f59b391124795656198b8148d3afa1b25a15fbf57856d7156`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440868935585c72fb144b50732211841296fd077d48368325c2996fff5854d58`  
		Last Modified: Tue, 10 Oct 2017 12:24:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685215f380a07e3305d32d2ccad6e09b0bf52a22cfd4f08d5871f03e2943c661`  
		Last Modified: Tue, 10 Oct 2017 12:24:28 GMT  
		Size: 14.7 MB (14650155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff3bee8b93e46ef0f20345a64b0a1ab23ab7ca03a844a44e49aa4277e2f9b9`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a2fdd607417608c7ad61d896e7d800e01466304caf4ba1c9fcff7a7906f1b3`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6ea2b6e0d630408df16ae0c6857c0470da8d3333d1afad875d66ab49f96919`  
		Last Modified: Tue, 10 Oct 2017 12:24:23 GMT  
		Size: 59.2 MB (59238828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6792099ec6c2756d9ce9e7357e686f44fd174652af8caea20861b0df1ed689f8`  
		Last Modified: Tue, 10 Oct 2017 12:24:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d1e7ed007591b7713b6e330e987ba098c5c93a9f50a8eaa2ac0ba84d7de44c`  
		Last Modified: Tue, 10 Oct 2017 12:24:06 GMT  
		Size: 2.4 MB (2448152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eab8159b4219e851d18207e9edd5d799db0dd9d702bc48f4fa4ae691a88683f`  
		Last Modified: Tue, 10 Oct 2017 12:24:20 GMT  
		Size: 77.2 MB (77153487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4330c50276f84c98e6cfbc5ab96b46ffa4d341519d08c6156bace0284c34e5`  
		Last Modified: Tue, 10 Oct 2017 12:24:03 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4522854585566154230733e1e37c8aaca7dcc63ec4d53b7d33875c67085cc4de`  
		Last Modified: Tue, 10 Oct 2017 12:25:18 GMT  
		Size: 14.9 MB (14928346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e26f5da52721f95a7aba09dac0d26f57e27a70522dc312f29246d65a026dfda`  
		Last Modified: Tue, 10 Oct 2017 12:25:14 GMT  
		Size: 4.3 MB (4273928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
