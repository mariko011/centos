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
$ docker pull redmine@sha256:a03199445c51c2a8cb69f68a128b2aacde57666662e1cfbe06bb60d528c0db15
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
$ docker pull redmine@sha256:ea5402023c7dbfee006af7dc6d492c27db867becad57ffca1a33df5a9a119b52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241924176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a08e45188455d0e9adf2ca220ba8d20141f256b3f817af97557653b7a963725`
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
# Wed, 29 Nov 2017 02:00:03 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:00:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:03:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:03:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:03:25 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 02:54:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 02:55:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 02:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 02:55:07 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 02:55:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 02:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:41 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 02:55:41 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 02:55:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 02:57:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 02:57:57 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 02:57:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 02:57:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 02:57:57 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 02:57:58 GMT
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
	-	`sha256:9ad5468696cb48065225ceeb6cc5ea98659e61df3ea5d6a935a1ce3f286e0c1f`  
		Last Modified: Wed, 29 Nov 2017 02:31:25 GMT  
		Size: 24.7 MB (24719347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46570cf888deb54274b6170a313daa5af6504399f9c2a8015e1b5cbd81ae3954`  
		Last Modified: Wed, 29 Nov 2017 02:31:19 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d754fe9af0fa8d889ae1ad30091e20b9284fa7c96b9c5d27cb00db22097377`  
		Last Modified: Wed, 29 Nov 2017 03:11:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdb2fb3457b7d286979072dd334371958dfd366b961af6a9818d9c7177032bc`  
		Last Modified: Wed, 29 Nov 2017 03:11:51 GMT  
		Size: 14.7 MB (14650277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0279c28e185b5376123102b9e52cbc4f5421af45058691fbee8a24c1f5bed0`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9771402e046b8fc25be917dabbc725053db3a10a9ad28fcdde5d8f6fc96716d7`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60600395d907ebc1f2ef6d498224907b5c9bac7577b9df9b2e5050b7543fa59f`  
		Last Modified: Wed, 29 Nov 2017 03:12:01 GMT  
		Size: 59.2 MB (59233442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b3ae050df001ac4709a78c435858ed9bc0bd273acc766553ae42fdc24a6a9a`  
		Last Modified: Wed, 29 Nov 2017 03:11:44 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cc979a32abf0068344202263c01fabdf0e906cd992a57887ead9b2d34d2bd1`  
		Last Modified: Wed, 29 Nov 2017 03:11:45 GMT  
		Size: 2.4 MB (2449726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76409286c21d64d405ae0cae5f316f3d2965680d719383716b6a5a6d0bdceb7`  
		Last Modified: Wed, 29 Nov 2017 03:12:02 GMT  
		Size: 77.6 MB (77600727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd51bcfe68ca68df40c79d8d4a0293e9108719fe589bae2c394c2634c6d341c7`  
		Last Modified: Wed, 29 Nov 2017 03:11:43 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:6f968d8e81bf004895e883770f372914254e16afa830419d53809262f0dddefa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235135170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e5a12bfb3cc8e8ed47db1f07bacff191a64daade3cebbc7931cbda57b6643f`
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
# Wed, 29 Nov 2017 02:45:34 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:45:34 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:51:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:51:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:51:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:51:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:35:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:36:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:36:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:36:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:36:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:36:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:37:15 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:37:15 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:41:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:41:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:41:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:41:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:41:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:41:53 GMT
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
	-	`sha256:179ea4737244be5f572da462b3c5705bab2143befb6455e4336bcd8d0e407760`  
		Last Modified: Wed, 29 Nov 2017 03:15:10 GMT  
		Size: 24.5 MB (24483509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ced734833d0751f11706a7c22921175ad89ab3abdfbf8fb0f0dea144ecd5ea`  
		Last Modified: Wed, 29 Nov 2017 03:15:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ee29af941d7de19d192ab4259ea30796ff26211bea73b25e76987e71eb29a`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cba304d0f2c108938d18959720674f353aec0ac38de3b665de962528498423`  
		Last Modified: Wed, 29 Nov 2017 03:53:09 GMT  
		Size: 14.3 MB (14347359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593e1fe9d4684177d51cccc210e4730aeec65b083f553f1a06ecf6ee8889d0e4`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1a96819f4195e3a2ebde299f49b32dbe208a1b8cdb14dbfb2e6127c85ab0c0`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 7.8 KB (7841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355e66b9387dcf98fa1a7a0894720236d9d0944e17e37b51205fcb102b378d82`  
		Last Modified: Wed, 29 Nov 2017 03:53:26 GMT  
		Size: 56.6 MB (56571351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3754cf5b9d29327dd282bb5698cb31cd4db874059c4cf19ac91dc3db78b4195c`  
		Last Modified: Wed, 29 Nov 2017 03:53:03 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67b5d283d650a6af8d3e7dc7d8e0ad5b5175d8a22abc50740665aac632e7110`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 2.5 MB (2450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e509a1affd384340033278c59bcf749e1666df622600502e366b835d47e9b174`  
		Last Modified: Wed, 29 Nov 2017 03:53:21 GMT  
		Size: 76.8 MB (76787012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77e61d6a1508e609ec515fc36271ef779118a525489372468278a0ea6ec0898`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:aad9ac6d28e2b6a93a5936a433795c0c986edf611461ba691aceb2e31fdd7fdc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.4 MB (229410907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9019c2be1b8d4dea765e83172189dc1610e2ad535bde37c81b866f0ae826e4bc`
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
# Wed, 29 Nov 2017 02:33:24 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:33:24 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:38:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:38:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:38:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:38:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:38:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:38:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:25:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:25:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:25:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:25:53 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:25:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:26:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:26:47 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:26:47 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:26:47 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:26:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:26:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:30:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:30:58 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:30:58 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:30:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:30:59 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:30:59 GMT
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
	-	`sha256:03e7f6f3705f0e9e8cb844f5c52fe990111f0a50371f3e1ddaeb1daa84332de3`  
		Last Modified: Wed, 29 Nov 2017 03:03:18 GMT  
		Size: 24.3 MB (24347802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c245079801e79239de88eba5c9a0b3d79a1c6cfb5331c689ad311c9d3920661`  
		Last Modified: Wed, 29 Nov 2017 03:03:10 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b224be4a9c54af80d0898a7e595321b31f42e0d2c0a9de6fb163a4ed097e408c`  
		Last Modified: Wed, 29 Nov 2017 03:42:14 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bf57316c6b52323d9f1ede9e96c270bd41eca35196906fad75f95b8f28f1af`  
		Last Modified: Wed, 29 Nov 2017 03:42:16 GMT  
		Size: 14.1 MB (14134528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca634fa2018fa96cc0b2f55add61cad0450fa80800a8fbdd3eb8b12945a76852`  
		Last Modified: Wed, 29 Nov 2017 03:42:13 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c086b2042081559479d2c6c70926bd12aebfd328017b497c28b266abab1db3f`  
		Last Modified: Wed, 29 Nov 2017 03:42:11 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d792ba80ad3576b345e236bf14f6b3a094eccd8070d2ac888c7caf54850ced`  
		Last Modified: Wed, 29 Nov 2017 03:42:26 GMT  
		Size: 54.3 MB (54307191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f64adc3241b89b3fd6b29b9a5f7fd089579d44e04c1bb5f1736bb36bb41780`  
		Last Modified: Wed, 29 Nov 2017 03:42:09 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a26840fc03414dbd5f7808a2288cd84f841ba16f2ef830fabeea0a847467cd`  
		Last Modified: Wed, 29 Nov 2017 03:42:10 GMT  
		Size: 2.5 MB (2450396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e1799d1a839d6af2aa69b96ba0aff83e7d7993e278126744224d8f90632228`  
		Last Modified: Wed, 29 Nov 2017 03:42:27 GMT  
		Size: 76.2 MB (76236503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88491b6920f2605c98ea1998371b9d9df7cef84fc5557992a3754b5f2b11e7f`  
		Last Modified: Wed, 29 Nov 2017 03:42:11 GMT  
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
$ docker pull redmine@sha256:44b13c8d466c6445c050a1bb2c4dc64f31f84faffad4f4328888c78fc383800f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245866473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86389fee9180696c76db1a6a637972ba4b26d3fe2ef698950aafef50b3b6a270`
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
# Wed, 29 Nov 2017 04:08:08 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:08:08 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:12:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:12:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:12:10 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:11:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:11:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:11:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:11:47 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:11:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:12:47 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:12:47 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 05:12:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:15:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:15:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:15:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:15:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:15:39 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:15:39 GMT
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
	-	`sha256:1d606874a95f77a281a95ea62aecc6652e267ab2ad0d20ee2abe625c0108ea6a`  
		Last Modified: Wed, 29 Nov 2017 04:47:48 GMT  
		Size: 23.7 MB (23707414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b3b5e60949389e180d533eefbb7fb23c3814ffe2dc87fb4d356431d68e097`  
		Last Modified: Wed, 29 Nov 2017 04:47:40 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6290ab79572fcdca52bc6d4dedfe3f2a6c32bbd8fa40110ee26b2b650a6fdc14`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8907d7b491156601acd90d0bbd05dcf53369287764f4f32decae43da940dfe`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 14.8 MB (14817396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0bdebc662d70bd06cecd81a4c20122dd591b2ba2ace4e6f085a0b7b4cce465`  
		Last Modified: Wed, 29 Nov 2017 05:36:25 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea035533dab2cebad7ee27b3db7987cebb653a0129f7ed3121fe8e07961f1e1`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9bed729e63931113d8749301a61b0789c36c5555e389ae0426c271f612478`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 60.1 MB (60111462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b2d57c91aa6b268ad6bfc48c017655c9cdf076e23092da03a220fb7d787bd9`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23cfd68b0fc24d07e4046edfc414d177dff85d55d28bbafd83d9e4fa3493baf`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 2.4 MB (2449741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e2e1eda9fbe74fd148246a53dfbac200c88c6dc7602ee40ad3b95dbdec5b1`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 76.9 MB (76885610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa498c25050d6fd9f7d3e7fe9378b05c0c96f7a9ed7c7d8f38b352fa23b486`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:b56e098ad8e96056d80682978087685659d7de5d172b62de81170fd456b9907e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.6 MB (240591891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c0650ea200164218e154ad272ac0a214d22a423d41d59033b5d83220b13a2f`
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
# Wed, 29 Nov 2017 01:53:25 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 01:53:27 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:02:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:02:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:02:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:02:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:02:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:02:41 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:01:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:02:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:02:09 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:02:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:02:16 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:02:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:05:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:05:16 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:05:18 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:05:19 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:05:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:05:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:14:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:14:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:14:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:15:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:15:04 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:15:05 GMT
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
	-	`sha256:df8dcf8d98a8895c3b37b829f3edfa38f5c86819ddc204dc430044b3ab5599fa`  
		Last Modified: Wed, 29 Nov 2017 02:41:15 GMT  
		Size: 25.2 MB (25158835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43e007d4277f360aea4f1ba1284ed7a5114dd41020f09f8da45a19aaf6007fc`  
		Last Modified: Wed, 29 Nov 2017 02:41:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43b0534e1d0653163bc5d41a27b2b323181e2737012a22906d243321a5b6af0`  
		Last Modified: Wed, 29 Nov 2017 03:38:43 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6181313b5af95b67f88eba99e61b9806a7523b305f0923a188e0c1940aa74ba`  
		Last Modified: Wed, 29 Nov 2017 03:38:46 GMT  
		Size: 14.7 MB (14720318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5b5cbedba2e72f124dcecec0c81289ec378a882c930a4ae041c8b05e84ecd1`  
		Last Modified: Wed, 29 Nov 2017 03:38:42 GMT  
		Size: 469.8 KB (469840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4e350e846fa462b3a885303b6d70a7554c08b9602eee7386b8623ab3bdc062`  
		Last Modified: Wed, 29 Nov 2017 03:38:41 GMT  
		Size: 8.6 KB (8633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6787db5bd9d1e70cf3554c18e90f48d07adf2f38c06923a51f239e4e835f62`  
		Last Modified: Wed, 29 Nov 2017 03:38:53 GMT  
		Size: 58.1 MB (58099150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876f34303a335367596fdd3a6c9a547ac591592b684adb041fb03e3a7c1618bb`  
		Last Modified: Wed, 29 Nov 2017 03:38:39 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700f59b93e11f30f92600d9f38cf1b81e9700578dc40cf33103971f59fbd61bd`  
		Last Modified: Wed, 29 Nov 2017 03:38:39 GMT  
		Size: 2.5 MB (2450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9df5dad03c816e926680c0f49f9c0704881d5b619aabe456f305e3484b230c`  
		Last Modified: Wed, 29 Nov 2017 03:38:54 GMT  
		Size: 77.7 MB (77737589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b20a012ee58f5dd830d53fcd8142f4bf041ac0174469e98d9a5828868fe6081`  
		Last Modified: Wed, 29 Nov 2017 03:38:38 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:5427407fea74009d757762b807075c30871317b91f9ec1df560a75cbde3bd29f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244737088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c668a254a4bdd63e46f6e2227a1323576949f2f4cae692d2b7807600bfc1e7`
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
# Wed, 29 Nov 2017 09:45:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 09:45:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 09:49:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 09:49:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 09:49:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 09:49:02 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:26:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:26:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:26:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:26:46 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:26:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:27:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:27:21 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:27:21 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 10:27:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:29:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:29:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:29:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:29:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:29:53 GMT
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
	-	`sha256:05d4ee3f2152ec599a26f35e14003e134c639db2f56399563c1726a8b7a8d29a`  
		Last Modified: Wed, 29 Nov 2017 10:07:07 GMT  
		Size: 25.1 MB (25111185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951848c9263d526779afb0312759897b5d73819b19ac1c2f12c68ccc05a977af`  
		Last Modified: Wed, 29 Nov 2017 10:07:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe2550444116bdfc46721f26860f83c0422bc33bcef6ae8b9f3bf3ed8ea5c1`  
		Last Modified: Wed, 29 Nov 2017 10:36:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a53223f31c10d034019dc8488f9dfdeb46f2b9429098d6c65b8600ca2146c`  
		Last Modified: Wed, 29 Nov 2017 10:36:13 GMT  
		Size: 14.8 MB (14815027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639d76a25bbb1bf06d9c487892a8fbf3e296a2092f5ce2386481188b883a3b3`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384c1671418080426f0bfbe9e5f1fb477aa230e26f16add728b943e7aa110d1`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25ea638c611e9ac4370c065dcf7c96dd948eaa929af93a4987c15e30ae5041`  
		Last Modified: Wed, 29 Nov 2017 10:36:20 GMT  
		Size: 59.1 MB (59082388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cac7b2191e12520e7d79b4d3181176f37aa11dc9b83516e15a1d22ff7be7496`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604cd9a3a7a58f7575f3dbbdda98a97ef30bdad45c3fd0882bfc4d00c1919b35`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 2.4 MB (2449744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7dc1025ef8f402bce9c33dcf7b8deed5d54a790d5498120ec36c1397807bc`  
		Last Modified: Wed, 29 Nov 2017 10:36:24 GMT  
		Size: 80.0 MB (80029892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b060c1b16c6a3d0a51649ba9382c820351a8a386d6828b571fa3825bf621ea1`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:7a67932a1856ace7ff58b4fb175a0c4679f4beec4ceae36724ce8b22e0c1baf0
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
$ docker pull redmine@sha256:e1ba3c8883b75fb8c14ae702bc1278859fe18539bc63f6391ac67a754b9e1392
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253083124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d5c73e0184f81575e13d392a96d05cb29ca88c00de629223084bf582cca63f5`
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
# Wed, 29 Nov 2017 02:20:53 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:20:53 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:23:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:23:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:23:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:23:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:02:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:02:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:02:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:02:48 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:02:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:03:31 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:03:31 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:06:37 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 03:06:37 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 03:06:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:08:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:09:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:09:00 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:09:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:09:00 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:09:01 GMT
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
	-	`sha256:37b10099826447799485832748a69feaac9e5aca1b64843ed9f17fe2dbbeea61`  
		Last Modified: Wed, 29 Nov 2017 02:37:54 GMT  
		Size: 35.3 MB (35306402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39bad85d3624a7f3a65d0c8699a2a3cf72449571c0f83e3132c41cd5ed3c53`  
		Last Modified: Wed, 29 Nov 2017 02:37:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4043adb137c3d6684682d0aaacf2c24e986fc80149199022bfa1679374c4e62d`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528f876968b6d4ca38fcfdd0e3f225ec0115e877f8576244eea5e528f4a24f71`  
		Last Modified: Wed, 29 Nov 2017 03:13:21 GMT  
		Size: 14.7 MB (14650306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c068a939086f3cac33c72eb506a68bfb9638b01f026f95516ee5375770ccb5`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ee17b6871601c6c89daaa2a8b7d1efda9a6995fb852042ceee3e2a809e386d`  
		Last Modified: Wed, 29 Nov 2017 03:13:16 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f22244de2b41317ba1aa107070c4e8610d40ac899ec22e1e41f4a4f26ba6904`  
		Last Modified: Wed, 29 Nov 2017 03:13:28 GMT  
		Size: 59.2 MB (59233663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c7b259d36ccab09ec415bb30bade6da761b9744bd3ff884cd6bdf18faabe02`  
		Last Modified: Wed, 29 Nov 2017 03:13:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f901db7f5b2a311dd32c8c2503f335d37d6c2842bf4352b92ae6b1152e50eaf`  
		Last Modified: Wed, 29 Nov 2017 03:14:11 GMT  
		Size: 2.3 MB (2347004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e150a2545d5e33ce7de8cc725c35fe186fd12fa72ba0cc791aaedb6219be90`  
		Last Modified: Wed, 29 Nov 2017 03:14:24 GMT  
		Size: 78.3 MB (78275092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3b3eaffb952cdbae27eecb9359228bd694048b181f3c5e6168e6f004f24ed8`  
		Last Modified: Wed, 29 Nov 2017 03:14:09 GMT  
		Size: 1.7 KB (1703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v5

```console
$ docker pull redmine@sha256:57b7f21efe56ce793d162d649cc3878287d13a5ca1ed1c1c00c071f21e253dcc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245494007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fb052b85d0a5c3d7660ca5765c6e6d0b4a25c31d3ec8bcb9f6d94c0375852c`
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
# Wed, 29 Nov 2017 03:05:49 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 03:05:49 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 03:10:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 03:10:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 03:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 03:10:11 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:42:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:42:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:42:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:42:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:42:41 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:42:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:43:42 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:43:42 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:48:18 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 03:48:18 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 03:48:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:52:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:52:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:52:46 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:52:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:52:46 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:52:46 GMT
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
	-	`sha256:a7f4c5069a15a9169e6b75f04b7fe4b119fc3c9f81fc886a4c53a2183257eade`  
		Last Modified: Wed, 29 Nov 2017 03:19:21 GMT  
		Size: 34.2 MB (34234357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ec099af78a26d93cdd7007035051c17691e1b9faab1ffbfe78399c2eb75602`  
		Last Modified: Wed, 29 Nov 2017 03:19:08 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a85becc36eb60546600e29f2c0b5d082e240d7cd9e1e743e04baa98e4a351fb`  
		Last Modified: Wed, 29 Nov 2017 03:54:01 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14992a532c63f7fda479776fd3c19ce325883c773d15f6a37caea8e4011a7211`  
		Last Modified: Wed, 29 Nov 2017 03:54:06 GMT  
		Size: 14.3 MB (14347386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf47abf880eeb5ba1e91ed40769eab5e35542e3bb5591ee97eb5c9a02d5b7fc`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96535285c8491db58d6a752a8e5c38440d2ff27e4c62f30698ce395f40776cf`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 7.8 KB (7840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8d1f79799b47ea0e62cc6164bc36b168ac44b8a012982c71e48126a2f1534c`  
		Last Modified: Wed, 29 Nov 2017 03:54:18 GMT  
		Size: 56.6 MB (56571372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902acc612035f56eb2529117e2118c5746163dc645e2631c6c21d08b5849f0b7`  
		Last Modified: Wed, 29 Nov 2017 03:53:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d28c38c2fe5f8f7053349a275c5a25c7f4a7d03ac8561d8e0e571824334be7`  
		Last Modified: Wed, 29 Nov 2017 03:54:39 GMT  
		Size: 2.3 MB (2347347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ffdeef11a8f35dbcc91dbe757a93bd011def053cd644c8c07fb59cafcc4f25`  
		Last Modified: Wed, 29 Nov 2017 03:54:57 GMT  
		Size: 77.5 MB (77497998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ce12780cee07459117932a52dd441616dc2ee240d863c2a48a05e80ea174de`  
		Last Modified: Wed, 29 Nov 2017 03:54:38 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:9c390d260d682b55b35a994227f15a97825e5170ef23309a21af0eb4c28f721e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239667275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe830f8e5be8fd851691c462afaaeff27992322acb128ab0a92e4e081e97c564`
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
# Wed, 29 Nov 2017 02:52:51 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:52:52 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:57:01 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:57:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:57:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:57:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:57:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:57:03 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:31:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:31:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:31:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:31:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:31:53 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:31:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:32:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:32:48 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:32:48 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:37:21 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 03:37:22 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 03:37:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:41:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:41:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:41:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:41:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:41:41 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:41:42 GMT
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
	-	`sha256:11390f58c45ff95ec7ca80e46cf3dada97900bb4712e4b832d393933f32ec7d4`  
		Last Modified: Wed, 29 Nov 2017 03:08:39 GMT  
		Size: 34.0 MB (34012852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85ff6747bc82df3012ac26a5c1f51451da3a2cfecd11393b6b4deb108bee3ce`  
		Last Modified: Wed, 29 Nov 2017 03:08:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd51a3ef97fd3d97ba812f1fe047868d5158506eeeedb4f3c409d73651e42f5`  
		Last Modified: Wed, 29 Nov 2017 03:43:13 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdd352e422c2a0aef335b6746b08fd2be2c28c3b1c65f1dfdc6dc48d00468d3`  
		Last Modified: Wed, 29 Nov 2017 03:43:15 GMT  
		Size: 14.1 MB (14134531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46123db67c84bb6eead22a071077d8dbff4d4f743d57cbbfc52decc232be245`  
		Last Modified: Wed, 29 Nov 2017 03:43:10 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86a64a132a52248317d23737b1d2d2f96b981be3d9dc7e454c77f02d4f2cb65`  
		Last Modified: Wed, 29 Nov 2017 03:43:10 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136b5ce070daeaccb0ce262894984e248176b9e064757867cedf60bc9c44741`  
		Last Modified: Wed, 29 Nov 2017 03:43:25 GMT  
		Size: 54.3 MB (54306561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f350131b4f81c03eb68999fda57f17e2614ee6ac5a984cfd555f840fdf0e8ebd`  
		Last Modified: Wed, 29 Nov 2017 03:43:09 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49bb8b12d0235e37e0e43f17000e33cdb00b4997cd6cf89ff7158ee6dc5c4ea`  
		Last Modified: Wed, 29 Nov 2017 03:43:53 GMT  
		Size: 2.3 MB (2347345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb6fde8382b160fd311e618e2c7c06977b3b4994577af29440434b276a17717`  
		Last Modified: Wed, 29 Nov 2017 03:44:10 GMT  
		Size: 76.9 MB (76931502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec94a3d18e93d3e08011f7659cc9fcead7b076a5b0d9a1154179af1f1cfca04f`  
		Last Modified: Wed, 29 Nov 2017 03:43:53 GMT  
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
$ docker pull redmine@sha256:2136bb23f0587dc2257f181af5b2652525d294dc99b309a0815f0bb1d55a3df3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255500340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049ecfc842efcd3b3490a712c1339b6ab0c01ad9bab0d355b84a546279b6bf7a`
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
# Wed, 29 Nov 2017 04:34:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:34:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:38:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:38:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:38:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:38:36 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:20:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:21:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:21:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:21:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:21:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:22:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:22:19 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:22:19 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:31:35 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 05:31:35 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 05:31:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:34:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:34:29 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:34:29 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:34:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:34:29 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:34:30 GMT
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
	-	`sha256:c00efa31fbb98327286c3de74249f7bf7ab95473a62e6f8f0586873941882dc4`  
		Last Modified: Wed, 29 Nov 2017 04:54:35 GMT  
		Size: 32.8 MB (32789971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8020015056d7323fc2e9ac8cd2b5a499314caba43938fce8fe896506fdf74da`  
		Last Modified: Wed, 29 Nov 2017 04:54:20 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f569528b524a95935a9f123c15ebe9e14f0a15c829efe7b2de8f2cb24c5cabc`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66482e58af170311dfa114cb7bf30628141b65250f84f1fa2a76947ddc455222`  
		Last Modified: Wed, 29 Nov 2017 05:38:00 GMT  
		Size: 14.8 MB (14817387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8a1dc86b52251b85356e9eaef349fd2648c4eb8fd69495365e1ee003a1dad3`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea689cdecbe69943dbe797b331903ba672ee707aec95359e5bc0a0d70f1f86b4`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a49d919caeadca01b2f5dfeb5460d46e56c20843e23826ffe28efd3b834d668`  
		Last Modified: Wed, 29 Nov 2017 05:38:19 GMT  
		Size: 60.1 MB (60110795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11abd66ace22b267b82eed69d1a9bcad1a82dc27beed38c4a6997c9be3e4125f`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03052b4774c8f18d8e84bd7340ecc46790d679eea897bbb3e4b9e441a6ed30f6`  
		Last Modified: Wed, 29 Nov 2017 05:44:24 GMT  
		Size: 2.3 MB (2346999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41686d74e94c545b9bec1af07b6f314522cfd509cb82914d95654951d7f9ec65`  
		Last Modified: Wed, 29 Nov 2017 05:44:41 GMT  
		Size: 77.5 MB (77540337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b12fe06e96d8f3f90a7f5c05f42e8eca2dd0b1ebcbddf40b7c44a4d6da3f4a8`  
		Last Modified: Wed, 29 Nov 2017 05:44:21 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:42b33d35a833789a5c8f4f4707ebe1098d4d6f8c77fd74688450aa12ad488ba1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.3 MB (252334859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f36642615995a621c46726b9e9f2f6f4c884be6f05f5702095d29978f74ce8`
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
# Wed, 29 Nov 2017 02:28:26 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:28:28 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:36:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:36:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:36:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:36:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:36:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:36:33 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:15:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:15:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:16:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:16:05 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:16:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:19:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:19:03 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:19:04 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:28:49 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 03:28:50 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 03:28:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:38:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:38:15 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:38:16 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:38:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:38:18 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:38:20 GMT
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
	-	`sha256:dfad6e8de95c13b63da86056f726dec8b9f9514db05559f6f6cc50709f97cae7`  
		Last Modified: Wed, 29 Nov 2017 02:45:07 GMT  
		Size: 36.3 MB (36320712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8336ff71e381c36d7d13edacac2c46e431d1a4181eaaa171b043537ad82f10`  
		Last Modified: Wed, 29 Nov 2017 02:44:52 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f9e75ed07a2e8904e2c5ee0f15d2e289bf81477032f7e26ab3fec40e170c77`  
		Last Modified: Wed, 29 Nov 2017 03:39:24 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126c3dc6fd18a990b78c47173c8e902ae73cde4215fe57b09f33e48a15fb6f39`  
		Last Modified: Wed, 29 Nov 2017 03:39:27 GMT  
		Size: 14.7 MB (14720428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fe11d2672cefd863aaed53faad464868e80d9c25195f79a87f311a11bc8247`  
		Last Modified: Wed, 29 Nov 2017 03:39:23 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d620f1fa510252bbabb692d9c7b9fcea51505a9c027978db745059b32f7afa7`  
		Last Modified: Wed, 29 Nov 2017 03:39:21 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34c8b470c2cbc0efb530a92e1b71635f2e2e04476b280e42d2aaba9d1aae105`  
		Last Modified: Wed, 29 Nov 2017 03:39:34 GMT  
		Size: 58.1 MB (58099408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65c1b57e33e0df4dafb383e6df6f16920f2dcac8508443e7f147c568feb42a3`  
		Last Modified: Wed, 29 Nov 2017 03:39:19 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46856fa2dd3842f9f5caf9f3b9e6f80be062ad85dfa960660c9c5e3652679608`  
		Last Modified: Wed, 29 Nov 2017 03:39:53 GMT  
		Size: 2.3 MB (2347347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e41c5c76a04e10b92bcc680c5ff96ea669ec40fd64a0e546945545a4f92eea7`  
		Last Modified: Wed, 29 Nov 2017 03:40:08 GMT  
		Size: 78.4 MB (78421335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a563b1d344e19538ab47024d99dd182d1a719fdc50e15eca4f126e7abb20fe0f`  
		Last Modified: Wed, 29 Nov 2017 03:39:53 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; s390x

```console
$ docker pull redmine@sha256:1ebe61e156d1c4e487becce430ffe5552eed7b0195eafd8f32c8a207e5460118
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259098016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ba5558d2ecc3540f4f39a1b3f7289a5b2f37bb27d07d6d77bfe1e910bf0454`
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
# Wed, 29 Nov 2017 10:00:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 10:00:05 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 10:02:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 10:02:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 10:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 10:02:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:30:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:30:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:30:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:30:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:53 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:30:53 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:33:29 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 10:33:29 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 10:33:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:35:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:35:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:35:45 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:35:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:35:45 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:35:46 GMT
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
	-	`sha256:8aecf1643b640bfe6355e9a2f45baaf98e042116267d7ea16b31c167433d75cc`  
		Last Modified: Wed, 29 Nov 2017 10:10:34 GMT  
		Size: 39.0 MB (38970539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af488ae7dbb0e3a499062c8f775e79ce5d5e8fb499cc3c32b68a5d2a96061e4`  
		Last Modified: Wed, 29 Nov 2017 10:10:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48259d29197d3370c94aa00fc20d073bc2176fcff0458a37fc7a93ccf2e2ba`  
		Last Modified: Wed, 29 Nov 2017 10:36:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68951b2cc3e0b486d49f2bf1a604dfc72920bb910b0f3a92beb255ab27ce1bc1`  
		Last Modified: Wed, 29 Nov 2017 10:36:52 GMT  
		Size: 14.8 MB (14815095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad8e9b077eeb77d47e6d422e4c7502c0bc698030e3d5a5a8983255ef3427e4`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b7991629e300e835043dfabe52cb7257b8c5e742b9e0a70a0545b2d1b7133f`  
		Last Modified: Wed, 29 Nov 2017 10:36:47 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1189eb3a43b5dcb29ce876b13411ed03bf2c90037856f4c340a91cf1a07471`  
		Last Modified: Wed, 29 Nov 2017 10:36:58 GMT  
		Size: 59.1 MB (59081157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e138f3c639fc2c03cc809c5c719e41f68c01a9f20c0d935ee50cfd5258dae3e2`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577331182a33b55ded369cd171053fb8cc16581c9aca29b6b3b0d0612849973e`  
		Last Modified: Wed, 29 Nov 2017 10:37:12 GMT  
		Size: 2.3 MB (2347001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e3e3b2f2a888aaf2fa791d7df219b6625a4e900f6a89e2b373f840e21aeb6e`  
		Last Modified: Wed, 29 Nov 2017 10:37:23 GMT  
		Size: 80.6 MB (80635377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4a8aad7e42b845e507039f6c4e485a258111be94f68b2a1fd5a36dbc951ca9`  
		Last Modified: Wed, 29 Nov 2017 10:37:11 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.8`

```console
$ docker pull redmine@sha256:7a67932a1856ace7ff58b4fb175a0c4679f4beec4ceae36724ce8b22e0c1baf0
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
$ docker pull redmine@sha256:e1ba3c8883b75fb8c14ae702bc1278859fe18539bc63f6391ac67a754b9e1392
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253083124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d5c73e0184f81575e13d392a96d05cb29ca88c00de629223084bf582cca63f5`
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
# Wed, 29 Nov 2017 02:20:53 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:20:53 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:23:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:23:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:23:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:23:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:02:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:02:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:02:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:02:48 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:02:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:03:31 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:03:31 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:06:37 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 03:06:37 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 03:06:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:08:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:09:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:09:00 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:09:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:09:00 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:09:01 GMT
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
	-	`sha256:37b10099826447799485832748a69feaac9e5aca1b64843ed9f17fe2dbbeea61`  
		Last Modified: Wed, 29 Nov 2017 02:37:54 GMT  
		Size: 35.3 MB (35306402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39bad85d3624a7f3a65d0c8699a2a3cf72449571c0f83e3132c41cd5ed3c53`  
		Last Modified: Wed, 29 Nov 2017 02:37:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4043adb137c3d6684682d0aaacf2c24e986fc80149199022bfa1679374c4e62d`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528f876968b6d4ca38fcfdd0e3f225ec0115e877f8576244eea5e528f4a24f71`  
		Last Modified: Wed, 29 Nov 2017 03:13:21 GMT  
		Size: 14.7 MB (14650306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c068a939086f3cac33c72eb506a68bfb9638b01f026f95516ee5375770ccb5`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ee17b6871601c6c89daaa2a8b7d1efda9a6995fb852042ceee3e2a809e386d`  
		Last Modified: Wed, 29 Nov 2017 03:13:16 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f22244de2b41317ba1aa107070c4e8610d40ac899ec22e1e41f4a4f26ba6904`  
		Last Modified: Wed, 29 Nov 2017 03:13:28 GMT  
		Size: 59.2 MB (59233663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c7b259d36ccab09ec415bb30bade6da761b9744bd3ff884cd6bdf18faabe02`  
		Last Modified: Wed, 29 Nov 2017 03:13:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f901db7f5b2a311dd32c8c2503f335d37d6c2842bf4352b92ae6b1152e50eaf`  
		Last Modified: Wed, 29 Nov 2017 03:14:11 GMT  
		Size: 2.3 MB (2347004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e150a2545d5e33ce7de8cc725c35fe186fd12fa72ba0cc791aaedb6219be90`  
		Last Modified: Wed, 29 Nov 2017 03:14:24 GMT  
		Size: 78.3 MB (78275092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3b3eaffb952cdbae27eecb9359228bd694048b181f3c5e6168e6f004f24ed8`  
		Last Modified: Wed, 29 Nov 2017 03:14:09 GMT  
		Size: 1.7 KB (1703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm variant v5

```console
$ docker pull redmine@sha256:57b7f21efe56ce793d162d649cc3878287d13a5ca1ed1c1c00c071f21e253dcc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245494007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fb052b85d0a5c3d7660ca5765c6e6d0b4a25c31d3ec8bcb9f6d94c0375852c`
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
# Wed, 29 Nov 2017 03:05:49 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 03:05:49 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 03:10:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 03:10:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 03:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 03:10:11 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:42:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:42:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:42:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:42:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:42:41 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:42:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:43:42 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:43:42 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:48:18 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 03:48:18 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 03:48:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:52:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:52:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:52:46 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:52:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:52:46 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:52:46 GMT
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
	-	`sha256:a7f4c5069a15a9169e6b75f04b7fe4b119fc3c9f81fc886a4c53a2183257eade`  
		Last Modified: Wed, 29 Nov 2017 03:19:21 GMT  
		Size: 34.2 MB (34234357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ec099af78a26d93cdd7007035051c17691e1b9faab1ffbfe78399c2eb75602`  
		Last Modified: Wed, 29 Nov 2017 03:19:08 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a85becc36eb60546600e29f2c0b5d082e240d7cd9e1e743e04baa98e4a351fb`  
		Last Modified: Wed, 29 Nov 2017 03:54:01 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14992a532c63f7fda479776fd3c19ce325883c773d15f6a37caea8e4011a7211`  
		Last Modified: Wed, 29 Nov 2017 03:54:06 GMT  
		Size: 14.3 MB (14347386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf47abf880eeb5ba1e91ed40769eab5e35542e3bb5591ee97eb5c9a02d5b7fc`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96535285c8491db58d6a752a8e5c38440d2ff27e4c62f30698ce395f40776cf`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 7.8 KB (7840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8d1f79799b47ea0e62cc6164bc36b168ac44b8a012982c71e48126a2f1534c`  
		Last Modified: Wed, 29 Nov 2017 03:54:18 GMT  
		Size: 56.6 MB (56571372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902acc612035f56eb2529117e2118c5746163dc645e2631c6c21d08b5849f0b7`  
		Last Modified: Wed, 29 Nov 2017 03:53:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d28c38c2fe5f8f7053349a275c5a25c7f4a7d03ac8561d8e0e571824334be7`  
		Last Modified: Wed, 29 Nov 2017 03:54:39 GMT  
		Size: 2.3 MB (2347347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ffdeef11a8f35dbcc91dbe757a93bd011def053cd644c8c07fb59cafcc4f25`  
		Last Modified: Wed, 29 Nov 2017 03:54:57 GMT  
		Size: 77.5 MB (77497998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ce12780cee07459117932a52dd441616dc2ee240d863c2a48a05e80ea174de`  
		Last Modified: Wed, 29 Nov 2017 03:54:38 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm variant v7

```console
$ docker pull redmine@sha256:9c390d260d682b55b35a994227f15a97825e5170ef23309a21af0eb4c28f721e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239667275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe830f8e5be8fd851691c462afaaeff27992322acb128ab0a92e4e081e97c564`
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
# Wed, 29 Nov 2017 02:52:51 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:52:52 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:57:01 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:57:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:57:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:57:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:57:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:57:03 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:31:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:31:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:31:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:31:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:31:53 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:31:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:32:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:32:48 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:32:48 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:37:21 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 03:37:22 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 03:37:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:41:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:41:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:41:41 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:41:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:41:41 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:41:42 GMT
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
	-	`sha256:11390f58c45ff95ec7ca80e46cf3dada97900bb4712e4b832d393933f32ec7d4`  
		Last Modified: Wed, 29 Nov 2017 03:08:39 GMT  
		Size: 34.0 MB (34012852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85ff6747bc82df3012ac26a5c1f51451da3a2cfecd11393b6b4deb108bee3ce`  
		Last Modified: Wed, 29 Nov 2017 03:08:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd51a3ef97fd3d97ba812f1fe047868d5158506eeeedb4f3c409d73651e42f5`  
		Last Modified: Wed, 29 Nov 2017 03:43:13 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdd352e422c2a0aef335b6746b08fd2be2c28c3b1c65f1dfdc6dc48d00468d3`  
		Last Modified: Wed, 29 Nov 2017 03:43:15 GMT  
		Size: 14.1 MB (14134531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46123db67c84bb6eead22a071077d8dbff4d4f743d57cbbfc52decc232be245`  
		Last Modified: Wed, 29 Nov 2017 03:43:10 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86a64a132a52248317d23737b1d2d2f96b981be3d9dc7e454c77f02d4f2cb65`  
		Last Modified: Wed, 29 Nov 2017 03:43:10 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136b5ce070daeaccb0ce262894984e248176b9e064757867cedf60bc9c44741`  
		Last Modified: Wed, 29 Nov 2017 03:43:25 GMT  
		Size: 54.3 MB (54306561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f350131b4f81c03eb68999fda57f17e2614ee6ac5a984cfd555f840fdf0e8ebd`  
		Last Modified: Wed, 29 Nov 2017 03:43:09 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49bb8b12d0235e37e0e43f17000e33cdb00b4997cd6cf89ff7158ee6dc5c4ea`  
		Last Modified: Wed, 29 Nov 2017 03:43:53 GMT  
		Size: 2.3 MB (2347345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb6fde8382b160fd311e618e2c7c06977b3b4994577af29440434b276a17717`  
		Last Modified: Wed, 29 Nov 2017 03:44:10 GMT  
		Size: 76.9 MB (76931502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec94a3d18e93d3e08011f7659cc9fcead7b076a5b0d9a1154179af1f1cfca04f`  
		Last Modified: Wed, 29 Nov 2017 03:43:53 GMT  
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
$ docker pull redmine@sha256:2136bb23f0587dc2257f181af5b2652525d294dc99b309a0815f0bb1d55a3df3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255500340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049ecfc842efcd3b3490a712c1339b6ab0c01ad9bab0d355b84a546279b6bf7a`
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
# Wed, 29 Nov 2017 04:34:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:34:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:38:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:38:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:38:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:38:36 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:20:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:21:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:21:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:21:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:21:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:22:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:22:19 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:22:19 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:31:35 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 05:31:35 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 05:31:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:34:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:34:29 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:34:29 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:34:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:34:29 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:34:30 GMT
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
	-	`sha256:c00efa31fbb98327286c3de74249f7bf7ab95473a62e6f8f0586873941882dc4`  
		Last Modified: Wed, 29 Nov 2017 04:54:35 GMT  
		Size: 32.8 MB (32789971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8020015056d7323fc2e9ac8cd2b5a499314caba43938fce8fe896506fdf74da`  
		Last Modified: Wed, 29 Nov 2017 04:54:20 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f569528b524a95935a9f123c15ebe9e14f0a15c829efe7b2de8f2cb24c5cabc`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66482e58af170311dfa114cb7bf30628141b65250f84f1fa2a76947ddc455222`  
		Last Modified: Wed, 29 Nov 2017 05:38:00 GMT  
		Size: 14.8 MB (14817387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8a1dc86b52251b85356e9eaef349fd2648c4eb8fd69495365e1ee003a1dad3`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea689cdecbe69943dbe797b331903ba672ee707aec95359e5bc0a0d70f1f86b4`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a49d919caeadca01b2f5dfeb5460d46e56c20843e23826ffe28efd3b834d668`  
		Last Modified: Wed, 29 Nov 2017 05:38:19 GMT  
		Size: 60.1 MB (60110795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11abd66ace22b267b82eed69d1a9bcad1a82dc27beed38c4a6997c9be3e4125f`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03052b4774c8f18d8e84bd7340ecc46790d679eea897bbb3e4b9e441a6ed30f6`  
		Last Modified: Wed, 29 Nov 2017 05:44:24 GMT  
		Size: 2.3 MB (2346999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41686d74e94c545b9bec1af07b6f314522cfd509cb82914d95654951d7f9ec65`  
		Last Modified: Wed, 29 Nov 2017 05:44:41 GMT  
		Size: 77.5 MB (77540337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b12fe06e96d8f3f90a7f5c05f42e8eca2dd0b1ebcbddf40b7c44a4d6da3f4a8`  
		Last Modified: Wed, 29 Nov 2017 05:44:21 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; ppc64le

```console
$ docker pull redmine@sha256:42b33d35a833789a5c8f4f4707ebe1098d4d6f8c77fd74688450aa12ad488ba1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.3 MB (252334859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f36642615995a621c46726b9e9f2f6f4c884be6f05f5702095d29978f74ce8`
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
# Wed, 29 Nov 2017 02:28:26 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:28:28 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:36:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:36:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:36:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:36:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:36:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:36:33 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:15:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:15:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:16:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:16:05 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:16:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:19:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:19:03 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:19:04 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:28:49 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 03:28:50 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 03:28:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:38:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:38:15 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:38:16 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:38:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:38:18 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:38:20 GMT
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
	-	`sha256:dfad6e8de95c13b63da86056f726dec8b9f9514db05559f6f6cc50709f97cae7`  
		Last Modified: Wed, 29 Nov 2017 02:45:07 GMT  
		Size: 36.3 MB (36320712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8336ff71e381c36d7d13edacac2c46e431d1a4181eaaa171b043537ad82f10`  
		Last Modified: Wed, 29 Nov 2017 02:44:52 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f9e75ed07a2e8904e2c5ee0f15d2e289bf81477032f7e26ab3fec40e170c77`  
		Last Modified: Wed, 29 Nov 2017 03:39:24 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126c3dc6fd18a990b78c47173c8e902ae73cde4215fe57b09f33e48a15fb6f39`  
		Last Modified: Wed, 29 Nov 2017 03:39:27 GMT  
		Size: 14.7 MB (14720428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fe11d2672cefd863aaed53faad464868e80d9c25195f79a87f311a11bc8247`  
		Last Modified: Wed, 29 Nov 2017 03:39:23 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d620f1fa510252bbabb692d9c7b9fcea51505a9c027978db745059b32f7afa7`  
		Last Modified: Wed, 29 Nov 2017 03:39:21 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34c8b470c2cbc0efb530a92e1b71635f2e2e04476b280e42d2aaba9d1aae105`  
		Last Modified: Wed, 29 Nov 2017 03:39:34 GMT  
		Size: 58.1 MB (58099408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65c1b57e33e0df4dafb383e6df6f16920f2dcac8508443e7f147c568feb42a3`  
		Last Modified: Wed, 29 Nov 2017 03:39:19 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46856fa2dd3842f9f5caf9f3b9e6f80be062ad85dfa960660c9c5e3652679608`  
		Last Modified: Wed, 29 Nov 2017 03:39:53 GMT  
		Size: 2.3 MB (2347347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e41c5c76a04e10b92bcc680c5ff96ea669ec40fd64a0e546945545a4f92eea7`  
		Last Modified: Wed, 29 Nov 2017 03:40:08 GMT  
		Size: 78.4 MB (78421335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a563b1d344e19538ab47024d99dd182d1a719fdc50e15eca4f126e7abb20fe0f`  
		Last Modified: Wed, 29 Nov 2017 03:39:53 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; s390x

```console
$ docker pull redmine@sha256:1ebe61e156d1c4e487becce430ffe5552eed7b0195eafd8f32c8a207e5460118
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259098016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ba5558d2ecc3540f4f39a1b3f7289a5b2f37bb27d07d6d77bfe1e910bf0454`
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
# Wed, 29 Nov 2017 10:00:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 10:00:05 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 10:02:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 10:02:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 10:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 10:02:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:30:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:30:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:30:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:30:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:53 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:30:53 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:33:29 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 10:33:29 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 10:33:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:35:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:35:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:35:45 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:35:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:35:45 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:35:46 GMT
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
	-	`sha256:8aecf1643b640bfe6355e9a2f45baaf98e042116267d7ea16b31c167433d75cc`  
		Last Modified: Wed, 29 Nov 2017 10:10:34 GMT  
		Size: 39.0 MB (38970539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af488ae7dbb0e3a499062c8f775e79ce5d5e8fb499cc3c32b68a5d2a96061e4`  
		Last Modified: Wed, 29 Nov 2017 10:10:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48259d29197d3370c94aa00fc20d073bc2176fcff0458a37fc7a93ccf2e2ba`  
		Last Modified: Wed, 29 Nov 2017 10:36:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68951b2cc3e0b486d49f2bf1a604dfc72920bb910b0f3a92beb255ab27ce1bc1`  
		Last Modified: Wed, 29 Nov 2017 10:36:52 GMT  
		Size: 14.8 MB (14815095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad8e9b077eeb77d47e6d422e4c7502c0bc698030e3d5a5a8983255ef3427e4`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b7991629e300e835043dfabe52cb7257b8c5e742b9e0a70a0545b2d1b7133f`  
		Last Modified: Wed, 29 Nov 2017 10:36:47 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1189eb3a43b5dcb29ce876b13411ed03bf2c90037856f4c340a91cf1a07471`  
		Last Modified: Wed, 29 Nov 2017 10:36:58 GMT  
		Size: 59.1 MB (59081157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e138f3c639fc2c03cc809c5c719e41f68c01a9f20c0d935ee50cfd5258dae3e2`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577331182a33b55ded369cd171053fb8cc16581c9aca29b6b3b0d0612849973e`  
		Last Modified: Wed, 29 Nov 2017 10:37:12 GMT  
		Size: 2.3 MB (2347001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e3e3b2f2a888aaf2fa791d7df219b6625a4e900f6a89e2b373f840e21aeb6e`  
		Last Modified: Wed, 29 Nov 2017 10:37:23 GMT  
		Size: 80.6 MB (80635377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4a8aad7e42b845e507039f6c4e485a258111be94f68b2a1fd5a36dbc951ca9`  
		Last Modified: Wed, 29 Nov 2017 10:37:11 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.8-passenger`

```console
$ docker pull redmine@sha256:3ae1f74d4509ccbf68e3f1147802e016075192a6b50e4dbeb7f6c1dadfb05809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.8-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e670f1fb79740efbda60e124e2661d5914e2407678536b7b35f485fba1d10084
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269920142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13fae9e431342ae70c87fbf2fea5b44fe27ee28988b14ade566fca845d67a161`
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
# Wed, 29 Nov 2017 02:20:53 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:20:53 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:23:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:23:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:23:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:23:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:02:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:02:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:02:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:02:48 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:02:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:03:31 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:03:31 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:06:37 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 03:06:37 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 03:06:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:08:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:09:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:09:00 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:09:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:09:00 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:09:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 29 Nov 2017 03:11:12 GMT
ENV PASSENGER_VERSION=5.1.12
# Wed, 29 Nov 2017 03:11:29 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:11:30 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 29 Nov 2017 03:11:30 GMT
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
	-	`sha256:37b10099826447799485832748a69feaac9e5aca1b64843ed9f17fe2dbbeea61`  
		Last Modified: Wed, 29 Nov 2017 02:37:54 GMT  
		Size: 35.3 MB (35306402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39bad85d3624a7f3a65d0c8699a2a3cf72449571c0f83e3132c41cd5ed3c53`  
		Last Modified: Wed, 29 Nov 2017 02:37:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4043adb137c3d6684682d0aaacf2c24e986fc80149199022bfa1679374c4e62d`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528f876968b6d4ca38fcfdd0e3f225ec0115e877f8576244eea5e528f4a24f71`  
		Last Modified: Wed, 29 Nov 2017 03:13:21 GMT  
		Size: 14.7 MB (14650306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c068a939086f3cac33c72eb506a68bfb9638b01f026f95516ee5375770ccb5`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ee17b6871601c6c89daaa2a8b7d1efda9a6995fb852042ceee3e2a809e386d`  
		Last Modified: Wed, 29 Nov 2017 03:13:16 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f22244de2b41317ba1aa107070c4e8610d40ac899ec22e1e41f4a4f26ba6904`  
		Last Modified: Wed, 29 Nov 2017 03:13:28 GMT  
		Size: 59.2 MB (59233663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c7b259d36ccab09ec415bb30bade6da761b9744bd3ff884cd6bdf18faabe02`  
		Last Modified: Wed, 29 Nov 2017 03:13:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f901db7f5b2a311dd32c8c2503f335d37d6c2842bf4352b92ae6b1152e50eaf`  
		Last Modified: Wed, 29 Nov 2017 03:14:11 GMT  
		Size: 2.3 MB (2347004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e150a2545d5e33ce7de8cc725c35fe186fd12fa72ba0cc791aaedb6219be90`  
		Last Modified: Wed, 29 Nov 2017 03:14:24 GMT  
		Size: 78.3 MB (78275092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3b3eaffb952cdbae27eecb9359228bd694048b181f3c5e6168e6f004f24ed8`  
		Last Modified: Wed, 29 Nov 2017 03:14:09 GMT  
		Size: 1.7 KB (1703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99208f881c76c560c4ccfbfb7ee07509a2dbea49a9b79f507598063b693bb707`  
		Last Modified: Wed, 29 Nov 2017 03:14:54 GMT  
		Size: 12.8 MB (12760078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad13662fb319e1df5172a6fbef53d663859fbe2c8c51bd2b00edaf5c0efda5`  
		Last Modified: Wed, 29 Nov 2017 03:14:52 GMT  
		Size: 4.1 MB (4076940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:3ae1f74d4509ccbf68e3f1147802e016075192a6b50e4dbeb7f6c1dadfb05809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e670f1fb79740efbda60e124e2661d5914e2407678536b7b35f485fba1d10084
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269920142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13fae9e431342ae70c87fbf2fea5b44fe27ee28988b14ade566fca845d67a161`
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
# Wed, 29 Nov 2017 02:20:53 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:20:53 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:23:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:23:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:23:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:23:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:02:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:02:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:02:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:02:48 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:02:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:03:31 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:03:31 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:06:37 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 03:06:37 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 03:06:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:08:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:09:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:09:00 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:09:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:09:00 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:09:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 29 Nov 2017 03:11:12 GMT
ENV PASSENGER_VERSION=5.1.12
# Wed, 29 Nov 2017 03:11:29 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:11:30 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 29 Nov 2017 03:11:30 GMT
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
	-	`sha256:37b10099826447799485832748a69feaac9e5aca1b64843ed9f17fe2dbbeea61`  
		Last Modified: Wed, 29 Nov 2017 02:37:54 GMT  
		Size: 35.3 MB (35306402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39bad85d3624a7f3a65d0c8699a2a3cf72449571c0f83e3132c41cd5ed3c53`  
		Last Modified: Wed, 29 Nov 2017 02:37:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4043adb137c3d6684682d0aaacf2c24e986fc80149199022bfa1679374c4e62d`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528f876968b6d4ca38fcfdd0e3f225ec0115e877f8576244eea5e528f4a24f71`  
		Last Modified: Wed, 29 Nov 2017 03:13:21 GMT  
		Size: 14.7 MB (14650306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c068a939086f3cac33c72eb506a68bfb9638b01f026f95516ee5375770ccb5`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ee17b6871601c6c89daaa2a8b7d1efda9a6995fb852042ceee3e2a809e386d`  
		Last Modified: Wed, 29 Nov 2017 03:13:16 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f22244de2b41317ba1aa107070c4e8610d40ac899ec22e1e41f4a4f26ba6904`  
		Last Modified: Wed, 29 Nov 2017 03:13:28 GMT  
		Size: 59.2 MB (59233663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c7b259d36ccab09ec415bb30bade6da761b9744bd3ff884cd6bdf18faabe02`  
		Last Modified: Wed, 29 Nov 2017 03:13:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f901db7f5b2a311dd32c8c2503f335d37d6c2842bf4352b92ae6b1152e50eaf`  
		Last Modified: Wed, 29 Nov 2017 03:14:11 GMT  
		Size: 2.3 MB (2347004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e150a2545d5e33ce7de8cc725c35fe186fd12fa72ba0cc791aaedb6219be90`  
		Last Modified: Wed, 29 Nov 2017 03:14:24 GMT  
		Size: 78.3 MB (78275092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3b3eaffb952cdbae27eecb9359228bd694048b181f3c5e6168e6f004f24ed8`  
		Last Modified: Wed, 29 Nov 2017 03:14:09 GMT  
		Size: 1.7 KB (1703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99208f881c76c560c4ccfbfb7ee07509a2dbea49a9b79f507598063b693bb707`  
		Last Modified: Wed, 29 Nov 2017 03:14:54 GMT  
		Size: 12.8 MB (12760078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad13662fb319e1df5172a6fbef53d663859fbe2c8c51bd2b00edaf5c0efda5`  
		Last Modified: Wed, 29 Nov 2017 03:14:52 GMT  
		Size: 4.1 MB (4076940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:70da55c22361d9391ad153c4e287d2695b90e99ab88179526d9900d0d6d24521
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
$ docker pull redmine@sha256:1eaf047796273102815270eabf323a3153716da79d96b65d239be4a95331bd5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253126676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e334ce9b22e2bdc9ef7a209f52f4ed1adfe07397d275755d15111c013361d9c`
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
# Wed, 29 Nov 2017 02:20:53 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:20:53 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:23:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:23:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:23:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:23:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:02:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:02:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:02:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:02:48 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:02:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:03:31 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:03:31 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:03:31 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 03:03:32 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 03:03:35 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:05:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:05:56 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:05:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:05:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:05:57 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:05:57 GMT
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
	-	`sha256:37b10099826447799485832748a69feaac9e5aca1b64843ed9f17fe2dbbeea61`  
		Last Modified: Wed, 29 Nov 2017 02:37:54 GMT  
		Size: 35.3 MB (35306402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39bad85d3624a7f3a65d0c8699a2a3cf72449571c0f83e3132c41cd5ed3c53`  
		Last Modified: Wed, 29 Nov 2017 02:37:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4043adb137c3d6684682d0aaacf2c24e986fc80149199022bfa1679374c4e62d`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528f876968b6d4ca38fcfdd0e3f225ec0115e877f8576244eea5e528f4a24f71`  
		Last Modified: Wed, 29 Nov 2017 03:13:21 GMT  
		Size: 14.7 MB (14650306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c068a939086f3cac33c72eb506a68bfb9638b01f026f95516ee5375770ccb5`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ee17b6871601c6c89daaa2a8b7d1efda9a6995fb852042ceee3e2a809e386d`  
		Last Modified: Wed, 29 Nov 2017 03:13:16 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f22244de2b41317ba1aa107070c4e8610d40ac899ec22e1e41f4a4f26ba6904`  
		Last Modified: Wed, 29 Nov 2017 03:13:28 GMT  
		Size: 59.2 MB (59233663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c7b259d36ccab09ec415bb30bade6da761b9744bd3ff884cd6bdf18faabe02`  
		Last Modified: Wed, 29 Nov 2017 03:13:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bbf3878c713beb4b345b9e300efddb72eca4061520b1144b37e2fa5ca772dc`  
		Last Modified: Wed, 29 Nov 2017 03:13:16 GMT  
		Size: 2.4 MB (2390741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88e0bc435c1cb5ac98e7f48891e4c963a9d67314e65580a3398fbe6f56c654c`  
		Last Modified: Wed, 29 Nov 2017 03:13:28 GMT  
		Size: 78.3 MB (78274904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3f5268ddd9b702bd1a532e77ce1df15eb3181cc39f649a29313fdaaea75df7`  
		Last Modified: Wed, 29 Nov 2017 03:13:13 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:73efb7f0cf1e308881792777afff603c458b978d90a8d8b41f2fee260b255c9e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245537709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3945fe3903c95d1194d59200df28bd6608dd0e985898a4470c73b09ad6ade8a9`
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
# Wed, 29 Nov 2017 03:05:49 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 03:05:49 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 03:10:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 03:10:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 03:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 03:10:11 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:42:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:42:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:42:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:42:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:42:41 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:42:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:43:42 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:43:42 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:43:42 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 03:43:42 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 03:43:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:48:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:48:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:48:06 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:48:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:48:06 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:48:07 GMT
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
	-	`sha256:a7f4c5069a15a9169e6b75f04b7fe4b119fc3c9f81fc886a4c53a2183257eade`  
		Last Modified: Wed, 29 Nov 2017 03:19:21 GMT  
		Size: 34.2 MB (34234357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ec099af78a26d93cdd7007035051c17691e1b9faab1ffbfe78399c2eb75602`  
		Last Modified: Wed, 29 Nov 2017 03:19:08 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a85becc36eb60546600e29f2c0b5d082e240d7cd9e1e743e04baa98e4a351fb`  
		Last Modified: Wed, 29 Nov 2017 03:54:01 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14992a532c63f7fda479776fd3c19ce325883c773d15f6a37caea8e4011a7211`  
		Last Modified: Wed, 29 Nov 2017 03:54:06 GMT  
		Size: 14.3 MB (14347386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf47abf880eeb5ba1e91ed40769eab5e35542e3bb5591ee97eb5c9a02d5b7fc`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96535285c8491db58d6a752a8e5c38440d2ff27e4c62f30698ce395f40776cf`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 7.8 KB (7840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8d1f79799b47ea0e62cc6164bc36b168ac44b8a012982c71e48126a2f1534c`  
		Last Modified: Wed, 29 Nov 2017 03:54:18 GMT  
		Size: 56.6 MB (56571372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902acc612035f56eb2529117e2118c5746163dc645e2631c6c21d08b5849f0b7`  
		Last Modified: Wed, 29 Nov 2017 03:53:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d18a08e7d2add8c1daa4c8bce6d6be6294c132b0562c4453679972d3b150804`  
		Last Modified: Wed, 29 Nov 2017 03:54:01 GMT  
		Size: 2.4 MB (2390999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c61859fb3b3274d7ca2108a32bcbbd92c47c986d3eb438389b6917a6dadf77`  
		Last Modified: Wed, 29 Nov 2017 03:54:18 GMT  
		Size: 77.5 MB (77498048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6212e630dcc2bac4abbfd33b5fa0a4876333e5e31a3fdd4e48a8d3aa44e15487`  
		Last Modified: Wed, 29 Nov 2017 03:53:59 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:822e16f890d9734f3a0bbd5f8f012169b351a771682ff7aa079efa8880a96e3b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239710466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1261b98c5ed04212795587d2090734313049f9b575f46536e8a6e41117b38f3`
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
# Wed, 29 Nov 2017 02:52:51 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:52:52 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:57:01 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:57:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:57:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:57:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:57:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:57:03 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:31:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:31:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:31:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:31:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:31:53 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:31:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:32:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:32:48 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:32:48 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:32:48 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 03:32:49 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 03:32:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:36:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:36:58 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:36:58 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:36:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:36:59 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:36:59 GMT
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
	-	`sha256:11390f58c45ff95ec7ca80e46cf3dada97900bb4712e4b832d393933f32ec7d4`  
		Last Modified: Wed, 29 Nov 2017 03:08:39 GMT  
		Size: 34.0 MB (34012852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85ff6747bc82df3012ac26a5c1f51451da3a2cfecd11393b6b4deb108bee3ce`  
		Last Modified: Wed, 29 Nov 2017 03:08:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd51a3ef97fd3d97ba812f1fe047868d5158506eeeedb4f3c409d73651e42f5`  
		Last Modified: Wed, 29 Nov 2017 03:43:13 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdd352e422c2a0aef335b6746b08fd2be2c28c3b1c65f1dfdc6dc48d00468d3`  
		Last Modified: Wed, 29 Nov 2017 03:43:15 GMT  
		Size: 14.1 MB (14134531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46123db67c84bb6eead22a071077d8dbff4d4f743d57cbbfc52decc232be245`  
		Last Modified: Wed, 29 Nov 2017 03:43:10 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86a64a132a52248317d23737b1d2d2f96b981be3d9dc7e454c77f02d4f2cb65`  
		Last Modified: Wed, 29 Nov 2017 03:43:10 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136b5ce070daeaccb0ce262894984e248176b9e064757867cedf60bc9c44741`  
		Last Modified: Wed, 29 Nov 2017 03:43:25 GMT  
		Size: 54.3 MB (54306561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f350131b4f81c03eb68999fda57f17e2614ee6ac5a984cfd555f840fdf0e8ebd`  
		Last Modified: Wed, 29 Nov 2017 03:43:09 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cef2a41d35a551f9fdd69c19e06bd71014fdb635c43a17c25373729fdf048c`  
		Last Modified: Wed, 29 Nov 2017 03:43:12 GMT  
		Size: 2.4 MB (2390992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40d19bfffe3101feac1eba5f76d57de5aecca749b74a386fdc05083d97a223e`  
		Last Modified: Wed, 29 Nov 2017 03:43:27 GMT  
		Size: 76.9 MB (76931046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431de82087cd7150f492eeed6f976290ec6c4b9f1d212af44680472cf23804e5`  
		Last Modified: Wed, 29 Nov 2017 03:43:08 GMT  
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
$ docker pull redmine@sha256:de97d4a8e7040a5d40b68915ddde65acd932a4c667d7e78a018f294212126041
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255543656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290a89eabeb350c0df55c8d9efe3051d52dae1984498a98108159de721746d49`
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
# Wed, 29 Nov 2017 04:34:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:34:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:38:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:38:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:38:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:38:36 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:20:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:21:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:21:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:21:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:21:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:22:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:22:19 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:22:19 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:22:19 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 05:22:20 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 05:22:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:25:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:25:35 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:25:36 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:25:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:25:36 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:25:36 GMT
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
	-	`sha256:c00efa31fbb98327286c3de74249f7bf7ab95473a62e6f8f0586873941882dc4`  
		Last Modified: Wed, 29 Nov 2017 04:54:35 GMT  
		Size: 32.8 MB (32789971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8020015056d7323fc2e9ac8cd2b5a499314caba43938fce8fe896506fdf74da`  
		Last Modified: Wed, 29 Nov 2017 04:54:20 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f569528b524a95935a9f123c15ebe9e14f0a15c829efe7b2de8f2cb24c5cabc`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66482e58af170311dfa114cb7bf30628141b65250f84f1fa2a76947ddc455222`  
		Last Modified: Wed, 29 Nov 2017 05:38:00 GMT  
		Size: 14.8 MB (14817387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8a1dc86b52251b85356e9eaef349fd2648c4eb8fd69495365e1ee003a1dad3`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea689cdecbe69943dbe797b331903ba672ee707aec95359e5bc0a0d70f1f86b4`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a49d919caeadca01b2f5dfeb5460d46e56c20843e23826ffe28efd3b834d668`  
		Last Modified: Wed, 29 Nov 2017 05:38:19 GMT  
		Size: 60.1 MB (60110795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11abd66ace22b267b82eed69d1a9bcad1a82dc27beed38c4a6997c9be3e4125f`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52a2096cc6565e48789c1d9db7f1193d3c28b834fd3c93d9fe84ea35d6563c5`  
		Last Modified: Wed, 29 Nov 2017 05:38:01 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986163209863f9d9f8f67445905a0c9fc143abf29a2a50012e192bf7b2a05039`  
		Last Modified: Wed, 29 Nov 2017 05:38:19 GMT  
		Size: 77.5 MB (77539912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391e4dbc387e5f833a088d95379753360a58dcbbb676e20457d27b24afc59732`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:08c34aaa95beb17910fce99d9e50d81586b3baabef0c76c227f133fc7af9f812
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252378344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3affd0d50456629583a19ec4ae487a733e6c4d18bedbabe8cd81567c76af49`
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
# Wed, 29 Nov 2017 02:28:26 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:28:28 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:36:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:36:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:36:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:36:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:36:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:36:33 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:15:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:15:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:16:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:16:05 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:16:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:19:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:19:03 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:19:04 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:19:05 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 03:19:06 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 03:19:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:28:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:28:29 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:28:31 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:28:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:28:34 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:28:35 GMT
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
	-	`sha256:dfad6e8de95c13b63da86056f726dec8b9f9514db05559f6f6cc50709f97cae7`  
		Last Modified: Wed, 29 Nov 2017 02:45:07 GMT  
		Size: 36.3 MB (36320712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8336ff71e381c36d7d13edacac2c46e431d1a4181eaaa171b043537ad82f10`  
		Last Modified: Wed, 29 Nov 2017 02:44:52 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f9e75ed07a2e8904e2c5ee0f15d2e289bf81477032f7e26ab3fec40e170c77`  
		Last Modified: Wed, 29 Nov 2017 03:39:24 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126c3dc6fd18a990b78c47173c8e902ae73cde4215fe57b09f33e48a15fb6f39`  
		Last Modified: Wed, 29 Nov 2017 03:39:27 GMT  
		Size: 14.7 MB (14720428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fe11d2672cefd863aaed53faad464868e80d9c25195f79a87f311a11bc8247`  
		Last Modified: Wed, 29 Nov 2017 03:39:23 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d620f1fa510252bbabb692d9c7b9fcea51505a9c027978db745059b32f7afa7`  
		Last Modified: Wed, 29 Nov 2017 03:39:21 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34c8b470c2cbc0efb530a92e1b71635f2e2e04476b280e42d2aaba9d1aae105`  
		Last Modified: Wed, 29 Nov 2017 03:39:34 GMT  
		Size: 58.1 MB (58099408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65c1b57e33e0df4dafb383e6df6f16920f2dcac8508443e7f147c568feb42a3`  
		Last Modified: Wed, 29 Nov 2017 03:39:19 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed48c9c298628c13ae4c2496e09b86f36c2e8b21c8929046ca3c517708b592e`  
		Last Modified: Wed, 29 Nov 2017 03:39:21 GMT  
		Size: 2.4 MB (2390999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bed99343c92a36e858b271f2819c5732a50999670492c0644ecc4d95914066`  
		Last Modified: Wed, 29 Nov 2017 03:39:37 GMT  
		Size: 78.4 MB (78421168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc3409577cb286fa118ef2e65e40893e66684212356dd0a23e57212b235f139`  
		Last Modified: Wed, 29 Nov 2017 03:39:20 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:b629d6af584349d1ce8b6776c129494b359cd158bf2c3c1ddd84c484e1dc9272
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259141721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3cdd2f1a66be5e5968fad3bcee7e8fd9465874794b092d2700d855fe8798689`
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
# Wed, 29 Nov 2017 10:00:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 10:00:05 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 10:02:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 10:02:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 10:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 10:02:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:30:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:30:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:30:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:30:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:53 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:30:53 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:30:53 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 10:30:54 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 10:30:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:33:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:33:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:33:16 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:33:16 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:33:16 GMT
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
	-	`sha256:8aecf1643b640bfe6355e9a2f45baaf98e042116267d7ea16b31c167433d75cc`  
		Last Modified: Wed, 29 Nov 2017 10:10:34 GMT  
		Size: 39.0 MB (38970539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af488ae7dbb0e3a499062c8f775e79ce5d5e8fb499cc3c32b68a5d2a96061e4`  
		Last Modified: Wed, 29 Nov 2017 10:10:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48259d29197d3370c94aa00fc20d073bc2176fcff0458a37fc7a93ccf2e2ba`  
		Last Modified: Wed, 29 Nov 2017 10:36:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68951b2cc3e0b486d49f2bf1a604dfc72920bb910b0f3a92beb255ab27ce1bc1`  
		Last Modified: Wed, 29 Nov 2017 10:36:52 GMT  
		Size: 14.8 MB (14815095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad8e9b077eeb77d47e6d422e4c7502c0bc698030e3d5a5a8983255ef3427e4`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b7991629e300e835043dfabe52cb7257b8c5e742b9e0a70a0545b2d1b7133f`  
		Last Modified: Wed, 29 Nov 2017 10:36:47 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1189eb3a43b5dcb29ce876b13411ed03bf2c90037856f4c340a91cf1a07471`  
		Last Modified: Wed, 29 Nov 2017 10:36:58 GMT  
		Size: 59.1 MB (59081157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e138f3c639fc2c03cc809c5c719e41f68c01a9f20c0d935ee50cfd5258dae3e2`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2638dc18bdad04e52254c595b0c55647ac5a28b34946dce6e2ef85ad689e883`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7be0a59c8d0d40515f6e6614fe848b59b37c3f662fd587c1e7e7ecfe3dc075`  
		Last Modified: Wed, 29 Nov 2017 10:36:59 GMT  
		Size: 80.6 MB (80635343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e996607c55dce7b0f00dc276b678f79e901f1047a67ad4ae78cfddba5287d0`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.5`

```console
$ docker pull redmine@sha256:70da55c22361d9391ad153c4e287d2695b90e99ab88179526d9900d0d6d24521
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
$ docker pull redmine@sha256:1eaf047796273102815270eabf323a3153716da79d96b65d239be4a95331bd5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253126676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e334ce9b22e2bdc9ef7a209f52f4ed1adfe07397d275755d15111c013361d9c`
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
# Wed, 29 Nov 2017 02:20:53 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:20:53 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:23:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:23:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:23:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:23:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:02:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:02:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:02:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:02:48 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:02:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:03:31 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:03:31 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:03:31 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 03:03:32 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 03:03:35 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:05:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:05:56 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:05:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:05:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:05:57 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:05:57 GMT
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
	-	`sha256:37b10099826447799485832748a69feaac9e5aca1b64843ed9f17fe2dbbeea61`  
		Last Modified: Wed, 29 Nov 2017 02:37:54 GMT  
		Size: 35.3 MB (35306402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39bad85d3624a7f3a65d0c8699a2a3cf72449571c0f83e3132c41cd5ed3c53`  
		Last Modified: Wed, 29 Nov 2017 02:37:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4043adb137c3d6684682d0aaacf2c24e986fc80149199022bfa1679374c4e62d`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528f876968b6d4ca38fcfdd0e3f225ec0115e877f8576244eea5e528f4a24f71`  
		Last Modified: Wed, 29 Nov 2017 03:13:21 GMT  
		Size: 14.7 MB (14650306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c068a939086f3cac33c72eb506a68bfb9638b01f026f95516ee5375770ccb5`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ee17b6871601c6c89daaa2a8b7d1efda9a6995fb852042ceee3e2a809e386d`  
		Last Modified: Wed, 29 Nov 2017 03:13:16 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f22244de2b41317ba1aa107070c4e8610d40ac899ec22e1e41f4a4f26ba6904`  
		Last Modified: Wed, 29 Nov 2017 03:13:28 GMT  
		Size: 59.2 MB (59233663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c7b259d36ccab09ec415bb30bade6da761b9744bd3ff884cd6bdf18faabe02`  
		Last Modified: Wed, 29 Nov 2017 03:13:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bbf3878c713beb4b345b9e300efddb72eca4061520b1144b37e2fa5ca772dc`  
		Last Modified: Wed, 29 Nov 2017 03:13:16 GMT  
		Size: 2.4 MB (2390741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88e0bc435c1cb5ac98e7f48891e4c963a9d67314e65580a3398fbe6f56c654c`  
		Last Modified: Wed, 29 Nov 2017 03:13:28 GMT  
		Size: 78.3 MB (78274904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3f5268ddd9b702bd1a532e77ce1df15eb3181cc39f649a29313fdaaea75df7`  
		Last Modified: Wed, 29 Nov 2017 03:13:13 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm variant v5

```console
$ docker pull redmine@sha256:73efb7f0cf1e308881792777afff603c458b978d90a8d8b41f2fee260b255c9e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245537709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3945fe3903c95d1194d59200df28bd6608dd0e985898a4470c73b09ad6ade8a9`
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
# Wed, 29 Nov 2017 03:05:49 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 03:05:49 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 03:10:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 03:10:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 03:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 03:10:11 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:42:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:42:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:42:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:42:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:42:41 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:42:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:43:42 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:43:42 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:43:42 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 03:43:42 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 03:43:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:48:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:48:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:48:06 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:48:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:48:06 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:48:07 GMT
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
	-	`sha256:a7f4c5069a15a9169e6b75f04b7fe4b119fc3c9f81fc886a4c53a2183257eade`  
		Last Modified: Wed, 29 Nov 2017 03:19:21 GMT  
		Size: 34.2 MB (34234357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ec099af78a26d93cdd7007035051c17691e1b9faab1ffbfe78399c2eb75602`  
		Last Modified: Wed, 29 Nov 2017 03:19:08 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a85becc36eb60546600e29f2c0b5d082e240d7cd9e1e743e04baa98e4a351fb`  
		Last Modified: Wed, 29 Nov 2017 03:54:01 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14992a532c63f7fda479776fd3c19ce325883c773d15f6a37caea8e4011a7211`  
		Last Modified: Wed, 29 Nov 2017 03:54:06 GMT  
		Size: 14.3 MB (14347386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf47abf880eeb5ba1e91ed40769eab5e35542e3bb5591ee97eb5c9a02d5b7fc`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96535285c8491db58d6a752a8e5c38440d2ff27e4c62f30698ce395f40776cf`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 7.8 KB (7840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8d1f79799b47ea0e62cc6164bc36b168ac44b8a012982c71e48126a2f1534c`  
		Last Modified: Wed, 29 Nov 2017 03:54:18 GMT  
		Size: 56.6 MB (56571372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902acc612035f56eb2529117e2118c5746163dc645e2631c6c21d08b5849f0b7`  
		Last Modified: Wed, 29 Nov 2017 03:53:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d18a08e7d2add8c1daa4c8bce6d6be6294c132b0562c4453679972d3b150804`  
		Last Modified: Wed, 29 Nov 2017 03:54:01 GMT  
		Size: 2.4 MB (2390999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c61859fb3b3274d7ca2108a32bcbbd92c47c986d3eb438389b6917a6dadf77`  
		Last Modified: Wed, 29 Nov 2017 03:54:18 GMT  
		Size: 77.5 MB (77498048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6212e630dcc2bac4abbfd33b5fa0a4876333e5e31a3fdd4e48a8d3aa44e15487`  
		Last Modified: Wed, 29 Nov 2017 03:53:59 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm variant v7

```console
$ docker pull redmine@sha256:822e16f890d9734f3a0bbd5f8f012169b351a771682ff7aa079efa8880a96e3b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239710466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1261b98c5ed04212795587d2090734313049f9b575f46536e8a6e41117b38f3`
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
# Wed, 29 Nov 2017 02:52:51 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:52:52 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:57:01 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:57:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:57:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:57:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:57:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:57:03 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:31:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:31:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:31:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:31:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:31:53 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:31:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:32:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:32:48 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:32:48 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:32:48 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 03:32:49 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 03:32:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:36:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:36:58 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:36:58 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:36:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:36:59 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:36:59 GMT
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
	-	`sha256:11390f58c45ff95ec7ca80e46cf3dada97900bb4712e4b832d393933f32ec7d4`  
		Last Modified: Wed, 29 Nov 2017 03:08:39 GMT  
		Size: 34.0 MB (34012852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85ff6747bc82df3012ac26a5c1f51451da3a2cfecd11393b6b4deb108bee3ce`  
		Last Modified: Wed, 29 Nov 2017 03:08:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd51a3ef97fd3d97ba812f1fe047868d5158506eeeedb4f3c409d73651e42f5`  
		Last Modified: Wed, 29 Nov 2017 03:43:13 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdd352e422c2a0aef335b6746b08fd2be2c28c3b1c65f1dfdc6dc48d00468d3`  
		Last Modified: Wed, 29 Nov 2017 03:43:15 GMT  
		Size: 14.1 MB (14134531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46123db67c84bb6eead22a071077d8dbff4d4f743d57cbbfc52decc232be245`  
		Last Modified: Wed, 29 Nov 2017 03:43:10 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86a64a132a52248317d23737b1d2d2f96b981be3d9dc7e454c77f02d4f2cb65`  
		Last Modified: Wed, 29 Nov 2017 03:43:10 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136b5ce070daeaccb0ce262894984e248176b9e064757867cedf60bc9c44741`  
		Last Modified: Wed, 29 Nov 2017 03:43:25 GMT  
		Size: 54.3 MB (54306561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f350131b4f81c03eb68999fda57f17e2614ee6ac5a984cfd555f840fdf0e8ebd`  
		Last Modified: Wed, 29 Nov 2017 03:43:09 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cef2a41d35a551f9fdd69c19e06bd71014fdb635c43a17c25373729fdf048c`  
		Last Modified: Wed, 29 Nov 2017 03:43:12 GMT  
		Size: 2.4 MB (2390992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40d19bfffe3101feac1eba5f76d57de5aecca749b74a386fdc05083d97a223e`  
		Last Modified: Wed, 29 Nov 2017 03:43:27 GMT  
		Size: 76.9 MB (76931046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431de82087cd7150f492eeed6f976290ec6c4b9f1d212af44680472cf23804e5`  
		Last Modified: Wed, 29 Nov 2017 03:43:08 GMT  
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
$ docker pull redmine@sha256:de97d4a8e7040a5d40b68915ddde65acd932a4c667d7e78a018f294212126041
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255543656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290a89eabeb350c0df55c8d9efe3051d52dae1984498a98108159de721746d49`
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
# Wed, 29 Nov 2017 04:34:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:34:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:38:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:38:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:38:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:38:36 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:20:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:21:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:21:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:21:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:21:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:22:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:22:19 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:22:19 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:22:19 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 05:22:20 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 05:22:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:25:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:25:35 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:25:36 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:25:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:25:36 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:25:36 GMT
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
	-	`sha256:c00efa31fbb98327286c3de74249f7bf7ab95473a62e6f8f0586873941882dc4`  
		Last Modified: Wed, 29 Nov 2017 04:54:35 GMT  
		Size: 32.8 MB (32789971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8020015056d7323fc2e9ac8cd2b5a499314caba43938fce8fe896506fdf74da`  
		Last Modified: Wed, 29 Nov 2017 04:54:20 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f569528b524a95935a9f123c15ebe9e14f0a15c829efe7b2de8f2cb24c5cabc`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66482e58af170311dfa114cb7bf30628141b65250f84f1fa2a76947ddc455222`  
		Last Modified: Wed, 29 Nov 2017 05:38:00 GMT  
		Size: 14.8 MB (14817387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8a1dc86b52251b85356e9eaef349fd2648c4eb8fd69495365e1ee003a1dad3`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea689cdecbe69943dbe797b331903ba672ee707aec95359e5bc0a0d70f1f86b4`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a49d919caeadca01b2f5dfeb5460d46e56c20843e23826ffe28efd3b834d668`  
		Last Modified: Wed, 29 Nov 2017 05:38:19 GMT  
		Size: 60.1 MB (60110795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11abd66ace22b267b82eed69d1a9bcad1a82dc27beed38c4a6997c9be3e4125f`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52a2096cc6565e48789c1d9db7f1193d3c28b834fd3c93d9fe84ea35d6563c5`  
		Last Modified: Wed, 29 Nov 2017 05:38:01 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986163209863f9d9f8f67445905a0c9fc143abf29a2a50012e192bf7b2a05039`  
		Last Modified: Wed, 29 Nov 2017 05:38:19 GMT  
		Size: 77.5 MB (77539912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391e4dbc387e5f833a088d95379753360a58dcbbb676e20457d27b24afc59732`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; ppc64le

```console
$ docker pull redmine@sha256:08c34aaa95beb17910fce99d9e50d81586b3baabef0c76c227f133fc7af9f812
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252378344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3affd0d50456629583a19ec4ae487a733e6c4d18bedbabe8cd81567c76af49`
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
# Wed, 29 Nov 2017 02:28:26 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:28:28 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:36:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:36:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:36:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:36:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:36:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:36:33 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:15:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:15:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:16:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:16:05 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:16:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:19:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:19:03 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:19:04 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:19:05 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 03:19:06 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 03:19:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:28:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:28:29 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:28:31 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:28:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:28:34 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:28:35 GMT
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
	-	`sha256:dfad6e8de95c13b63da86056f726dec8b9f9514db05559f6f6cc50709f97cae7`  
		Last Modified: Wed, 29 Nov 2017 02:45:07 GMT  
		Size: 36.3 MB (36320712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8336ff71e381c36d7d13edacac2c46e431d1a4181eaaa171b043537ad82f10`  
		Last Modified: Wed, 29 Nov 2017 02:44:52 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f9e75ed07a2e8904e2c5ee0f15d2e289bf81477032f7e26ab3fec40e170c77`  
		Last Modified: Wed, 29 Nov 2017 03:39:24 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126c3dc6fd18a990b78c47173c8e902ae73cde4215fe57b09f33e48a15fb6f39`  
		Last Modified: Wed, 29 Nov 2017 03:39:27 GMT  
		Size: 14.7 MB (14720428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fe11d2672cefd863aaed53faad464868e80d9c25195f79a87f311a11bc8247`  
		Last Modified: Wed, 29 Nov 2017 03:39:23 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d620f1fa510252bbabb692d9c7b9fcea51505a9c027978db745059b32f7afa7`  
		Last Modified: Wed, 29 Nov 2017 03:39:21 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34c8b470c2cbc0efb530a92e1b71635f2e2e04476b280e42d2aaba9d1aae105`  
		Last Modified: Wed, 29 Nov 2017 03:39:34 GMT  
		Size: 58.1 MB (58099408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65c1b57e33e0df4dafb383e6df6f16920f2dcac8508443e7f147c568feb42a3`  
		Last Modified: Wed, 29 Nov 2017 03:39:19 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed48c9c298628c13ae4c2496e09b86f36c2e8b21c8929046ca3c517708b592e`  
		Last Modified: Wed, 29 Nov 2017 03:39:21 GMT  
		Size: 2.4 MB (2390999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bed99343c92a36e858b271f2819c5732a50999670492c0644ecc4d95914066`  
		Last Modified: Wed, 29 Nov 2017 03:39:37 GMT  
		Size: 78.4 MB (78421168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc3409577cb286fa118ef2e65e40893e66684212356dd0a23e57212b235f139`  
		Last Modified: Wed, 29 Nov 2017 03:39:20 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; s390x

```console
$ docker pull redmine@sha256:b629d6af584349d1ce8b6776c129494b359cd158bf2c3c1ddd84c484e1dc9272
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259141721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3cdd2f1a66be5e5968fad3bcee7e8fd9465874794b092d2700d855fe8798689`
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
# Wed, 29 Nov 2017 10:00:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 10:00:05 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 10:02:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 10:02:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 10:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 10:02:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:30:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:30:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:30:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:30:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:53 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:30:53 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:30:53 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 10:30:54 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 10:30:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:33:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:33:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:33:16 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:33:16 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:33:16 GMT
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
	-	`sha256:8aecf1643b640bfe6355e9a2f45baaf98e042116267d7ea16b31c167433d75cc`  
		Last Modified: Wed, 29 Nov 2017 10:10:34 GMT  
		Size: 39.0 MB (38970539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af488ae7dbb0e3a499062c8f775e79ce5d5e8fb499cc3c32b68a5d2a96061e4`  
		Last Modified: Wed, 29 Nov 2017 10:10:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48259d29197d3370c94aa00fc20d073bc2176fcff0458a37fc7a93ccf2e2ba`  
		Last Modified: Wed, 29 Nov 2017 10:36:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68951b2cc3e0b486d49f2bf1a604dfc72920bb910b0f3a92beb255ab27ce1bc1`  
		Last Modified: Wed, 29 Nov 2017 10:36:52 GMT  
		Size: 14.8 MB (14815095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad8e9b077eeb77d47e6d422e4c7502c0bc698030e3d5a5a8983255ef3427e4`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b7991629e300e835043dfabe52cb7257b8c5e742b9e0a70a0545b2d1b7133f`  
		Last Modified: Wed, 29 Nov 2017 10:36:47 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1189eb3a43b5dcb29ce876b13411ed03bf2c90037856f4c340a91cf1a07471`  
		Last Modified: Wed, 29 Nov 2017 10:36:58 GMT  
		Size: 59.1 MB (59081157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e138f3c639fc2c03cc809c5c719e41f68c01a9f20c0d935ee50cfd5258dae3e2`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2638dc18bdad04e52254c595b0c55647ac5a28b34946dce6e2ef85ad689e883`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7be0a59c8d0d40515f6e6614fe848b59b37c3f662fd587c1e7e7ecfe3dc075`  
		Last Modified: Wed, 29 Nov 2017 10:36:59 GMT  
		Size: 80.6 MB (80635343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e996607c55dce7b0f00dc276b678f79e901f1047a67ad4ae78cfddba5287d0`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.5-passenger`

```console
$ docker pull redmine@sha256:c670bc7c31853ae5a629f73e820ea2df228d2c9728b606c77b1e957a2d88497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.5-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:220168dbb911e2cef2ce659423497f24a7d0cd19d5f8f543d051f1e0b63a8df8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (269963709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdec8cb8f91463a1247de976a2d593cfd0167d67d48a38169bf9b8eebb7ad22d`
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
# Wed, 29 Nov 2017 02:20:53 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:20:53 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:23:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:23:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:23:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:23:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:02:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:02:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:02:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:02:48 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:02:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:03:31 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:03:31 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:03:31 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 03:03:32 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 03:03:35 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:05:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:05:56 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:05:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:05:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:05:57 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:05:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 29 Nov 2017 03:06:13 GMT
ENV PASSENGER_VERSION=5.1.12
# Wed, 29 Nov 2017 03:06:29 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:06:30 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 29 Nov 2017 03:06:30 GMT
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
	-	`sha256:37b10099826447799485832748a69feaac9e5aca1b64843ed9f17fe2dbbeea61`  
		Last Modified: Wed, 29 Nov 2017 02:37:54 GMT  
		Size: 35.3 MB (35306402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39bad85d3624a7f3a65d0c8699a2a3cf72449571c0f83e3132c41cd5ed3c53`  
		Last Modified: Wed, 29 Nov 2017 02:37:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4043adb137c3d6684682d0aaacf2c24e986fc80149199022bfa1679374c4e62d`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528f876968b6d4ca38fcfdd0e3f225ec0115e877f8576244eea5e528f4a24f71`  
		Last Modified: Wed, 29 Nov 2017 03:13:21 GMT  
		Size: 14.7 MB (14650306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c068a939086f3cac33c72eb506a68bfb9638b01f026f95516ee5375770ccb5`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ee17b6871601c6c89daaa2a8b7d1efda9a6995fb852042ceee3e2a809e386d`  
		Last Modified: Wed, 29 Nov 2017 03:13:16 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f22244de2b41317ba1aa107070c4e8610d40ac899ec22e1e41f4a4f26ba6904`  
		Last Modified: Wed, 29 Nov 2017 03:13:28 GMT  
		Size: 59.2 MB (59233663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c7b259d36ccab09ec415bb30bade6da761b9744bd3ff884cd6bdf18faabe02`  
		Last Modified: Wed, 29 Nov 2017 03:13:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bbf3878c713beb4b345b9e300efddb72eca4061520b1144b37e2fa5ca772dc`  
		Last Modified: Wed, 29 Nov 2017 03:13:16 GMT  
		Size: 2.4 MB (2390741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88e0bc435c1cb5ac98e7f48891e4c963a9d67314e65580a3398fbe6f56c654c`  
		Last Modified: Wed, 29 Nov 2017 03:13:28 GMT  
		Size: 78.3 MB (78274904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3f5268ddd9b702bd1a532e77ce1df15eb3181cc39f649a29313fdaaea75df7`  
		Last Modified: Wed, 29 Nov 2017 03:13:13 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5844aa2c069ee3a552d4fbb94ca2d0b5498695ab5ace023fb023dd4bfd8ddc98`  
		Last Modified: Wed, 29 Nov 2017 03:13:50 GMT  
		Size: 12.8 MB (12760099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9929fa9f9b35fd7998bcbf5ce54ea734d5856209cbd6ab83939d63880ebe1363`  
		Last Modified: Wed, 29 Nov 2017 03:13:48 GMT  
		Size: 4.1 MB (4076934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:c670bc7c31853ae5a629f73e820ea2df228d2c9728b606c77b1e957a2d88497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:220168dbb911e2cef2ce659423497f24a7d0cd19d5f8f543d051f1e0b63a8df8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (269963709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdec8cb8f91463a1247de976a2d593cfd0167d67d48a38169bf9b8eebb7ad22d`
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
# Wed, 29 Nov 2017 02:20:53 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:20:53 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:23:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:23:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:23:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:23:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:23:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:02:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:02:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:02:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:02:48 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:02:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:03:31 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:03:31 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:03:31 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 03:03:32 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 03:03:35 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:05:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:05:56 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:05:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:05:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:05:57 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:05:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 29 Nov 2017 03:06:13 GMT
ENV PASSENGER_VERSION=5.1.12
# Wed, 29 Nov 2017 03:06:29 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:06:30 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 29 Nov 2017 03:06:30 GMT
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
	-	`sha256:37b10099826447799485832748a69feaac9e5aca1b64843ed9f17fe2dbbeea61`  
		Last Modified: Wed, 29 Nov 2017 02:37:54 GMT  
		Size: 35.3 MB (35306402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39bad85d3624a7f3a65d0c8699a2a3cf72449571c0f83e3132c41cd5ed3c53`  
		Last Modified: Wed, 29 Nov 2017 02:37:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4043adb137c3d6684682d0aaacf2c24e986fc80149199022bfa1679374c4e62d`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528f876968b6d4ca38fcfdd0e3f225ec0115e877f8576244eea5e528f4a24f71`  
		Last Modified: Wed, 29 Nov 2017 03:13:21 GMT  
		Size: 14.7 MB (14650306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c068a939086f3cac33c72eb506a68bfb9638b01f026f95516ee5375770ccb5`  
		Last Modified: Wed, 29 Nov 2017 03:13:18 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ee17b6871601c6c89daaa2a8b7d1efda9a6995fb852042ceee3e2a809e386d`  
		Last Modified: Wed, 29 Nov 2017 03:13:16 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f22244de2b41317ba1aa107070c4e8610d40ac899ec22e1e41f4a4f26ba6904`  
		Last Modified: Wed, 29 Nov 2017 03:13:28 GMT  
		Size: 59.2 MB (59233663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c7b259d36ccab09ec415bb30bade6da761b9744bd3ff884cd6bdf18faabe02`  
		Last Modified: Wed, 29 Nov 2017 03:13:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bbf3878c713beb4b345b9e300efddb72eca4061520b1144b37e2fa5ca772dc`  
		Last Modified: Wed, 29 Nov 2017 03:13:16 GMT  
		Size: 2.4 MB (2390741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88e0bc435c1cb5ac98e7f48891e4c963a9d67314e65580a3398fbe6f56c654c`  
		Last Modified: Wed, 29 Nov 2017 03:13:28 GMT  
		Size: 78.3 MB (78274904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3f5268ddd9b702bd1a532e77ce1df15eb3181cc39f649a29313fdaaea75df7`  
		Last Modified: Wed, 29 Nov 2017 03:13:13 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5844aa2c069ee3a552d4fbb94ca2d0b5498695ab5ace023fb023dd4bfd8ddc98`  
		Last Modified: Wed, 29 Nov 2017 03:13:50 GMT  
		Size: 12.8 MB (12760099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9929fa9f9b35fd7998bcbf5ce54ea734d5856209cbd6ab83939d63880ebe1363`  
		Last Modified: Wed, 29 Nov 2017 03:13:48 GMT  
		Size: 4.1 MB (4076934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:a03199445c51c2a8cb69f68a128b2aacde57666662e1cfbe06bb60d528c0db15
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
$ docker pull redmine@sha256:ea5402023c7dbfee006af7dc6d492c27db867becad57ffca1a33df5a9a119b52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241924176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a08e45188455d0e9adf2ca220ba8d20141f256b3f817af97557653b7a963725`
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
# Wed, 29 Nov 2017 02:00:03 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:00:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:03:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:03:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:03:25 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 02:54:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 02:55:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 02:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 02:55:07 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 02:55:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 02:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:41 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 02:55:41 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 02:55:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 02:57:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 02:57:57 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 02:57:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 02:57:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 02:57:57 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 02:57:58 GMT
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
	-	`sha256:9ad5468696cb48065225ceeb6cc5ea98659e61df3ea5d6a935a1ce3f286e0c1f`  
		Last Modified: Wed, 29 Nov 2017 02:31:25 GMT  
		Size: 24.7 MB (24719347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46570cf888deb54274b6170a313daa5af6504399f9c2a8015e1b5cbd81ae3954`  
		Last Modified: Wed, 29 Nov 2017 02:31:19 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d754fe9af0fa8d889ae1ad30091e20b9284fa7c96b9c5d27cb00db22097377`  
		Last Modified: Wed, 29 Nov 2017 03:11:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdb2fb3457b7d286979072dd334371958dfd366b961af6a9818d9c7177032bc`  
		Last Modified: Wed, 29 Nov 2017 03:11:51 GMT  
		Size: 14.7 MB (14650277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0279c28e185b5376123102b9e52cbc4f5421af45058691fbee8a24c1f5bed0`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9771402e046b8fc25be917dabbc725053db3a10a9ad28fcdde5d8f6fc96716d7`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60600395d907ebc1f2ef6d498224907b5c9bac7577b9df9b2e5050b7543fa59f`  
		Last Modified: Wed, 29 Nov 2017 03:12:01 GMT  
		Size: 59.2 MB (59233442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b3ae050df001ac4709a78c435858ed9bc0bd273acc766553ae42fdc24a6a9a`  
		Last Modified: Wed, 29 Nov 2017 03:11:44 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cc979a32abf0068344202263c01fabdf0e906cd992a57887ead9b2d34d2bd1`  
		Last Modified: Wed, 29 Nov 2017 03:11:45 GMT  
		Size: 2.4 MB (2449726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76409286c21d64d405ae0cae5f316f3d2965680d719383716b6a5a6d0bdceb7`  
		Last Modified: Wed, 29 Nov 2017 03:12:02 GMT  
		Size: 77.6 MB (77600727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd51bcfe68ca68df40c79d8d4a0293e9108719fe589bae2c394c2634c6d341c7`  
		Last Modified: Wed, 29 Nov 2017 03:11:43 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:6f968d8e81bf004895e883770f372914254e16afa830419d53809262f0dddefa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235135170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e5a12bfb3cc8e8ed47db1f07bacff191a64daade3cebbc7931cbda57b6643f`
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
# Wed, 29 Nov 2017 02:45:34 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:45:34 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:51:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:51:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:51:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:51:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:35:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:36:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:36:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:36:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:36:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:36:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:37:15 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:37:15 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:41:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:41:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:41:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:41:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:41:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:41:53 GMT
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
	-	`sha256:179ea4737244be5f572da462b3c5705bab2143befb6455e4336bcd8d0e407760`  
		Last Modified: Wed, 29 Nov 2017 03:15:10 GMT  
		Size: 24.5 MB (24483509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ced734833d0751f11706a7c22921175ad89ab3abdfbf8fb0f0dea144ecd5ea`  
		Last Modified: Wed, 29 Nov 2017 03:15:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ee29af941d7de19d192ab4259ea30796ff26211bea73b25e76987e71eb29a`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cba304d0f2c108938d18959720674f353aec0ac38de3b665de962528498423`  
		Last Modified: Wed, 29 Nov 2017 03:53:09 GMT  
		Size: 14.3 MB (14347359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593e1fe9d4684177d51cccc210e4730aeec65b083f553f1a06ecf6ee8889d0e4`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1a96819f4195e3a2ebde299f49b32dbe208a1b8cdb14dbfb2e6127c85ab0c0`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 7.8 KB (7841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355e66b9387dcf98fa1a7a0894720236d9d0944e17e37b51205fcb102b378d82`  
		Last Modified: Wed, 29 Nov 2017 03:53:26 GMT  
		Size: 56.6 MB (56571351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3754cf5b9d29327dd282bb5698cb31cd4db874059c4cf19ac91dc3db78b4195c`  
		Last Modified: Wed, 29 Nov 2017 03:53:03 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67b5d283d650a6af8d3e7dc7d8e0ad5b5175d8a22abc50740665aac632e7110`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 2.5 MB (2450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e509a1affd384340033278c59bcf749e1666df622600502e366b835d47e9b174`  
		Last Modified: Wed, 29 Nov 2017 03:53:21 GMT  
		Size: 76.8 MB (76787012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77e61d6a1508e609ec515fc36271ef779118a525489372468278a0ea6ec0898`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:aad9ac6d28e2b6a93a5936a433795c0c986edf611461ba691aceb2e31fdd7fdc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.4 MB (229410907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9019c2be1b8d4dea765e83172189dc1610e2ad535bde37c81b866f0ae826e4bc`
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
# Wed, 29 Nov 2017 02:33:24 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:33:24 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:38:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:38:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:38:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:38:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:38:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:38:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:25:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:25:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:25:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:25:53 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:25:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:26:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:26:47 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:26:47 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:26:47 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:26:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:26:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:30:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:30:58 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:30:58 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:30:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:30:59 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:30:59 GMT
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
	-	`sha256:03e7f6f3705f0e9e8cb844f5c52fe990111f0a50371f3e1ddaeb1daa84332de3`  
		Last Modified: Wed, 29 Nov 2017 03:03:18 GMT  
		Size: 24.3 MB (24347802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c245079801e79239de88eba5c9a0b3d79a1c6cfb5331c689ad311c9d3920661`  
		Last Modified: Wed, 29 Nov 2017 03:03:10 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b224be4a9c54af80d0898a7e595321b31f42e0d2c0a9de6fb163a4ed097e408c`  
		Last Modified: Wed, 29 Nov 2017 03:42:14 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bf57316c6b52323d9f1ede9e96c270bd41eca35196906fad75f95b8f28f1af`  
		Last Modified: Wed, 29 Nov 2017 03:42:16 GMT  
		Size: 14.1 MB (14134528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca634fa2018fa96cc0b2f55add61cad0450fa80800a8fbdd3eb8b12945a76852`  
		Last Modified: Wed, 29 Nov 2017 03:42:13 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c086b2042081559479d2c6c70926bd12aebfd328017b497c28b266abab1db3f`  
		Last Modified: Wed, 29 Nov 2017 03:42:11 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d792ba80ad3576b345e236bf14f6b3a094eccd8070d2ac888c7caf54850ced`  
		Last Modified: Wed, 29 Nov 2017 03:42:26 GMT  
		Size: 54.3 MB (54307191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f64adc3241b89b3fd6b29b9a5f7fd089579d44e04c1bb5f1736bb36bb41780`  
		Last Modified: Wed, 29 Nov 2017 03:42:09 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a26840fc03414dbd5f7808a2288cd84f841ba16f2ef830fabeea0a847467cd`  
		Last Modified: Wed, 29 Nov 2017 03:42:10 GMT  
		Size: 2.5 MB (2450396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e1799d1a839d6af2aa69b96ba0aff83e7d7993e278126744224d8f90632228`  
		Last Modified: Wed, 29 Nov 2017 03:42:27 GMT  
		Size: 76.2 MB (76236503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88491b6920f2605c98ea1998371b9d9df7cef84fc5557992a3754b5f2b11e7f`  
		Last Modified: Wed, 29 Nov 2017 03:42:11 GMT  
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
$ docker pull redmine@sha256:44b13c8d466c6445c050a1bb2c4dc64f31f84faffad4f4328888c78fc383800f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245866473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86389fee9180696c76db1a6a637972ba4b26d3fe2ef698950aafef50b3b6a270`
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
# Wed, 29 Nov 2017 04:08:08 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:08:08 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:12:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:12:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:12:10 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:11:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:11:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:11:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:11:47 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:11:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:12:47 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:12:47 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 05:12:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:15:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:15:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:15:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:15:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:15:39 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:15:39 GMT
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
	-	`sha256:1d606874a95f77a281a95ea62aecc6652e267ab2ad0d20ee2abe625c0108ea6a`  
		Last Modified: Wed, 29 Nov 2017 04:47:48 GMT  
		Size: 23.7 MB (23707414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b3b5e60949389e180d533eefbb7fb23c3814ffe2dc87fb4d356431d68e097`  
		Last Modified: Wed, 29 Nov 2017 04:47:40 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6290ab79572fcdca52bc6d4dedfe3f2a6c32bbd8fa40110ee26b2b650a6fdc14`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8907d7b491156601acd90d0bbd05dcf53369287764f4f32decae43da940dfe`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 14.8 MB (14817396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0bdebc662d70bd06cecd81a4c20122dd591b2ba2ace4e6f085a0b7b4cce465`  
		Last Modified: Wed, 29 Nov 2017 05:36:25 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea035533dab2cebad7ee27b3db7987cebb653a0129f7ed3121fe8e07961f1e1`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9bed729e63931113d8749301a61b0789c36c5555e389ae0426c271f612478`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 60.1 MB (60111462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b2d57c91aa6b268ad6bfc48c017655c9cdf076e23092da03a220fb7d787bd9`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23cfd68b0fc24d07e4046edfc414d177dff85d55d28bbafd83d9e4fa3493baf`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 2.4 MB (2449741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e2e1eda9fbe74fd148246a53dfbac200c88c6dc7602ee40ad3b95dbdec5b1`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 76.9 MB (76885610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa498c25050d6fd9f7d3e7fe9378b05c0c96f7a9ed7c7d8f38b352fa23b486`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:b56e098ad8e96056d80682978087685659d7de5d172b62de81170fd456b9907e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.6 MB (240591891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c0650ea200164218e154ad272ac0a214d22a423d41d59033b5d83220b13a2f`
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
# Wed, 29 Nov 2017 01:53:25 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 01:53:27 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:02:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:02:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:02:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:02:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:02:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:02:41 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:01:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:02:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:02:09 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:02:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:02:16 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:02:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:05:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:05:16 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:05:18 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:05:19 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:05:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:05:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:14:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:14:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:14:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:15:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:15:04 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:15:05 GMT
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
	-	`sha256:df8dcf8d98a8895c3b37b829f3edfa38f5c86819ddc204dc430044b3ab5599fa`  
		Last Modified: Wed, 29 Nov 2017 02:41:15 GMT  
		Size: 25.2 MB (25158835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43e007d4277f360aea4f1ba1284ed7a5114dd41020f09f8da45a19aaf6007fc`  
		Last Modified: Wed, 29 Nov 2017 02:41:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43b0534e1d0653163bc5d41a27b2b323181e2737012a22906d243321a5b6af0`  
		Last Modified: Wed, 29 Nov 2017 03:38:43 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6181313b5af95b67f88eba99e61b9806a7523b305f0923a188e0c1940aa74ba`  
		Last Modified: Wed, 29 Nov 2017 03:38:46 GMT  
		Size: 14.7 MB (14720318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5b5cbedba2e72f124dcecec0c81289ec378a882c930a4ae041c8b05e84ecd1`  
		Last Modified: Wed, 29 Nov 2017 03:38:42 GMT  
		Size: 469.8 KB (469840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4e350e846fa462b3a885303b6d70a7554c08b9602eee7386b8623ab3bdc062`  
		Last Modified: Wed, 29 Nov 2017 03:38:41 GMT  
		Size: 8.6 KB (8633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6787db5bd9d1e70cf3554c18e90f48d07adf2f38c06923a51f239e4e835f62`  
		Last Modified: Wed, 29 Nov 2017 03:38:53 GMT  
		Size: 58.1 MB (58099150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876f34303a335367596fdd3a6c9a547ac591592b684adb041fb03e3a7c1618bb`  
		Last Modified: Wed, 29 Nov 2017 03:38:39 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700f59b93e11f30f92600d9f38cf1b81e9700578dc40cf33103971f59fbd61bd`  
		Last Modified: Wed, 29 Nov 2017 03:38:39 GMT  
		Size: 2.5 MB (2450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9df5dad03c816e926680c0f49f9c0704881d5b619aabe456f305e3484b230c`  
		Last Modified: Wed, 29 Nov 2017 03:38:54 GMT  
		Size: 77.7 MB (77737589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b20a012ee58f5dd830d53fcd8142f4bf041ac0174469e98d9a5828868fe6081`  
		Last Modified: Wed, 29 Nov 2017 03:38:38 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:5427407fea74009d757762b807075c30871317b91f9ec1df560a75cbde3bd29f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244737088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c668a254a4bdd63e46f6e2227a1323576949f2f4cae692d2b7807600bfc1e7`
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
# Wed, 29 Nov 2017 09:45:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 09:45:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 09:49:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 09:49:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 09:49:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 09:49:02 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:26:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:26:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:26:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:26:46 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:26:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:27:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:27:21 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:27:21 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 10:27:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:29:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:29:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:29:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:29:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:29:53 GMT
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
	-	`sha256:05d4ee3f2152ec599a26f35e14003e134c639db2f56399563c1726a8b7a8d29a`  
		Last Modified: Wed, 29 Nov 2017 10:07:07 GMT  
		Size: 25.1 MB (25111185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951848c9263d526779afb0312759897b5d73819b19ac1c2f12c68ccc05a977af`  
		Last Modified: Wed, 29 Nov 2017 10:07:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe2550444116bdfc46721f26860f83c0422bc33bcef6ae8b9f3bf3ed8ea5c1`  
		Last Modified: Wed, 29 Nov 2017 10:36:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a53223f31c10d034019dc8488f9dfdeb46f2b9429098d6c65b8600ca2146c`  
		Last Modified: Wed, 29 Nov 2017 10:36:13 GMT  
		Size: 14.8 MB (14815027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639d76a25bbb1bf06d9c487892a8fbf3e296a2092f5ce2386481188b883a3b3`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384c1671418080426f0bfbe9e5f1fb477aa230e26f16add728b943e7aa110d1`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25ea638c611e9ac4370c065dcf7c96dd948eaa929af93a4987c15e30ae5041`  
		Last Modified: Wed, 29 Nov 2017 10:36:20 GMT  
		Size: 59.1 MB (59082388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cac7b2191e12520e7d79b4d3181176f37aa11dc9b83516e15a1d22ff7be7496`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604cd9a3a7a58f7575f3dbbdda98a97ef30bdad45c3fd0882bfc4d00c1919b35`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 2.4 MB (2449744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7dc1025ef8f402bce9c33dcf7b8deed5d54a790d5498120ec36c1397807bc`  
		Last Modified: Wed, 29 Nov 2017 10:36:24 GMT  
		Size: 80.0 MB (80029892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b060c1b16c6a3d0a51649ba9382c820351a8a386d6828b571fa3825bf621ea1`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.3`

```console
$ docker pull redmine@sha256:a03199445c51c2a8cb69f68a128b2aacde57666662e1cfbe06bb60d528c0db15
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
$ docker pull redmine@sha256:ea5402023c7dbfee006af7dc6d492c27db867becad57ffca1a33df5a9a119b52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241924176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a08e45188455d0e9adf2ca220ba8d20141f256b3f817af97557653b7a963725`
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
# Wed, 29 Nov 2017 02:00:03 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:00:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:03:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:03:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:03:25 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 02:54:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 02:55:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 02:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 02:55:07 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 02:55:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 02:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:41 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 02:55:41 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 02:55:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 02:57:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 02:57:57 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 02:57:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 02:57:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 02:57:57 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 02:57:58 GMT
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
	-	`sha256:9ad5468696cb48065225ceeb6cc5ea98659e61df3ea5d6a935a1ce3f286e0c1f`  
		Last Modified: Wed, 29 Nov 2017 02:31:25 GMT  
		Size: 24.7 MB (24719347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46570cf888deb54274b6170a313daa5af6504399f9c2a8015e1b5cbd81ae3954`  
		Last Modified: Wed, 29 Nov 2017 02:31:19 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d754fe9af0fa8d889ae1ad30091e20b9284fa7c96b9c5d27cb00db22097377`  
		Last Modified: Wed, 29 Nov 2017 03:11:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdb2fb3457b7d286979072dd334371958dfd366b961af6a9818d9c7177032bc`  
		Last Modified: Wed, 29 Nov 2017 03:11:51 GMT  
		Size: 14.7 MB (14650277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0279c28e185b5376123102b9e52cbc4f5421af45058691fbee8a24c1f5bed0`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9771402e046b8fc25be917dabbc725053db3a10a9ad28fcdde5d8f6fc96716d7`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60600395d907ebc1f2ef6d498224907b5c9bac7577b9df9b2e5050b7543fa59f`  
		Last Modified: Wed, 29 Nov 2017 03:12:01 GMT  
		Size: 59.2 MB (59233442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b3ae050df001ac4709a78c435858ed9bc0bd273acc766553ae42fdc24a6a9a`  
		Last Modified: Wed, 29 Nov 2017 03:11:44 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cc979a32abf0068344202263c01fabdf0e906cd992a57887ead9b2d34d2bd1`  
		Last Modified: Wed, 29 Nov 2017 03:11:45 GMT  
		Size: 2.4 MB (2449726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76409286c21d64d405ae0cae5f316f3d2965680d719383716b6a5a6d0bdceb7`  
		Last Modified: Wed, 29 Nov 2017 03:12:02 GMT  
		Size: 77.6 MB (77600727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd51bcfe68ca68df40c79d8d4a0293e9108719fe589bae2c394c2634c6d341c7`  
		Last Modified: Wed, 29 Nov 2017 03:11:43 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:6f968d8e81bf004895e883770f372914254e16afa830419d53809262f0dddefa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235135170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e5a12bfb3cc8e8ed47db1f07bacff191a64daade3cebbc7931cbda57b6643f`
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
# Wed, 29 Nov 2017 02:45:34 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:45:34 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:51:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:51:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:51:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:51:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:35:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:36:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:36:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:36:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:36:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:36:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:37:15 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:37:15 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:41:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:41:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:41:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:41:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:41:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:41:53 GMT
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
	-	`sha256:179ea4737244be5f572da462b3c5705bab2143befb6455e4336bcd8d0e407760`  
		Last Modified: Wed, 29 Nov 2017 03:15:10 GMT  
		Size: 24.5 MB (24483509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ced734833d0751f11706a7c22921175ad89ab3abdfbf8fb0f0dea144ecd5ea`  
		Last Modified: Wed, 29 Nov 2017 03:15:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ee29af941d7de19d192ab4259ea30796ff26211bea73b25e76987e71eb29a`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cba304d0f2c108938d18959720674f353aec0ac38de3b665de962528498423`  
		Last Modified: Wed, 29 Nov 2017 03:53:09 GMT  
		Size: 14.3 MB (14347359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593e1fe9d4684177d51cccc210e4730aeec65b083f553f1a06ecf6ee8889d0e4`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1a96819f4195e3a2ebde299f49b32dbe208a1b8cdb14dbfb2e6127c85ab0c0`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 7.8 KB (7841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355e66b9387dcf98fa1a7a0894720236d9d0944e17e37b51205fcb102b378d82`  
		Last Modified: Wed, 29 Nov 2017 03:53:26 GMT  
		Size: 56.6 MB (56571351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3754cf5b9d29327dd282bb5698cb31cd4db874059c4cf19ac91dc3db78b4195c`  
		Last Modified: Wed, 29 Nov 2017 03:53:03 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67b5d283d650a6af8d3e7dc7d8e0ad5b5175d8a22abc50740665aac632e7110`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 2.5 MB (2450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e509a1affd384340033278c59bcf749e1666df622600502e366b835d47e9b174`  
		Last Modified: Wed, 29 Nov 2017 03:53:21 GMT  
		Size: 76.8 MB (76787012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77e61d6a1508e609ec515fc36271ef779118a525489372468278a0ea6ec0898`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:aad9ac6d28e2b6a93a5936a433795c0c986edf611461ba691aceb2e31fdd7fdc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.4 MB (229410907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9019c2be1b8d4dea765e83172189dc1610e2ad535bde37c81b866f0ae826e4bc`
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
# Wed, 29 Nov 2017 02:33:24 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:33:24 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:38:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:38:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:38:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:38:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:38:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:38:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:25:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:25:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:25:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:25:53 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:25:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:26:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:26:47 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:26:47 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:26:47 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:26:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:26:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:30:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:30:58 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:30:58 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:30:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:30:59 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:30:59 GMT
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
	-	`sha256:03e7f6f3705f0e9e8cb844f5c52fe990111f0a50371f3e1ddaeb1daa84332de3`  
		Last Modified: Wed, 29 Nov 2017 03:03:18 GMT  
		Size: 24.3 MB (24347802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c245079801e79239de88eba5c9a0b3d79a1c6cfb5331c689ad311c9d3920661`  
		Last Modified: Wed, 29 Nov 2017 03:03:10 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b224be4a9c54af80d0898a7e595321b31f42e0d2c0a9de6fb163a4ed097e408c`  
		Last Modified: Wed, 29 Nov 2017 03:42:14 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bf57316c6b52323d9f1ede9e96c270bd41eca35196906fad75f95b8f28f1af`  
		Last Modified: Wed, 29 Nov 2017 03:42:16 GMT  
		Size: 14.1 MB (14134528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca634fa2018fa96cc0b2f55add61cad0450fa80800a8fbdd3eb8b12945a76852`  
		Last Modified: Wed, 29 Nov 2017 03:42:13 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c086b2042081559479d2c6c70926bd12aebfd328017b497c28b266abab1db3f`  
		Last Modified: Wed, 29 Nov 2017 03:42:11 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d792ba80ad3576b345e236bf14f6b3a094eccd8070d2ac888c7caf54850ced`  
		Last Modified: Wed, 29 Nov 2017 03:42:26 GMT  
		Size: 54.3 MB (54307191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f64adc3241b89b3fd6b29b9a5f7fd089579d44e04c1bb5f1736bb36bb41780`  
		Last Modified: Wed, 29 Nov 2017 03:42:09 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a26840fc03414dbd5f7808a2288cd84f841ba16f2ef830fabeea0a847467cd`  
		Last Modified: Wed, 29 Nov 2017 03:42:10 GMT  
		Size: 2.5 MB (2450396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e1799d1a839d6af2aa69b96ba0aff83e7d7993e278126744224d8f90632228`  
		Last Modified: Wed, 29 Nov 2017 03:42:27 GMT  
		Size: 76.2 MB (76236503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88491b6920f2605c98ea1998371b9d9df7cef84fc5557992a3754b5f2b11e7f`  
		Last Modified: Wed, 29 Nov 2017 03:42:11 GMT  
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
$ docker pull redmine@sha256:44b13c8d466c6445c050a1bb2c4dc64f31f84faffad4f4328888c78fc383800f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245866473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86389fee9180696c76db1a6a637972ba4b26d3fe2ef698950aafef50b3b6a270`
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
# Wed, 29 Nov 2017 04:08:08 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:08:08 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:12:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:12:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:12:10 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:11:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:11:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:11:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:11:47 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:11:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:12:47 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:12:47 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 05:12:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:15:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:15:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:15:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:15:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:15:39 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:15:39 GMT
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
	-	`sha256:1d606874a95f77a281a95ea62aecc6652e267ab2ad0d20ee2abe625c0108ea6a`  
		Last Modified: Wed, 29 Nov 2017 04:47:48 GMT  
		Size: 23.7 MB (23707414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b3b5e60949389e180d533eefbb7fb23c3814ffe2dc87fb4d356431d68e097`  
		Last Modified: Wed, 29 Nov 2017 04:47:40 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6290ab79572fcdca52bc6d4dedfe3f2a6c32bbd8fa40110ee26b2b650a6fdc14`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8907d7b491156601acd90d0bbd05dcf53369287764f4f32decae43da940dfe`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 14.8 MB (14817396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0bdebc662d70bd06cecd81a4c20122dd591b2ba2ace4e6f085a0b7b4cce465`  
		Last Modified: Wed, 29 Nov 2017 05:36:25 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea035533dab2cebad7ee27b3db7987cebb653a0129f7ed3121fe8e07961f1e1`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9bed729e63931113d8749301a61b0789c36c5555e389ae0426c271f612478`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 60.1 MB (60111462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b2d57c91aa6b268ad6bfc48c017655c9cdf076e23092da03a220fb7d787bd9`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23cfd68b0fc24d07e4046edfc414d177dff85d55d28bbafd83d9e4fa3493baf`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 2.4 MB (2449741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e2e1eda9fbe74fd148246a53dfbac200c88c6dc7602ee40ad3b95dbdec5b1`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 76.9 MB (76885610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa498c25050d6fd9f7d3e7fe9378b05c0c96f7a9ed7c7d8f38b352fa23b486`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:b56e098ad8e96056d80682978087685659d7de5d172b62de81170fd456b9907e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.6 MB (240591891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c0650ea200164218e154ad272ac0a214d22a423d41d59033b5d83220b13a2f`
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
# Wed, 29 Nov 2017 01:53:25 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 01:53:27 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:02:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:02:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:02:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:02:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:02:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:02:41 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:01:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:02:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:02:09 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:02:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:02:16 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:02:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:05:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:05:16 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:05:18 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:05:19 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:05:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:05:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:14:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:14:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:14:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:15:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:15:04 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:15:05 GMT
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
	-	`sha256:df8dcf8d98a8895c3b37b829f3edfa38f5c86819ddc204dc430044b3ab5599fa`  
		Last Modified: Wed, 29 Nov 2017 02:41:15 GMT  
		Size: 25.2 MB (25158835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43e007d4277f360aea4f1ba1284ed7a5114dd41020f09f8da45a19aaf6007fc`  
		Last Modified: Wed, 29 Nov 2017 02:41:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43b0534e1d0653163bc5d41a27b2b323181e2737012a22906d243321a5b6af0`  
		Last Modified: Wed, 29 Nov 2017 03:38:43 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6181313b5af95b67f88eba99e61b9806a7523b305f0923a188e0c1940aa74ba`  
		Last Modified: Wed, 29 Nov 2017 03:38:46 GMT  
		Size: 14.7 MB (14720318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5b5cbedba2e72f124dcecec0c81289ec378a882c930a4ae041c8b05e84ecd1`  
		Last Modified: Wed, 29 Nov 2017 03:38:42 GMT  
		Size: 469.8 KB (469840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4e350e846fa462b3a885303b6d70a7554c08b9602eee7386b8623ab3bdc062`  
		Last Modified: Wed, 29 Nov 2017 03:38:41 GMT  
		Size: 8.6 KB (8633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6787db5bd9d1e70cf3554c18e90f48d07adf2f38c06923a51f239e4e835f62`  
		Last Modified: Wed, 29 Nov 2017 03:38:53 GMT  
		Size: 58.1 MB (58099150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876f34303a335367596fdd3a6c9a547ac591592b684adb041fb03e3a7c1618bb`  
		Last Modified: Wed, 29 Nov 2017 03:38:39 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700f59b93e11f30f92600d9f38cf1b81e9700578dc40cf33103971f59fbd61bd`  
		Last Modified: Wed, 29 Nov 2017 03:38:39 GMT  
		Size: 2.5 MB (2450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9df5dad03c816e926680c0f49f9c0704881d5b619aabe456f305e3484b230c`  
		Last Modified: Wed, 29 Nov 2017 03:38:54 GMT  
		Size: 77.7 MB (77737589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b20a012ee58f5dd830d53fcd8142f4bf041ac0174469e98d9a5828868fe6081`  
		Last Modified: Wed, 29 Nov 2017 03:38:38 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; s390x

```console
$ docker pull redmine@sha256:5427407fea74009d757762b807075c30871317b91f9ec1df560a75cbde3bd29f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244737088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c668a254a4bdd63e46f6e2227a1323576949f2f4cae692d2b7807600bfc1e7`
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
# Wed, 29 Nov 2017 09:45:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 09:45:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 09:49:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 09:49:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 09:49:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 09:49:02 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:26:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:26:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:26:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:26:46 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:26:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:27:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:27:21 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:27:21 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 10:27:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:29:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:29:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:29:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:29:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:29:53 GMT
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
	-	`sha256:05d4ee3f2152ec599a26f35e14003e134c639db2f56399563c1726a8b7a8d29a`  
		Last Modified: Wed, 29 Nov 2017 10:07:07 GMT  
		Size: 25.1 MB (25111185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951848c9263d526779afb0312759897b5d73819b19ac1c2f12c68ccc05a977af`  
		Last Modified: Wed, 29 Nov 2017 10:07:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe2550444116bdfc46721f26860f83c0422bc33bcef6ae8b9f3bf3ed8ea5c1`  
		Last Modified: Wed, 29 Nov 2017 10:36:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a53223f31c10d034019dc8488f9dfdeb46f2b9429098d6c65b8600ca2146c`  
		Last Modified: Wed, 29 Nov 2017 10:36:13 GMT  
		Size: 14.8 MB (14815027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639d76a25bbb1bf06d9c487892a8fbf3e296a2092f5ce2386481188b883a3b3`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384c1671418080426f0bfbe9e5f1fb477aa230e26f16add728b943e7aa110d1`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25ea638c611e9ac4370c065dcf7c96dd948eaa929af93a4987c15e30ae5041`  
		Last Modified: Wed, 29 Nov 2017 10:36:20 GMT  
		Size: 59.1 MB (59082388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cac7b2191e12520e7d79b4d3181176f37aa11dc9b83516e15a1d22ff7be7496`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604cd9a3a7a58f7575f3dbbdda98a97ef30bdad45c3fd0882bfc4d00c1919b35`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 2.4 MB (2449744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7dc1025ef8f402bce9c33dcf7b8deed5d54a790d5498120ec36c1397807bc`  
		Last Modified: Wed, 29 Nov 2017 10:36:24 GMT  
		Size: 80.0 MB (80029892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b060c1b16c6a3d0a51649ba9382c820351a8a386d6828b571fa3825bf621ea1`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.3-passenger`

```console
$ docker pull redmine@sha256:3f7b4dbc9b7726548b8e0c46b999e463a621decbe7e746b797c4c8b1d65d491b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:bd98396c2425d4ef29688464c708cf58a0b6dbfd63c85353f078def35cc9c358
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258761210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e83b1fe467795899ab0d772bdaf384d651f1186fe7baf9d65874e24c18dc0b`
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
# Wed, 29 Nov 2017 02:00:03 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:00:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:03:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:03:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:03:25 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 02:54:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 02:55:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 02:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 02:55:07 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 02:55:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 02:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:41 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 02:55:41 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 02:55:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 02:57:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 02:57:57 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 02:57:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 02:57:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 02:57:57 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 02:57:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 29 Nov 2017 03:02:07 GMT
ENV PASSENGER_VERSION=5.1.12
# Wed, 29 Nov 2017 03:02:25 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:02:26 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 29 Nov 2017 03:02:26 GMT
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
	-	`sha256:9ad5468696cb48065225ceeb6cc5ea98659e61df3ea5d6a935a1ce3f286e0c1f`  
		Last Modified: Wed, 29 Nov 2017 02:31:25 GMT  
		Size: 24.7 MB (24719347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46570cf888deb54274b6170a313daa5af6504399f9c2a8015e1b5cbd81ae3954`  
		Last Modified: Wed, 29 Nov 2017 02:31:19 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d754fe9af0fa8d889ae1ad30091e20b9284fa7c96b9c5d27cb00db22097377`  
		Last Modified: Wed, 29 Nov 2017 03:11:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdb2fb3457b7d286979072dd334371958dfd366b961af6a9818d9c7177032bc`  
		Last Modified: Wed, 29 Nov 2017 03:11:51 GMT  
		Size: 14.7 MB (14650277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0279c28e185b5376123102b9e52cbc4f5421af45058691fbee8a24c1f5bed0`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9771402e046b8fc25be917dabbc725053db3a10a9ad28fcdde5d8f6fc96716d7`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60600395d907ebc1f2ef6d498224907b5c9bac7577b9df9b2e5050b7543fa59f`  
		Last Modified: Wed, 29 Nov 2017 03:12:01 GMT  
		Size: 59.2 MB (59233442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b3ae050df001ac4709a78c435858ed9bc0bd273acc766553ae42fdc24a6a9a`  
		Last Modified: Wed, 29 Nov 2017 03:11:44 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cc979a32abf0068344202263c01fabdf0e906cd992a57887ead9b2d34d2bd1`  
		Last Modified: Wed, 29 Nov 2017 03:11:45 GMT  
		Size: 2.4 MB (2449726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76409286c21d64d405ae0cae5f316f3d2965680d719383716b6a5a6d0bdceb7`  
		Last Modified: Wed, 29 Nov 2017 03:12:02 GMT  
		Size: 77.6 MB (77600727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd51bcfe68ca68df40c79d8d4a0293e9108719fe589bae2c394c2634c6d341c7`  
		Last Modified: Wed, 29 Nov 2017 03:11:43 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc64fc7e98732bf9ad7bb8860fef261948a8158ad74e50bedd4a3f02b9184a0`  
		Last Modified: Wed, 29 Nov 2017 03:12:40 GMT  
		Size: 12.8 MB (12760104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740affca61074c2913cbbc03b7053aefa817a26518c44f62d5b7c41a81285bb1`  
		Last Modified: Wed, 29 Nov 2017 03:12:36 GMT  
		Size: 4.1 MB (4076930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:3f7b4dbc9b7726548b8e0c46b999e463a621decbe7e746b797c4c8b1d65d491b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:bd98396c2425d4ef29688464c708cf58a0b6dbfd63c85353f078def35cc9c358
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258761210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e83b1fe467795899ab0d772bdaf384d651f1186fe7baf9d65874e24c18dc0b`
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
# Wed, 29 Nov 2017 02:00:03 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:00:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:03:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:03:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:03:25 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 02:54:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 02:55:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 02:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 02:55:07 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 02:55:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 02:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:41 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 02:55:41 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 02:55:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 02:57:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 02:57:57 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 02:57:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 02:57:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 02:57:57 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 02:57:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 29 Nov 2017 03:02:07 GMT
ENV PASSENGER_VERSION=5.1.12
# Wed, 29 Nov 2017 03:02:25 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:02:26 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 29 Nov 2017 03:02:26 GMT
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
	-	`sha256:9ad5468696cb48065225ceeb6cc5ea98659e61df3ea5d6a935a1ce3f286e0c1f`  
		Last Modified: Wed, 29 Nov 2017 02:31:25 GMT  
		Size: 24.7 MB (24719347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46570cf888deb54274b6170a313daa5af6504399f9c2a8015e1b5cbd81ae3954`  
		Last Modified: Wed, 29 Nov 2017 02:31:19 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d754fe9af0fa8d889ae1ad30091e20b9284fa7c96b9c5d27cb00db22097377`  
		Last Modified: Wed, 29 Nov 2017 03:11:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdb2fb3457b7d286979072dd334371958dfd366b961af6a9818d9c7177032bc`  
		Last Modified: Wed, 29 Nov 2017 03:11:51 GMT  
		Size: 14.7 MB (14650277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0279c28e185b5376123102b9e52cbc4f5421af45058691fbee8a24c1f5bed0`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9771402e046b8fc25be917dabbc725053db3a10a9ad28fcdde5d8f6fc96716d7`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60600395d907ebc1f2ef6d498224907b5c9bac7577b9df9b2e5050b7543fa59f`  
		Last Modified: Wed, 29 Nov 2017 03:12:01 GMT  
		Size: 59.2 MB (59233442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b3ae050df001ac4709a78c435858ed9bc0bd273acc766553ae42fdc24a6a9a`  
		Last Modified: Wed, 29 Nov 2017 03:11:44 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cc979a32abf0068344202263c01fabdf0e906cd992a57887ead9b2d34d2bd1`  
		Last Modified: Wed, 29 Nov 2017 03:11:45 GMT  
		Size: 2.4 MB (2449726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76409286c21d64d405ae0cae5f316f3d2965680d719383716b6a5a6d0bdceb7`  
		Last Modified: Wed, 29 Nov 2017 03:12:02 GMT  
		Size: 77.6 MB (77600727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd51bcfe68ca68df40c79d8d4a0293e9108719fe589bae2c394c2634c6d341c7`  
		Last Modified: Wed, 29 Nov 2017 03:11:43 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc64fc7e98732bf9ad7bb8860fef261948a8158ad74e50bedd4a3f02b9184a0`  
		Last Modified: Wed, 29 Nov 2017 03:12:40 GMT  
		Size: 12.8 MB (12760104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740affca61074c2913cbbc03b7053aefa817a26518c44f62d5b7c41a81285bb1`  
		Last Modified: Wed, 29 Nov 2017 03:12:36 GMT  
		Size: 4.1 MB (4076930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:3f7b4dbc9b7726548b8e0c46b999e463a621decbe7e746b797c4c8b1d65d491b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:bd98396c2425d4ef29688464c708cf58a0b6dbfd63c85353f078def35cc9c358
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258761210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e83b1fe467795899ab0d772bdaf384d651f1186fe7baf9d65874e24c18dc0b`
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
# Wed, 29 Nov 2017 02:00:03 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:00:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:03:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:03:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:03:25 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 02:54:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 02:55:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 02:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 02:55:07 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 02:55:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 02:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:41 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 02:55:41 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 02:55:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 02:57:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 02:57:57 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 02:57:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 02:57:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 02:57:57 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 02:57:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 29 Nov 2017 03:02:07 GMT
ENV PASSENGER_VERSION=5.1.12
# Wed, 29 Nov 2017 03:02:25 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:02:26 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 29 Nov 2017 03:02:26 GMT
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
	-	`sha256:9ad5468696cb48065225ceeb6cc5ea98659e61df3ea5d6a935a1ce3f286e0c1f`  
		Last Modified: Wed, 29 Nov 2017 02:31:25 GMT  
		Size: 24.7 MB (24719347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46570cf888deb54274b6170a313daa5af6504399f9c2a8015e1b5cbd81ae3954`  
		Last Modified: Wed, 29 Nov 2017 02:31:19 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d754fe9af0fa8d889ae1ad30091e20b9284fa7c96b9c5d27cb00db22097377`  
		Last Modified: Wed, 29 Nov 2017 03:11:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdb2fb3457b7d286979072dd334371958dfd366b961af6a9818d9c7177032bc`  
		Last Modified: Wed, 29 Nov 2017 03:11:51 GMT  
		Size: 14.7 MB (14650277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0279c28e185b5376123102b9e52cbc4f5421af45058691fbee8a24c1f5bed0`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9771402e046b8fc25be917dabbc725053db3a10a9ad28fcdde5d8f6fc96716d7`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60600395d907ebc1f2ef6d498224907b5c9bac7577b9df9b2e5050b7543fa59f`  
		Last Modified: Wed, 29 Nov 2017 03:12:01 GMT  
		Size: 59.2 MB (59233442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b3ae050df001ac4709a78c435858ed9bc0bd273acc766553ae42fdc24a6a9a`  
		Last Modified: Wed, 29 Nov 2017 03:11:44 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cc979a32abf0068344202263c01fabdf0e906cd992a57887ead9b2d34d2bd1`  
		Last Modified: Wed, 29 Nov 2017 03:11:45 GMT  
		Size: 2.4 MB (2449726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76409286c21d64d405ae0cae5f316f3d2965680d719383716b6a5a6d0bdceb7`  
		Last Modified: Wed, 29 Nov 2017 03:12:02 GMT  
		Size: 77.6 MB (77600727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd51bcfe68ca68df40c79d8d4a0293e9108719fe589bae2c394c2634c6d341c7`  
		Last Modified: Wed, 29 Nov 2017 03:11:43 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc64fc7e98732bf9ad7bb8860fef261948a8158ad74e50bedd4a3f02b9184a0`  
		Last Modified: Wed, 29 Nov 2017 03:12:40 GMT  
		Size: 12.8 MB (12760104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740affca61074c2913cbbc03b7053aefa817a26518c44f62d5b7c41a81285bb1`  
		Last Modified: Wed, 29 Nov 2017 03:12:36 GMT  
		Size: 4.1 MB (4076930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:a03199445c51c2a8cb69f68a128b2aacde57666662e1cfbe06bb60d528c0db15
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
$ docker pull redmine@sha256:ea5402023c7dbfee006af7dc6d492c27db867becad57ffca1a33df5a9a119b52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241924176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a08e45188455d0e9adf2ca220ba8d20141f256b3f817af97557653b7a963725`
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
# Wed, 29 Nov 2017 02:00:03 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:00:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:03:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:03:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:03:25 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 02:54:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 02:55:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 02:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 02:55:07 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 02:55:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 02:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:41 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 02:55:41 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 02:55:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 02:57:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 02:57:57 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 02:57:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 02:57:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 02:57:57 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 02:57:58 GMT
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
	-	`sha256:9ad5468696cb48065225ceeb6cc5ea98659e61df3ea5d6a935a1ce3f286e0c1f`  
		Last Modified: Wed, 29 Nov 2017 02:31:25 GMT  
		Size: 24.7 MB (24719347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46570cf888deb54274b6170a313daa5af6504399f9c2a8015e1b5cbd81ae3954`  
		Last Modified: Wed, 29 Nov 2017 02:31:19 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d754fe9af0fa8d889ae1ad30091e20b9284fa7c96b9c5d27cb00db22097377`  
		Last Modified: Wed, 29 Nov 2017 03:11:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdb2fb3457b7d286979072dd334371958dfd366b961af6a9818d9c7177032bc`  
		Last Modified: Wed, 29 Nov 2017 03:11:51 GMT  
		Size: 14.7 MB (14650277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0279c28e185b5376123102b9e52cbc4f5421af45058691fbee8a24c1f5bed0`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9771402e046b8fc25be917dabbc725053db3a10a9ad28fcdde5d8f6fc96716d7`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60600395d907ebc1f2ef6d498224907b5c9bac7577b9df9b2e5050b7543fa59f`  
		Last Modified: Wed, 29 Nov 2017 03:12:01 GMT  
		Size: 59.2 MB (59233442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b3ae050df001ac4709a78c435858ed9bc0bd273acc766553ae42fdc24a6a9a`  
		Last Modified: Wed, 29 Nov 2017 03:11:44 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cc979a32abf0068344202263c01fabdf0e906cd992a57887ead9b2d34d2bd1`  
		Last Modified: Wed, 29 Nov 2017 03:11:45 GMT  
		Size: 2.4 MB (2449726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76409286c21d64d405ae0cae5f316f3d2965680d719383716b6a5a6d0bdceb7`  
		Last Modified: Wed, 29 Nov 2017 03:12:02 GMT  
		Size: 77.6 MB (77600727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd51bcfe68ca68df40c79d8d4a0293e9108719fe589bae2c394c2634c6d341c7`  
		Last Modified: Wed, 29 Nov 2017 03:11:43 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:6f968d8e81bf004895e883770f372914254e16afa830419d53809262f0dddefa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235135170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e5a12bfb3cc8e8ed47db1f07bacff191a64daade3cebbc7931cbda57b6643f`
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
# Wed, 29 Nov 2017 02:45:34 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:45:34 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:51:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:51:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:51:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:51:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:35:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:36:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:36:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:36:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:36:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:36:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:37:15 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:37:15 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:41:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:41:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:41:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:41:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:41:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:41:53 GMT
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
	-	`sha256:179ea4737244be5f572da462b3c5705bab2143befb6455e4336bcd8d0e407760`  
		Last Modified: Wed, 29 Nov 2017 03:15:10 GMT  
		Size: 24.5 MB (24483509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ced734833d0751f11706a7c22921175ad89ab3abdfbf8fb0f0dea144ecd5ea`  
		Last Modified: Wed, 29 Nov 2017 03:15:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ee29af941d7de19d192ab4259ea30796ff26211bea73b25e76987e71eb29a`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cba304d0f2c108938d18959720674f353aec0ac38de3b665de962528498423`  
		Last Modified: Wed, 29 Nov 2017 03:53:09 GMT  
		Size: 14.3 MB (14347359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593e1fe9d4684177d51cccc210e4730aeec65b083f553f1a06ecf6ee8889d0e4`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1a96819f4195e3a2ebde299f49b32dbe208a1b8cdb14dbfb2e6127c85ab0c0`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 7.8 KB (7841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355e66b9387dcf98fa1a7a0894720236d9d0944e17e37b51205fcb102b378d82`  
		Last Modified: Wed, 29 Nov 2017 03:53:26 GMT  
		Size: 56.6 MB (56571351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3754cf5b9d29327dd282bb5698cb31cd4db874059c4cf19ac91dc3db78b4195c`  
		Last Modified: Wed, 29 Nov 2017 03:53:03 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67b5d283d650a6af8d3e7dc7d8e0ad5b5175d8a22abc50740665aac632e7110`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 2.5 MB (2450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e509a1affd384340033278c59bcf749e1666df622600502e366b835d47e9b174`  
		Last Modified: Wed, 29 Nov 2017 03:53:21 GMT  
		Size: 76.8 MB (76787012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77e61d6a1508e609ec515fc36271ef779118a525489372468278a0ea6ec0898`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:aad9ac6d28e2b6a93a5936a433795c0c986edf611461ba691aceb2e31fdd7fdc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.4 MB (229410907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9019c2be1b8d4dea765e83172189dc1610e2ad535bde37c81b866f0ae826e4bc`
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
# Wed, 29 Nov 2017 02:33:24 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:33:24 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:38:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:38:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:38:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:38:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:38:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:38:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:25:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:25:50 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:25:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:25:53 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:25:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:26:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:26:47 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:26:47 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:26:47 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:26:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:26:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:30:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:30:58 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:30:58 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:30:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:30:59 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:30:59 GMT
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
	-	`sha256:03e7f6f3705f0e9e8cb844f5c52fe990111f0a50371f3e1ddaeb1daa84332de3`  
		Last Modified: Wed, 29 Nov 2017 03:03:18 GMT  
		Size: 24.3 MB (24347802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c245079801e79239de88eba5c9a0b3d79a1c6cfb5331c689ad311c9d3920661`  
		Last Modified: Wed, 29 Nov 2017 03:03:10 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b224be4a9c54af80d0898a7e595321b31f42e0d2c0a9de6fb163a4ed097e408c`  
		Last Modified: Wed, 29 Nov 2017 03:42:14 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bf57316c6b52323d9f1ede9e96c270bd41eca35196906fad75f95b8f28f1af`  
		Last Modified: Wed, 29 Nov 2017 03:42:16 GMT  
		Size: 14.1 MB (14134528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca634fa2018fa96cc0b2f55add61cad0450fa80800a8fbdd3eb8b12945a76852`  
		Last Modified: Wed, 29 Nov 2017 03:42:13 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c086b2042081559479d2c6c70926bd12aebfd328017b497c28b266abab1db3f`  
		Last Modified: Wed, 29 Nov 2017 03:42:11 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d792ba80ad3576b345e236bf14f6b3a094eccd8070d2ac888c7caf54850ced`  
		Last Modified: Wed, 29 Nov 2017 03:42:26 GMT  
		Size: 54.3 MB (54307191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f64adc3241b89b3fd6b29b9a5f7fd089579d44e04c1bb5f1736bb36bb41780`  
		Last Modified: Wed, 29 Nov 2017 03:42:09 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a26840fc03414dbd5f7808a2288cd84f841ba16f2ef830fabeea0a847467cd`  
		Last Modified: Wed, 29 Nov 2017 03:42:10 GMT  
		Size: 2.5 MB (2450396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e1799d1a839d6af2aa69b96ba0aff83e7d7993e278126744224d8f90632228`  
		Last Modified: Wed, 29 Nov 2017 03:42:27 GMT  
		Size: 76.2 MB (76236503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88491b6920f2605c98ea1998371b9d9df7cef84fc5557992a3754b5f2b11e7f`  
		Last Modified: Wed, 29 Nov 2017 03:42:11 GMT  
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
$ docker pull redmine@sha256:44b13c8d466c6445c050a1bb2c4dc64f31f84faffad4f4328888c78fc383800f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245866473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86389fee9180696c76db1a6a637972ba4b26d3fe2ef698950aafef50b3b6a270`
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
# Wed, 29 Nov 2017 04:08:08 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:08:08 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:12:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:12:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:12:10 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:11:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:11:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:11:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:11:47 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:11:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:12:47 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:12:47 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 05:12:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:15:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:15:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:15:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:15:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:15:39 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:15:39 GMT
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
	-	`sha256:1d606874a95f77a281a95ea62aecc6652e267ab2ad0d20ee2abe625c0108ea6a`  
		Last Modified: Wed, 29 Nov 2017 04:47:48 GMT  
		Size: 23.7 MB (23707414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b3b5e60949389e180d533eefbb7fb23c3814ffe2dc87fb4d356431d68e097`  
		Last Modified: Wed, 29 Nov 2017 04:47:40 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6290ab79572fcdca52bc6d4dedfe3f2a6c32bbd8fa40110ee26b2b650a6fdc14`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8907d7b491156601acd90d0bbd05dcf53369287764f4f32decae43da940dfe`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 14.8 MB (14817396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0bdebc662d70bd06cecd81a4c20122dd591b2ba2ace4e6f085a0b7b4cce465`  
		Last Modified: Wed, 29 Nov 2017 05:36:25 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea035533dab2cebad7ee27b3db7987cebb653a0129f7ed3121fe8e07961f1e1`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9bed729e63931113d8749301a61b0789c36c5555e389ae0426c271f612478`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 60.1 MB (60111462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b2d57c91aa6b268ad6bfc48c017655c9cdf076e23092da03a220fb7d787bd9`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23cfd68b0fc24d07e4046edfc414d177dff85d55d28bbafd83d9e4fa3493baf`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 2.4 MB (2449741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e2e1eda9fbe74fd148246a53dfbac200c88c6dc7602ee40ad3b95dbdec5b1`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 76.9 MB (76885610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa498c25050d6fd9f7d3e7fe9378b05c0c96f7a9ed7c7d8f38b352fa23b486`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:b56e098ad8e96056d80682978087685659d7de5d172b62de81170fd456b9907e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.6 MB (240591891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c0650ea200164218e154ad272ac0a214d22a423d41d59033b5d83220b13a2f`
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
# Wed, 29 Nov 2017 01:53:25 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 01:53:27 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:02:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:02:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:02:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:02:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:02:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:02:41 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:01:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:02:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:02:09 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:02:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:02:16 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:02:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:05:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:05:16 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:05:18 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:05:19 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:05:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:05:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:14:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:14:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:14:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:15:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:15:04 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:15:05 GMT
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
	-	`sha256:df8dcf8d98a8895c3b37b829f3edfa38f5c86819ddc204dc430044b3ab5599fa`  
		Last Modified: Wed, 29 Nov 2017 02:41:15 GMT  
		Size: 25.2 MB (25158835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43e007d4277f360aea4f1ba1284ed7a5114dd41020f09f8da45a19aaf6007fc`  
		Last Modified: Wed, 29 Nov 2017 02:41:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43b0534e1d0653163bc5d41a27b2b323181e2737012a22906d243321a5b6af0`  
		Last Modified: Wed, 29 Nov 2017 03:38:43 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6181313b5af95b67f88eba99e61b9806a7523b305f0923a188e0c1940aa74ba`  
		Last Modified: Wed, 29 Nov 2017 03:38:46 GMT  
		Size: 14.7 MB (14720318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5b5cbedba2e72f124dcecec0c81289ec378a882c930a4ae041c8b05e84ecd1`  
		Last Modified: Wed, 29 Nov 2017 03:38:42 GMT  
		Size: 469.8 KB (469840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4e350e846fa462b3a885303b6d70a7554c08b9602eee7386b8623ab3bdc062`  
		Last Modified: Wed, 29 Nov 2017 03:38:41 GMT  
		Size: 8.6 KB (8633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6787db5bd9d1e70cf3554c18e90f48d07adf2f38c06923a51f239e4e835f62`  
		Last Modified: Wed, 29 Nov 2017 03:38:53 GMT  
		Size: 58.1 MB (58099150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876f34303a335367596fdd3a6c9a547ac591592b684adb041fb03e3a7c1618bb`  
		Last Modified: Wed, 29 Nov 2017 03:38:39 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700f59b93e11f30f92600d9f38cf1b81e9700578dc40cf33103971f59fbd61bd`  
		Last Modified: Wed, 29 Nov 2017 03:38:39 GMT  
		Size: 2.5 MB (2450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9df5dad03c816e926680c0f49f9c0704881d5b619aabe456f305e3484b230c`  
		Last Modified: Wed, 29 Nov 2017 03:38:54 GMT  
		Size: 77.7 MB (77737589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b20a012ee58f5dd830d53fcd8142f4bf041ac0174469e98d9a5828868fe6081`  
		Last Modified: Wed, 29 Nov 2017 03:38:38 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:5427407fea74009d757762b807075c30871317b91f9ec1df560a75cbde3bd29f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244737088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c668a254a4bdd63e46f6e2227a1323576949f2f4cae692d2b7807600bfc1e7`
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
# Wed, 29 Nov 2017 09:45:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 09:45:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 09:49:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 09:49:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 09:49:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 09:49:02 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:26:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:26:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:26:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:26:46 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:26:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:27:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:27:21 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:27:21 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 10:27:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:29:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:29:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:29:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:29:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:29:53 GMT
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
	-	`sha256:05d4ee3f2152ec599a26f35e14003e134c639db2f56399563c1726a8b7a8d29a`  
		Last Modified: Wed, 29 Nov 2017 10:07:07 GMT  
		Size: 25.1 MB (25111185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951848c9263d526779afb0312759897b5d73819b19ac1c2f12c68ccc05a977af`  
		Last Modified: Wed, 29 Nov 2017 10:07:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe2550444116bdfc46721f26860f83c0422bc33bcef6ae8b9f3bf3ed8ea5c1`  
		Last Modified: Wed, 29 Nov 2017 10:36:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a53223f31c10d034019dc8488f9dfdeb46f2b9429098d6c65b8600ca2146c`  
		Last Modified: Wed, 29 Nov 2017 10:36:13 GMT  
		Size: 14.8 MB (14815027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639d76a25bbb1bf06d9c487892a8fbf3e296a2092f5ce2386481188b883a3b3`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384c1671418080426f0bfbe9e5f1fb477aa230e26f16add728b943e7aa110d1`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25ea638c611e9ac4370c065dcf7c96dd948eaa929af93a4987c15e30ae5041`  
		Last Modified: Wed, 29 Nov 2017 10:36:20 GMT  
		Size: 59.1 MB (59082388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cac7b2191e12520e7d79b4d3181176f37aa11dc9b83516e15a1d22ff7be7496`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604cd9a3a7a58f7575f3dbbdda98a97ef30bdad45c3fd0882bfc4d00c1919b35`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 2.4 MB (2449744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7dc1025ef8f402bce9c33dcf7b8deed5d54a790d5498120ec36c1397807bc`  
		Last Modified: Wed, 29 Nov 2017 10:36:24 GMT  
		Size: 80.0 MB (80029892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b060c1b16c6a3d0a51649ba9382c820351a8a386d6828b571fa3825bf621ea1`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:3f7b4dbc9b7726548b8e0c46b999e463a621decbe7e746b797c4c8b1d65d491b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:bd98396c2425d4ef29688464c708cf58a0b6dbfd63c85353f078def35cc9c358
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258761210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e83b1fe467795899ab0d772bdaf384d651f1186fe7baf9d65874e24c18dc0b`
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
# Wed, 29 Nov 2017 02:00:03 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:00:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:03:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:03:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:03:25 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 02:54:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 02:55:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 02:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 02:55:07 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 02:55:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 02:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 02:55:41 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 02:55:41 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 02:55:41 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 02:55:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 02:57:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 02:57:57 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 02:57:57 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 02:57:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 02:57:57 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 02:57:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 29 Nov 2017 03:02:07 GMT
ENV PASSENGER_VERSION=5.1.12
# Wed, 29 Nov 2017 03:02:25 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:02:26 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 29 Nov 2017 03:02:26 GMT
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
	-	`sha256:9ad5468696cb48065225ceeb6cc5ea98659e61df3ea5d6a935a1ce3f286e0c1f`  
		Last Modified: Wed, 29 Nov 2017 02:31:25 GMT  
		Size: 24.7 MB (24719347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46570cf888deb54274b6170a313daa5af6504399f9c2a8015e1b5cbd81ae3954`  
		Last Modified: Wed, 29 Nov 2017 02:31:19 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d754fe9af0fa8d889ae1ad30091e20b9284fa7c96b9c5d27cb00db22097377`  
		Last Modified: Wed, 29 Nov 2017 03:11:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdb2fb3457b7d286979072dd334371958dfd366b961af6a9818d9c7177032bc`  
		Last Modified: Wed, 29 Nov 2017 03:11:51 GMT  
		Size: 14.7 MB (14650277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0279c28e185b5376123102b9e52cbc4f5421af45058691fbee8a24c1f5bed0`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9771402e046b8fc25be917dabbc725053db3a10a9ad28fcdde5d8f6fc96716d7`  
		Last Modified: Wed, 29 Nov 2017 03:11:46 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60600395d907ebc1f2ef6d498224907b5c9bac7577b9df9b2e5050b7543fa59f`  
		Last Modified: Wed, 29 Nov 2017 03:12:01 GMT  
		Size: 59.2 MB (59233442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b3ae050df001ac4709a78c435858ed9bc0bd273acc766553ae42fdc24a6a9a`  
		Last Modified: Wed, 29 Nov 2017 03:11:44 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cc979a32abf0068344202263c01fabdf0e906cd992a57887ead9b2d34d2bd1`  
		Last Modified: Wed, 29 Nov 2017 03:11:45 GMT  
		Size: 2.4 MB (2449726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76409286c21d64d405ae0cae5f316f3d2965680d719383716b6a5a6d0bdceb7`  
		Last Modified: Wed, 29 Nov 2017 03:12:02 GMT  
		Size: 77.6 MB (77600727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd51bcfe68ca68df40c79d8d4a0293e9108719fe589bae2c394c2634c6d341c7`  
		Last Modified: Wed, 29 Nov 2017 03:11:43 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc64fc7e98732bf9ad7bb8860fef261948a8158ad74e50bedd4a3f02b9184a0`  
		Last Modified: Wed, 29 Nov 2017 03:12:40 GMT  
		Size: 12.8 MB (12760104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740affca61074c2913cbbc03b7053aefa817a26518c44f62d5b7c41a81285bb1`  
		Last Modified: Wed, 29 Nov 2017 03:12:36 GMT  
		Size: 4.1 MB (4076930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
