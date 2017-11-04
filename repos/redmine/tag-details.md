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
$ docker pull redmine@sha256:c202f94e0f827dcf231889692ae48a9402b42d07baa8572d91edc7e4a9f6e62a
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
$ docker pull redmine@sha256:098318ddd6912cac85be64faea49f510127bf208f81d989047a093a518676a87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241150023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86e325c408cd5503ecf440787347d3bfb85d38f67ea544cb155a938add10292`
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
# Wed, 25 Oct 2017 19:28:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:32:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:32:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:32:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:32:05 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:26:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:26:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:26:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:26:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:26:59 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:27:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:27:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:27:42 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:27:42 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:27:42 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 25 Oct 2017 20:27:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 25 Oct 2017 20:27:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:30:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:30:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:54:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:54:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:54:56 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:54:56 GMT
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
	-	`sha256:ffff09909504cacaac9201e21d25c040fb7633231abab154487c27a612e96ffb`  
		Last Modified: Wed, 25 Oct 2017 20:01:55 GMT  
		Size: 24.3 MB (24286429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76a1a06d36442283854b277110a464cf75abf772ad2206b46c8a0ebacb036ef`  
		Last Modified: Wed, 25 Oct 2017 20:01:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ab89d380eb560ef6f04376c1fa61c0ed332596b8c729d25f50ca0987918950`  
		Last Modified: Wed, 25 Oct 2017 20:41:08 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c314d67f5e43fbcc4a5cd4094c703b82b92d5436ddeea374415d266b20dd93`  
		Last Modified: Wed, 25 Oct 2017 20:41:11 GMT  
		Size: 14.7 MB (14650128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a2ef0d1820bff9d9fb3215c279ca13413d2cb602cf97e422d5bb1e63e782ed`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4f02c2d55a18d17690fd1dd1963eeb9ff48b7052b0bc33d87933e3eb9e155d`  
		Last Modified: Wed, 25 Oct 2017 20:41:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994674730999ddbc5323141ce35763ca117ac0a0f37e3902efdac0abe5f27d75`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 59.2 MB (59228463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db84569570f9a554474131f28eaaa862ce123e9abc2262fc8c256d33c7bd127`  
		Last Modified: Wed, 25 Oct 2017 20:41:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad28fb2271231fdbbb59ef9e14ca8db6c2362f5b285fd1b50b10c548b63583`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 2.4 MB (2449718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29652b55913f35e46dfe21cdab929b94ad8e741a426c60a7ed5fd7297def4d83`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 77.3 MB (77264642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db70bf677ac60c26a16b29d0128b6b991ce9f80e71a3178a4ad7f8fddc813d2`  
		Last Modified: Tue, 31 Oct 2017 22:58:43 GMT  
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
$ docker pull redmine@sha256:203d7c12b735794af7fd9319455f2d740de03368beb31013fe29ae01ec520585
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.4 MB (233407879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc167b619442732d6b86965bcb42e1f6776167570cbd4275d5386909b3e6b9`
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
# Thu, 02 Nov 2017 18:07:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 18:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 18:17:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 18:17:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 18:17:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:17:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 18:17:23 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 20:15:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 20:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:16:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 20:16:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 20:16:26 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 20:16:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 20:18:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:18:51 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 20:18:52 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 20:18:53 GMT
ENV REDMINE_VERSION=3.4.3
# Thu, 02 Nov 2017 20:18:54 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Thu, 02 Nov 2017 20:19:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 20:32:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 20:32:44 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 20:32:46 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 20:32:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 20:32:48 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 20:32:50 GMT
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
	-	`sha256:12ac716002903f38255383c5dcb04893cf506e57db2f40b1ecf0dc5d1420075c`  
		Last Modified: Thu, 02 Nov 2017 19:42:14 GMT  
		Size: 24.3 MB (24278575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50170bedad533fa63ea6f55afea8d4d97ada47c86c5434f103c9ec2be2432695`  
		Last Modified: Thu, 02 Nov 2017 19:41:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1584eed6416ccfb4c66b49a455eefe133b41be2b79a8051933631bc8f9bf4660`  
		Last Modified: Thu, 02 Nov 2017 21:06:00 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e2c00ef7c62c9c8892194ea467368be0fbf775bfd271a1e026c6adccc07f94`  
		Last Modified: Thu, 02 Nov 2017 21:06:07 GMT  
		Size: 14.5 MB (14462562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60d46fb883b4c2bbb31d6cbf36ec059abe7cf090f52e08a192542612a907a8`  
		Last Modified: Thu, 02 Nov 2017 21:06:01 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5827e491049be36aa8526ee91baccf916ef647dd1ba64e0a183a3cc3e7bde8a`  
		Last Modified: Thu, 02 Nov 2017 21:05:58 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacbebde859a6cf1950525c6320fdebd0c7205e7e2e35b66629df7fdd55d355a`  
		Last Modified: Thu, 02 Nov 2017 21:06:22 GMT  
		Size: 55.8 MB (55758931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd1dc05f76f5a3b59cacc9ac9ff2f5cf2a55cda146d8d9b66ea66f8d3220013`  
		Last Modified: Thu, 02 Nov 2017 21:05:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50acafbdb7d414ca045978ee05e1cc4b93cd3bd23c07ac0bf836cbaafb150c14`  
		Last Modified: Thu, 02 Nov 2017 21:05:58 GMT  
		Size: 2.4 MB (2449713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d784346800715dda859000bb115f95882c7e7eec21499375d5695bda53668d`  
		Last Modified: Thu, 02 Nov 2017 21:06:25 GMT  
		Size: 76.7 MB (76714772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92b355db1bb9a5633c8f5ce919df92561c607d42daac2579fc492fc1472b5d2`  
		Last Modified: Thu, 02 Nov 2017 21:05:56 GMT  
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
$ docker pull redmine@sha256:ca412ea0315a7da04bbfb883cbec1a9174ff4236b1674be960b7eab5b2e2007c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244235683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2dc5545709e9bdca31d2361e04299f2fe5689ee35ae5b75cd24cf07376a5682`
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
# Thu, 02 Nov 2017 08:47:43 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 08:50:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 08:50:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 08:50:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 08:51:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 08:51:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 08:51:00 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 09:27:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 09:27:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:27:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 09:27:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 09:27:39 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 09:27:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 09:28:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:28:16 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 09:28:16 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 09:28:17 GMT
ENV REDMINE_VERSION=3.4.3
# Thu, 02 Nov 2017 09:28:17 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Thu, 02 Nov 2017 09:28:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 09:30:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 09:30:46 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 09:30:47 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 09:30:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 09:30:47 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 09:30:47 GMT
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
	-	`sha256:b14a71a6bbdccbb3f4c1bdb0d5b904fb5b463a24e4711ab018e0ae5f91da8919`  
		Last Modified: Thu, 02 Nov 2017 09:08:25 GMT  
		Size: 24.7 MB (24721390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160f7619101c1c4ff511f9cac33d244e669acfd9cfa8d882c91a88519e51f896`  
		Last Modified: Thu, 02 Nov 2017 09:08:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62015fe24dd9fd8fd16a65c5b86214800fcd71db7e9d799144fc38c6f11de54`  
		Last Modified: Thu, 02 Nov 2017 09:37:09 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbac9e0620970055635c8bdc8f6bfc790e4e54cea8eb2d3bb5007070ada39f03`  
		Last Modified: Thu, 02 Nov 2017 09:37:11 GMT  
		Size: 14.8 MB (14815049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb479d8676fb71d60d33a3f2e714ecd6fefcd06776defd40fc3c89ae025c2077`  
		Last Modified: Thu, 02 Nov 2017 09:37:08 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbd271270d24d0d9d3510944b5765e444ea455baf4eaaceb734eefa700bc334`  
		Last Modified: Thu, 02 Nov 2017 09:37:08 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf384a794d9cd92d2843557cfb59b5902dec07f2cd0c7e5b18ef972ec2897b38`  
		Last Modified: Thu, 02 Nov 2017 09:37:18 GMT  
		Size: 59.1 MB (59083065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affbd52fa20f31929fc20eacd28b5bd4f476bc0bb7cb56b7792237f962fdb558`  
		Last Modified: Thu, 02 Nov 2017 09:37:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1431a5a46ec701e487281c222dc3c3980a240a8e9690101504642efb0fbd2b`  
		Last Modified: Thu, 02 Nov 2017 09:37:08 GMT  
		Size: 2.4 MB (2449721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8199b08ec82862fd5ca922a4fcf42ece8138a9520e07a94ed225bd7b36f058`  
		Last Modified: Thu, 02 Nov 2017 09:37:28 GMT  
		Size: 79.9 MB (79917606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddd7c2ba3e19fc05a08ff74c4a7fd60a341eeedcebc3f2ae684483350d912ca`  
		Last Modified: Thu, 02 Nov 2017 09:37:07 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:d7f8960f9171b41b21012caf5ef23c75ff446b26403cf3e2528982c074965edd
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
$ docker pull redmine@sha256:fce51e16c0f8b3634bb9f708f9d918a64ec989f37f689526e36eec936e5c4fc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.3 MB (252308480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24912933a9389e3eeea3886aa5b28ff387d448b6f5a49472e9c86cb0aaaf4e54`
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
# Wed, 25 Oct 2017 19:50:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:53:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:53:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:53:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:53:13 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:31:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:31:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:31:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:31:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:31:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:32:07 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:32:08 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:37:55 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 25 Oct 2017 20:37:55 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 25 Oct 2017 20:37:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:40:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:40:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:57:34 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:57:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:57:34 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:57:35 GMT
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
	-	`sha256:b08cd3790fc36a69cbf246db2e6a53ff9b625cce58927af56699e81089f04c68`  
		Last Modified: Wed, 25 Oct 2017 20:09:19 GMT  
		Size: 34.9 MB (34876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dae6f8f31a0f7881ea08d79de1fc7f1c20bddfc4ff0b9cce524d398cee10c6`  
		Last Modified: Wed, 25 Oct 2017 20:09:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a731c20a7cbcebe73eb1f8f2f29c421e710b4dd934e0898e2e7e37eb1fed6ff`  
		Last Modified: Wed, 25 Oct 2017 20:42:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fe5a71e430552e8907901a1a8b1a9533de567558c69a0d3140623614c6e207`  
		Last Modified: Wed, 25 Oct 2017 20:42:51 GMT  
		Size: 14.7 MB (14650130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cb9e960f996829706cc55dc24074586edb4461322e1c372b529a0fc2d60ea4`  
		Last Modified: Wed, 25 Oct 2017 20:42:48 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea4464a60ac94e779d85a5a4b78e5cb54ddef372fe2d5c582e917e809654d94`  
		Last Modified: Wed, 25 Oct 2017 20:42:47 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6393b410a473e1bf88c70b388055f90b0586f87a644a44ff2740d932fabba5c3`  
		Last Modified: Wed, 25 Oct 2017 20:42:56 GMT  
		Size: 59.2 MB (59228913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d9854cfc96bf5d5d683f589ea8ce42a414d942b5d4b60a19c245994a48d2`  
		Last Modified: Wed, 25 Oct 2017 20:42:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d3ac74d7bcd7157d639458b2772c0c87621e00bdc4286613761845df54aaa`  
		Last Modified: Wed, 25 Oct 2017 20:43:41 GMT  
		Size: 2.3 MB (2347006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9e38da655a5fdcf59de588c66cf22ac97619081ba3d5bee7a88e02040e96f5`  
		Last Modified: Wed, 25 Oct 2017 20:43:50 GMT  
		Size: 77.9 MB (77935220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab468b57549d71c5cea0439379dcfb82a704d0b0d850eef8d4da99e86af4521`  
		Last Modified: Tue, 31 Oct 2017 23:01:10 GMT  
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
$ docker pull redmine@sha256:83fb1da8b1a9d7c1ff044c1b859bfc886f7493a76662bb80f0ac201f59e8133b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244747174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622d464828760beda9421c5076ddb890f7fcd7ad6514176ca8bec3f096305255`
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
# Thu, 02 Nov 2017 18:59:35 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 19:14:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 19:14:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 19:14:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 19:14:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 19:14:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 19:14:14 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 20:33:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 20:34:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:34:17 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 20:34:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 20:34:25 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 20:34:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 20:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:37:10 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 20:37:12 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 20:52:42 GMT
ENV REDMINE_VERSION=3.2.8
# Thu, 02 Nov 2017 20:52:43 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Thu, 02 Nov 2017 20:52:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 21:05:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 21:05:27 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 21:05:30 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 21:05:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 21:05:32 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 21:05:33 GMT
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
	-	`sha256:8cb492ba20c92df7aeb853aae6843af30bca12f1e53cb5c89e3b1bc05ea8c77c`  
		Last Modified: Thu, 02 Nov 2017 19:54:45 GMT  
		Size: 35.0 MB (35049069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191086c28ee21b0d325cd0b8b22b59179e350cce360ea5b55f23f546c8847608`  
		Last Modified: Thu, 02 Nov 2017 19:54:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7be9bd60a692c4ab1c3151f1efdc92b3623bc2114a41e46bbd24e059bd3b9cc`  
		Last Modified: Thu, 02 Nov 2017 21:07:33 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e2a7601d20bd5cd5975756cea9749bc8b9e93ecfac521a210ebd5c0f25ffd4`  
		Last Modified: Thu, 02 Nov 2017 21:07:41 GMT  
		Size: 14.5 MB (14462538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c73236b8228c5aeb498c30dae9ec48bdf6ee2c250793393b668a3a0327d98a1`  
		Last Modified: Thu, 02 Nov 2017 21:07:30 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069d373cf8d54162e994509ee5fddae1b494e6567460ab99d7735e08d9b590c`  
		Last Modified: Thu, 02 Nov 2017 21:07:30 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22726081148b93defa2046a59e7f57c5e2714b88bdf5af87ee09cfcb040ea78b`  
		Last Modified: Thu, 02 Nov 2017 21:08:07 GMT  
		Size: 55.8 MB (55758762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abe38cfbdefa399a6a93a65414006b92d4bad75056b74a4df049f22d3c87e05`  
		Last Modified: Thu, 02 Nov 2017 21:07:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9402354265864294bf998446da1dd00631ce44a2d7b19b73984c7d92397f5bd3`  
		Last Modified: Thu, 02 Nov 2017 21:08:53 GMT  
		Size: 2.3 MB (2347000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5dfd64f035e4587b4567becee70f2879c31528eb42636f9d652abf0c6bd274a`  
		Last Modified: Thu, 02 Nov 2017 21:09:25 GMT  
		Size: 77.4 MB (77386477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4197e1a5a4506728da5ba19f854217bb45b0efded690a85738f9e207f4871d`  
		Last Modified: Thu, 02 Nov 2017 21:08:49 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; 386

```console
$ docker pull redmine@sha256:140b534b5f7fb6230c2c6a1032685fda69e5aafe72185aed8718bf36615aec90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (254964851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47633e1162efbbd62d837f7fde36d8fd1b7a460cb4e7954608cce814325b74f7`
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
# Thu, 02 Nov 2017 03:17:02 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 03:20:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 03:20:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 03:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 03:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 03:20:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 03:20:34 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 03:59:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 03:59:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 03:59:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 03:59:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 03:59:58 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 04:00:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 04:01:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 04:01:00 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 04:01:00 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 04:05:38 GMT
ENV REDMINE_VERSION=3.2.8
# Thu, 02 Nov 2017 04:05:38 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Thu, 02 Nov 2017 04:05:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 04:08:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 04:08:46 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 04:08:46 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 04:08:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 04:08:47 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 04:08:47 GMT
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
	-	`sha256:3584ef45f4c95ea89c8fed720f31b736da33697b06015ad31a281b27c2e1cd0f`  
		Last Modified: Thu, 02 Nov 2017 03:32:40 GMT  
		Size: 32.4 MB (32395468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3243058e6de726b7c959a383aa1e6b65e5982cfd6d16dab61093c2d8130617b6`  
		Last Modified: Thu, 02 Nov 2017 03:32:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183e278474926e4bee7148e54d6c5db11735d0baebedb6f12dbc24e3b927d715`  
		Last Modified: Thu, 02 Nov 2017 04:09:56 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be30211d2c6b7ff8dd7f88a91dee5f4f76c9eecb49d6b5a2cab53c9b61a6fa21`  
		Last Modified: Thu, 02 Nov 2017 04:09:59 GMT  
		Size: 14.8 MB (14817305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2b2a3124648c59760621b89561a70e73cc1e13746277d4882ff1cbc67b9255`  
		Last Modified: Thu, 02 Nov 2017 04:09:56 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3680da4d522413a99641e04415bc78d81c7b2aecf01fcffc78d405233265c2`  
		Last Modified: Thu, 02 Nov 2017 04:09:56 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d56fd0ead7e8fad67d000637e01a3a18071ffb855b9ce8fea4355f19278823`  
		Last Modified: Thu, 02 Nov 2017 04:10:11 GMT  
		Size: 60.1 MB (60105537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480dea230934973fad6fae6a91394ddfc626a22326d540da542bc5869425135b`  
		Last Modified: Thu, 02 Nov 2017 04:09:56 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dbf65965f29935c11e7308952c35f2ff3aa511024511389aa988a255de11a2`  
		Last Modified: Thu, 02 Nov 2017 04:11:47 GMT  
		Size: 2.3 MB (2347005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8368549f3ffdb3ee15f71ec5077fd4f38e31479e8a0981aeca55d543f0837c`  
		Last Modified: Thu, 02 Nov 2017 04:12:00 GMT  
		Size: 77.4 MB (77404695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ff314f0d4a40480364727236908cd01bb83d48aa38888b6f4b04ce115a6192`  
		Last Modified: Thu, 02 Nov 2017 04:11:46 GMT  
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
$ docker pull redmine@sha256:5f04fec47e3ce8ec33888b9bd0859e8101df849d8a436ec8dc15fad53e9df476
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.6 MB (258578384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e992126963f1714228c868a14a02a05ee20324fc75e51241428df45bc9fd70ad`
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
# Thu, 02 Nov 2017 09:02:07 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 09:04:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 09:04:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 09:04:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 09:04:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 09:04:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 09:04:49 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 09:31:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 09:31:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:31:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 09:31:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 09:31:17 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 09:31:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 09:31:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:31:53 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 09:31:53 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 09:34:26 GMT
ENV REDMINE_VERSION=3.2.8
# Thu, 02 Nov 2017 09:34:26 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Thu, 02 Nov 2017 09:34:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 09:36:43 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 09:36:44 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 09:36:44 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 09:36:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 09:36:45 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 09:36:45 GMT
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
	-	`sha256:a1bfccf5c011a7b77204d6147a0c3d6e3364470724b6e8148b62bf016f877e96`  
		Last Modified: Thu, 02 Nov 2017 09:11:31 GMT  
		Size: 38.6 MB (38581647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0bc02d97eee0effb9726b8f8df9b0f8b4640fbacf860b9fb4e8f7295c24e73`  
		Last Modified: Thu, 02 Nov 2017 09:11:21 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9eab0b8c448448962240d7de1cf3fe621301d48995b8fda36d8209cee174be`  
		Last Modified: Thu, 02 Nov 2017 09:37:57 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe172169a577595037d0fa7792271bf18cd5d62937c5d2d495470c8ec793df34`  
		Last Modified: Thu, 02 Nov 2017 09:37:58 GMT  
		Size: 14.8 MB (14815049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1926657241c91b7d0d02efc8a4f3fcdc5b6f2370cfcc89212b98683660f26551`  
		Last Modified: Thu, 02 Nov 2017 09:37:56 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00d7b93200efc31300ae8088730c51c191f8dac3f5ef3cecde1e89d9d0696c1`  
		Last Modified: Thu, 02 Nov 2017 09:37:55 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53663e7a9f25b5d554cb9217bb9a115a63418807ccda72d1832c2565a3807bbd`  
		Last Modified: Thu, 02 Nov 2017 09:38:05 GMT  
		Size: 59.1 MB (59082288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede6eccfdb1fef5de9e1afd6c2aab6386891e0a4f7e5e0eb3306cfc7dc2e1ca9`  
		Last Modified: Thu, 02 Nov 2017 09:37:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5820380fca332597b5b7f2d0c03df0ac514626a4bf7171328d989a5f7f9310`  
		Last Modified: Thu, 02 Nov 2017 09:38:30 GMT  
		Size: 2.3 MB (2347009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099f087bbcb15d6d326f3e2c03334f02e50f8c90731e1496537dd703c925f075`  
		Last Modified: Thu, 02 Nov 2017 09:38:41 GMT  
		Size: 80.5 MB (80503543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19bf0da8ad86c55a2683fc99d11a89328d06af7996321b43134777dc4ce6560`  
		Last Modified: Thu, 02 Nov 2017 09:38:30 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.8`

```console
$ docker pull redmine@sha256:d7f8960f9171b41b21012caf5ef23c75ff446b26403cf3e2528982c074965edd
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
$ docker pull redmine@sha256:fce51e16c0f8b3634bb9f708f9d918a64ec989f37f689526e36eec936e5c4fc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.3 MB (252308480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24912933a9389e3eeea3886aa5b28ff387d448b6f5a49472e9c86cb0aaaf4e54`
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
# Wed, 25 Oct 2017 19:50:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:53:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:53:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:53:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:53:13 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:31:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:31:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:31:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:31:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:31:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:32:07 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:32:08 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:37:55 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 25 Oct 2017 20:37:55 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 25 Oct 2017 20:37:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:40:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:40:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:57:34 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:57:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:57:34 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:57:35 GMT
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
	-	`sha256:b08cd3790fc36a69cbf246db2e6a53ff9b625cce58927af56699e81089f04c68`  
		Last Modified: Wed, 25 Oct 2017 20:09:19 GMT  
		Size: 34.9 MB (34876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dae6f8f31a0f7881ea08d79de1fc7f1c20bddfc4ff0b9cce524d398cee10c6`  
		Last Modified: Wed, 25 Oct 2017 20:09:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a731c20a7cbcebe73eb1f8f2f29c421e710b4dd934e0898e2e7e37eb1fed6ff`  
		Last Modified: Wed, 25 Oct 2017 20:42:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fe5a71e430552e8907901a1a8b1a9533de567558c69a0d3140623614c6e207`  
		Last Modified: Wed, 25 Oct 2017 20:42:51 GMT  
		Size: 14.7 MB (14650130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cb9e960f996829706cc55dc24074586edb4461322e1c372b529a0fc2d60ea4`  
		Last Modified: Wed, 25 Oct 2017 20:42:48 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea4464a60ac94e779d85a5a4b78e5cb54ddef372fe2d5c582e917e809654d94`  
		Last Modified: Wed, 25 Oct 2017 20:42:47 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6393b410a473e1bf88c70b388055f90b0586f87a644a44ff2740d932fabba5c3`  
		Last Modified: Wed, 25 Oct 2017 20:42:56 GMT  
		Size: 59.2 MB (59228913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d9854cfc96bf5d5d683f589ea8ce42a414d942b5d4b60a19c245994a48d2`  
		Last Modified: Wed, 25 Oct 2017 20:42:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d3ac74d7bcd7157d639458b2772c0c87621e00bdc4286613761845df54aaa`  
		Last Modified: Wed, 25 Oct 2017 20:43:41 GMT  
		Size: 2.3 MB (2347006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9e38da655a5fdcf59de588c66cf22ac97619081ba3d5bee7a88e02040e96f5`  
		Last Modified: Wed, 25 Oct 2017 20:43:50 GMT  
		Size: 77.9 MB (77935220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab468b57549d71c5cea0439379dcfb82a704d0b0d850eef8d4da99e86af4521`  
		Last Modified: Tue, 31 Oct 2017 23:01:10 GMT  
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
$ docker pull redmine@sha256:83fb1da8b1a9d7c1ff044c1b859bfc886f7493a76662bb80f0ac201f59e8133b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244747174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622d464828760beda9421c5076ddb890f7fcd7ad6514176ca8bec3f096305255`
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
# Thu, 02 Nov 2017 18:59:35 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 19:14:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 19:14:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 19:14:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 19:14:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 19:14:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 19:14:14 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 20:33:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 20:34:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:34:17 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 20:34:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 20:34:25 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 20:34:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 20:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:37:10 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 20:37:12 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 20:52:42 GMT
ENV REDMINE_VERSION=3.2.8
# Thu, 02 Nov 2017 20:52:43 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Thu, 02 Nov 2017 20:52:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 21:05:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 21:05:27 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 21:05:30 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 21:05:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 21:05:32 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 21:05:33 GMT
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
	-	`sha256:8cb492ba20c92df7aeb853aae6843af30bca12f1e53cb5c89e3b1bc05ea8c77c`  
		Last Modified: Thu, 02 Nov 2017 19:54:45 GMT  
		Size: 35.0 MB (35049069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191086c28ee21b0d325cd0b8b22b59179e350cce360ea5b55f23f546c8847608`  
		Last Modified: Thu, 02 Nov 2017 19:54:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7be9bd60a692c4ab1c3151f1efdc92b3623bc2114a41e46bbd24e059bd3b9cc`  
		Last Modified: Thu, 02 Nov 2017 21:07:33 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e2a7601d20bd5cd5975756cea9749bc8b9e93ecfac521a210ebd5c0f25ffd4`  
		Last Modified: Thu, 02 Nov 2017 21:07:41 GMT  
		Size: 14.5 MB (14462538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c73236b8228c5aeb498c30dae9ec48bdf6ee2c250793393b668a3a0327d98a1`  
		Last Modified: Thu, 02 Nov 2017 21:07:30 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069d373cf8d54162e994509ee5fddae1b494e6567460ab99d7735e08d9b590c`  
		Last Modified: Thu, 02 Nov 2017 21:07:30 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22726081148b93defa2046a59e7f57c5e2714b88bdf5af87ee09cfcb040ea78b`  
		Last Modified: Thu, 02 Nov 2017 21:08:07 GMT  
		Size: 55.8 MB (55758762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abe38cfbdefa399a6a93a65414006b92d4bad75056b74a4df049f22d3c87e05`  
		Last Modified: Thu, 02 Nov 2017 21:07:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9402354265864294bf998446da1dd00631ce44a2d7b19b73984c7d92397f5bd3`  
		Last Modified: Thu, 02 Nov 2017 21:08:53 GMT  
		Size: 2.3 MB (2347000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5dfd64f035e4587b4567becee70f2879c31528eb42636f9d652abf0c6bd274a`  
		Last Modified: Thu, 02 Nov 2017 21:09:25 GMT  
		Size: 77.4 MB (77386477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4197e1a5a4506728da5ba19f854217bb45b0efded690a85738f9e207f4871d`  
		Last Modified: Thu, 02 Nov 2017 21:08:49 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; 386

```console
$ docker pull redmine@sha256:140b534b5f7fb6230c2c6a1032685fda69e5aafe72185aed8718bf36615aec90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (254964851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47633e1162efbbd62d837f7fde36d8fd1b7a460cb4e7954608cce814325b74f7`
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
# Thu, 02 Nov 2017 03:17:02 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 03:20:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 03:20:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 03:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 03:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 03:20:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 03:20:34 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 03:59:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 03:59:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 03:59:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 03:59:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 03:59:58 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 04:00:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 04:01:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 04:01:00 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 04:01:00 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 04:05:38 GMT
ENV REDMINE_VERSION=3.2.8
# Thu, 02 Nov 2017 04:05:38 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Thu, 02 Nov 2017 04:05:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 04:08:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 04:08:46 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 04:08:46 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 04:08:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 04:08:47 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 04:08:47 GMT
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
	-	`sha256:3584ef45f4c95ea89c8fed720f31b736da33697b06015ad31a281b27c2e1cd0f`  
		Last Modified: Thu, 02 Nov 2017 03:32:40 GMT  
		Size: 32.4 MB (32395468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3243058e6de726b7c959a383aa1e6b65e5982cfd6d16dab61093c2d8130617b6`  
		Last Modified: Thu, 02 Nov 2017 03:32:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183e278474926e4bee7148e54d6c5db11735d0baebedb6f12dbc24e3b927d715`  
		Last Modified: Thu, 02 Nov 2017 04:09:56 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be30211d2c6b7ff8dd7f88a91dee5f4f76c9eecb49d6b5a2cab53c9b61a6fa21`  
		Last Modified: Thu, 02 Nov 2017 04:09:59 GMT  
		Size: 14.8 MB (14817305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2b2a3124648c59760621b89561a70e73cc1e13746277d4882ff1cbc67b9255`  
		Last Modified: Thu, 02 Nov 2017 04:09:56 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3680da4d522413a99641e04415bc78d81c7b2aecf01fcffc78d405233265c2`  
		Last Modified: Thu, 02 Nov 2017 04:09:56 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d56fd0ead7e8fad67d000637e01a3a18071ffb855b9ce8fea4355f19278823`  
		Last Modified: Thu, 02 Nov 2017 04:10:11 GMT  
		Size: 60.1 MB (60105537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480dea230934973fad6fae6a91394ddfc626a22326d540da542bc5869425135b`  
		Last Modified: Thu, 02 Nov 2017 04:09:56 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dbf65965f29935c11e7308952c35f2ff3aa511024511389aa988a255de11a2`  
		Last Modified: Thu, 02 Nov 2017 04:11:47 GMT  
		Size: 2.3 MB (2347005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8368549f3ffdb3ee15f71ec5077fd4f38e31479e8a0981aeca55d543f0837c`  
		Last Modified: Thu, 02 Nov 2017 04:12:00 GMT  
		Size: 77.4 MB (77404695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ff314f0d4a40480364727236908cd01bb83d48aa38888b6f4b04ce115a6192`  
		Last Modified: Thu, 02 Nov 2017 04:11:46 GMT  
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
$ docker pull redmine@sha256:5f04fec47e3ce8ec33888b9bd0859e8101df849d8a436ec8dc15fad53e9df476
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.6 MB (258578384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e992126963f1714228c868a14a02a05ee20324fc75e51241428df45bc9fd70ad`
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
# Thu, 02 Nov 2017 09:02:07 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 09:04:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 09:04:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 09:04:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 09:04:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 09:04:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 09:04:49 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 09:31:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 09:31:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:31:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 09:31:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 09:31:17 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 09:31:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 09:31:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:31:53 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 09:31:53 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 09:34:26 GMT
ENV REDMINE_VERSION=3.2.8
# Thu, 02 Nov 2017 09:34:26 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Thu, 02 Nov 2017 09:34:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 09:36:43 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 09:36:44 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 09:36:44 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 09:36:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 09:36:45 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 09:36:45 GMT
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
	-	`sha256:a1bfccf5c011a7b77204d6147a0c3d6e3364470724b6e8148b62bf016f877e96`  
		Last Modified: Thu, 02 Nov 2017 09:11:31 GMT  
		Size: 38.6 MB (38581647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0bc02d97eee0effb9726b8f8df9b0f8b4640fbacf860b9fb4e8f7295c24e73`  
		Last Modified: Thu, 02 Nov 2017 09:11:21 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9eab0b8c448448962240d7de1cf3fe621301d48995b8fda36d8209cee174be`  
		Last Modified: Thu, 02 Nov 2017 09:37:57 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe172169a577595037d0fa7792271bf18cd5d62937c5d2d495470c8ec793df34`  
		Last Modified: Thu, 02 Nov 2017 09:37:58 GMT  
		Size: 14.8 MB (14815049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1926657241c91b7d0d02efc8a4f3fcdc5b6f2370cfcc89212b98683660f26551`  
		Last Modified: Thu, 02 Nov 2017 09:37:56 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00d7b93200efc31300ae8088730c51c191f8dac3f5ef3cecde1e89d9d0696c1`  
		Last Modified: Thu, 02 Nov 2017 09:37:55 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53663e7a9f25b5d554cb9217bb9a115a63418807ccda72d1832c2565a3807bbd`  
		Last Modified: Thu, 02 Nov 2017 09:38:05 GMT  
		Size: 59.1 MB (59082288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede6eccfdb1fef5de9e1afd6c2aab6386891e0a4f7e5e0eb3306cfc7dc2e1ca9`  
		Last Modified: Thu, 02 Nov 2017 09:37:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5820380fca332597b5b7f2d0c03df0ac514626a4bf7171328d989a5f7f9310`  
		Last Modified: Thu, 02 Nov 2017 09:38:30 GMT  
		Size: 2.3 MB (2347009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099f087bbcb15d6d326f3e2c03334f02e50f8c90731e1496537dd703c925f075`  
		Last Modified: Thu, 02 Nov 2017 09:38:41 GMT  
		Size: 80.5 MB (80503543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19bf0da8ad86c55a2683fc99d11a89328d06af7996321b43134777dc4ce6560`  
		Last Modified: Thu, 02 Nov 2017 09:38:30 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.8-passenger`

```console
$ docker pull redmine@sha256:b73f05c0a60262f023f704210f942436eeb148d857a0da1bf1034ee7ac44de1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.8-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:94fa2e4df3a2176d871f1120d81d5e6f1ce78ca6a32ca43d33fa4ab5c44d40c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269134802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ea3f3fed77ad6db935718b8a30f3d18131ff1113a2ca2e625373eb3f336aae`
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
# Wed, 25 Oct 2017 19:50:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:53:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:53:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:53:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:53:13 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:31:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:31:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:31:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:31:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:31:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:32:07 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:32:08 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:37:55 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 25 Oct 2017 20:37:55 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 25 Oct 2017 20:37:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:40:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:40:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:57:34 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:57:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:57:34 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:57:35 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 31 Oct 2017 22:57:43 GMT
ENV PASSENGER_VERSION=5.1.11
# Tue, 31 Oct 2017 22:58:09 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 31 Oct 2017 22:58:16 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 31 Oct 2017 22:58:16 GMT
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
	-	`sha256:b08cd3790fc36a69cbf246db2e6a53ff9b625cce58927af56699e81089f04c68`  
		Last Modified: Wed, 25 Oct 2017 20:09:19 GMT  
		Size: 34.9 MB (34876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dae6f8f31a0f7881ea08d79de1fc7f1c20bddfc4ff0b9cce524d398cee10c6`  
		Last Modified: Wed, 25 Oct 2017 20:09:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a731c20a7cbcebe73eb1f8f2f29c421e710b4dd934e0898e2e7e37eb1fed6ff`  
		Last Modified: Wed, 25 Oct 2017 20:42:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fe5a71e430552e8907901a1a8b1a9533de567558c69a0d3140623614c6e207`  
		Last Modified: Wed, 25 Oct 2017 20:42:51 GMT  
		Size: 14.7 MB (14650130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cb9e960f996829706cc55dc24074586edb4461322e1c372b529a0fc2d60ea4`  
		Last Modified: Wed, 25 Oct 2017 20:42:48 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea4464a60ac94e779d85a5a4b78e5cb54ddef372fe2d5c582e917e809654d94`  
		Last Modified: Wed, 25 Oct 2017 20:42:47 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6393b410a473e1bf88c70b388055f90b0586f87a644a44ff2740d932fabba5c3`  
		Last Modified: Wed, 25 Oct 2017 20:42:56 GMT  
		Size: 59.2 MB (59228913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d9854cfc96bf5d5d683f589ea8ce42a414d942b5d4b60a19c245994a48d2`  
		Last Modified: Wed, 25 Oct 2017 20:42:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d3ac74d7bcd7157d639458b2772c0c87621e00bdc4286613761845df54aaa`  
		Last Modified: Wed, 25 Oct 2017 20:43:41 GMT  
		Size: 2.3 MB (2347006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9e38da655a5fdcf59de588c66cf22ac97619081ba3d5bee7a88e02040e96f5`  
		Last Modified: Wed, 25 Oct 2017 20:43:50 GMT  
		Size: 77.9 MB (77935220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab468b57549d71c5cea0439379dcfb82a704d0b0d850eef8d4da99e86af4521`  
		Last Modified: Tue, 31 Oct 2017 23:01:10 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ceb0df54daa516717568db561e594101c676019663fba6a6d9bf2049ec39f60`  
		Last Modified: Tue, 31 Oct 2017 23:01:36 GMT  
		Size: 12.8 MB (12750698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47edb1673b0d58fe1ab8a5dc40a695d786aeb6e1056f6913dbe2299864ebad50`  
		Last Modified: Tue, 31 Oct 2017 23:01:33 GMT  
		Size: 4.1 MB (4075624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:b73f05c0a60262f023f704210f942436eeb148d857a0da1bf1034ee7ac44de1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:94fa2e4df3a2176d871f1120d81d5e6f1ce78ca6a32ca43d33fa4ab5c44d40c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269134802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ea3f3fed77ad6db935718b8a30f3d18131ff1113a2ca2e625373eb3f336aae`
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
# Wed, 25 Oct 2017 19:50:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:53:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:53:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:53:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:53:13 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:31:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:31:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:31:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:31:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:31:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:32:07 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:32:08 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:37:55 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 25 Oct 2017 20:37:55 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 25 Oct 2017 20:37:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:40:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:40:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:57:34 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:57:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:57:34 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:57:35 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 31 Oct 2017 22:57:43 GMT
ENV PASSENGER_VERSION=5.1.11
# Tue, 31 Oct 2017 22:58:09 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 31 Oct 2017 22:58:16 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 31 Oct 2017 22:58:16 GMT
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
	-	`sha256:b08cd3790fc36a69cbf246db2e6a53ff9b625cce58927af56699e81089f04c68`  
		Last Modified: Wed, 25 Oct 2017 20:09:19 GMT  
		Size: 34.9 MB (34876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dae6f8f31a0f7881ea08d79de1fc7f1c20bddfc4ff0b9cce524d398cee10c6`  
		Last Modified: Wed, 25 Oct 2017 20:09:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a731c20a7cbcebe73eb1f8f2f29c421e710b4dd934e0898e2e7e37eb1fed6ff`  
		Last Modified: Wed, 25 Oct 2017 20:42:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fe5a71e430552e8907901a1a8b1a9533de567558c69a0d3140623614c6e207`  
		Last Modified: Wed, 25 Oct 2017 20:42:51 GMT  
		Size: 14.7 MB (14650130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cb9e960f996829706cc55dc24074586edb4461322e1c372b529a0fc2d60ea4`  
		Last Modified: Wed, 25 Oct 2017 20:42:48 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea4464a60ac94e779d85a5a4b78e5cb54ddef372fe2d5c582e917e809654d94`  
		Last Modified: Wed, 25 Oct 2017 20:42:47 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6393b410a473e1bf88c70b388055f90b0586f87a644a44ff2740d932fabba5c3`  
		Last Modified: Wed, 25 Oct 2017 20:42:56 GMT  
		Size: 59.2 MB (59228913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d9854cfc96bf5d5d683f589ea8ce42a414d942b5d4b60a19c245994a48d2`  
		Last Modified: Wed, 25 Oct 2017 20:42:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d3ac74d7bcd7157d639458b2772c0c87621e00bdc4286613761845df54aaa`  
		Last Modified: Wed, 25 Oct 2017 20:43:41 GMT  
		Size: 2.3 MB (2347006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9e38da655a5fdcf59de588c66cf22ac97619081ba3d5bee7a88e02040e96f5`  
		Last Modified: Wed, 25 Oct 2017 20:43:50 GMT  
		Size: 77.9 MB (77935220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab468b57549d71c5cea0439379dcfb82a704d0b0d850eef8d4da99e86af4521`  
		Last Modified: Tue, 31 Oct 2017 23:01:10 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ceb0df54daa516717568db561e594101c676019663fba6a6d9bf2049ec39f60`  
		Last Modified: Tue, 31 Oct 2017 23:01:36 GMT  
		Size: 12.8 MB (12750698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47edb1673b0d58fe1ab8a5dc40a695d786aeb6e1056f6913dbe2299864ebad50`  
		Last Modified: Tue, 31 Oct 2017 23:01:33 GMT  
		Size: 4.1 MB (4075624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:4fe6c0a6709c89635356cfa3aaf8a62c153e9a1ded28dd40cdaf55bef1aea74b
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
$ docker pull redmine@sha256:c2dfe0677c39cebfb9aac1a3d2052c31e57f4556f961b2edc38d85a7a2850f2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252352938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2ec09dfc994258e25da087b555a6fd52d5b396819d709b2da36f946f227d98`
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
# Wed, 25 Oct 2017 19:50:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:53:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:53:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:53:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:53:13 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:31:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:31:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:31:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:31:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:31:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:32:07 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:32:08 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:32:08 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 25 Oct 2017 20:32:08 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 25 Oct 2017 20:32:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:34:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:34:29 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:56:29 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:56:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:56:30 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:56:30 GMT
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
	-	`sha256:b08cd3790fc36a69cbf246db2e6a53ff9b625cce58927af56699e81089f04c68`  
		Last Modified: Wed, 25 Oct 2017 20:09:19 GMT  
		Size: 34.9 MB (34876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dae6f8f31a0f7881ea08d79de1fc7f1c20bddfc4ff0b9cce524d398cee10c6`  
		Last Modified: Wed, 25 Oct 2017 20:09:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a731c20a7cbcebe73eb1f8f2f29c421e710b4dd934e0898e2e7e37eb1fed6ff`  
		Last Modified: Wed, 25 Oct 2017 20:42:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fe5a71e430552e8907901a1a8b1a9533de567558c69a0d3140623614c6e207`  
		Last Modified: Wed, 25 Oct 2017 20:42:51 GMT  
		Size: 14.7 MB (14650130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cb9e960f996829706cc55dc24074586edb4461322e1c372b529a0fc2d60ea4`  
		Last Modified: Wed, 25 Oct 2017 20:42:48 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea4464a60ac94e779d85a5a4b78e5cb54ddef372fe2d5c582e917e809654d94`  
		Last Modified: Wed, 25 Oct 2017 20:42:47 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6393b410a473e1bf88c70b388055f90b0586f87a644a44ff2740d932fabba5c3`  
		Last Modified: Wed, 25 Oct 2017 20:42:56 GMT  
		Size: 59.2 MB (59228913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d9854cfc96bf5d5d683f589ea8ce42a414d942b5d4b60a19c245994a48d2`  
		Last Modified: Wed, 25 Oct 2017 20:42:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccf21dd7706aeb8a91830390956128958664b650e470c873aad4684376bf46f`  
		Last Modified: Wed, 25 Oct 2017 20:42:45 GMT  
		Size: 2.4 MB (2390733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2018b9dc87e4e1fe318264dc91d56b1bc57765b3373e725f1e1a24e3e31850`  
		Last Modified: Wed, 25 Oct 2017 20:42:55 GMT  
		Size: 77.9 MB (77935951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09aba085732d05d0a2f8dcfff5932923ddf10cd5088ac19c7c87ea96f541f3ec`  
		Last Modified: Tue, 31 Oct 2017 23:00:21 GMT  
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
$ docker pull redmine@sha256:d0ebc2cd65d9b91dc58591e71ef5127a8e13a3b01d0ba64ae21152f873c21ad4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.8 MB (244791178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374f97e839b46ada0175d1c0e912a1d4f14efce9cd49e3fa29f9216e2a15589d`
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
# Thu, 02 Nov 2017 18:59:35 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 19:14:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 19:14:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 19:14:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 19:14:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 19:14:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 19:14:14 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 20:33:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 20:34:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:34:17 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 20:34:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 20:34:25 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 20:34:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 20:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:37:10 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 20:37:12 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 20:37:13 GMT
ENV REDMINE_VERSION=3.3.5
# Thu, 02 Nov 2017 20:37:14 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Thu, 02 Nov 2017 20:37:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 20:52:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 20:52:03 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 20:52:05 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 20:52:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 20:52:08 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 20:52:09 GMT
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
	-	`sha256:8cb492ba20c92df7aeb853aae6843af30bca12f1e53cb5c89e3b1bc05ea8c77c`  
		Last Modified: Thu, 02 Nov 2017 19:54:45 GMT  
		Size: 35.0 MB (35049069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191086c28ee21b0d325cd0b8b22b59179e350cce360ea5b55f23f546c8847608`  
		Last Modified: Thu, 02 Nov 2017 19:54:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7be9bd60a692c4ab1c3151f1efdc92b3623bc2114a41e46bbd24e059bd3b9cc`  
		Last Modified: Thu, 02 Nov 2017 21:07:33 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e2a7601d20bd5cd5975756cea9749bc8b9e93ecfac521a210ebd5c0f25ffd4`  
		Last Modified: Thu, 02 Nov 2017 21:07:41 GMT  
		Size: 14.5 MB (14462538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c73236b8228c5aeb498c30dae9ec48bdf6ee2c250793393b668a3a0327d98a1`  
		Last Modified: Thu, 02 Nov 2017 21:07:30 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069d373cf8d54162e994509ee5fddae1b494e6567460ab99d7735e08d9b590c`  
		Last Modified: Thu, 02 Nov 2017 21:07:30 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22726081148b93defa2046a59e7f57c5e2714b88bdf5af87ee09cfcb040ea78b`  
		Last Modified: Thu, 02 Nov 2017 21:08:07 GMT  
		Size: 55.8 MB (55758762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abe38cfbdefa399a6a93a65414006b92d4bad75056b74a4df049f22d3c87e05`  
		Last Modified: Thu, 02 Nov 2017 21:07:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181cc4906d0817327ebfe6595d31c5d7fa1035b666153d86e026e431be6b3cab`  
		Last Modified: Thu, 02 Nov 2017 21:07:30 GMT  
		Size: 2.4 MB (2390737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f056e86465609ecdfa27e5e6b456d2a0a04362e391008b3f8e44d4fbf9d644`  
		Last Modified: Thu, 02 Nov 2017 21:08:08 GMT  
		Size: 77.4 MB (77386744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f7daebe25fe188ac2084bc419a72fe0cc5d72f4f8ab0c4e5598cb4141884e8`  
		Last Modified: Thu, 02 Nov 2017 21:07:27 GMT  
		Size: 1.7 KB (1706 bytes)  
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
$ docker pull redmine@sha256:c262e40c37a95566f42a30ecb44c0e557e56a8376ea32aa262cedbf2c0a1e03d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.6 MB (258623399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8587dd9a496db159b5fb0e8d1412d88796eda70ba2f38e15668fb14a4d4ea4b`
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
# Thu, 02 Nov 2017 09:02:07 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 09:04:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 09:04:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 09:04:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 09:04:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 09:04:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 09:04:49 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 09:31:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 09:31:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:31:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 09:31:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 09:31:17 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 09:31:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 09:31:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:31:53 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 09:31:53 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 09:31:54 GMT
ENV REDMINE_VERSION=3.3.5
# Thu, 02 Nov 2017 09:31:54 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Thu, 02 Nov 2017 09:31:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 09:34:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 09:34:13 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 09:34:13 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 09:34:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 09:34:14 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 09:34:14 GMT
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
	-	`sha256:a1bfccf5c011a7b77204d6147a0c3d6e3364470724b6e8148b62bf016f877e96`  
		Last Modified: Thu, 02 Nov 2017 09:11:31 GMT  
		Size: 38.6 MB (38581647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0bc02d97eee0effb9726b8f8df9b0f8b4640fbacf860b9fb4e8f7295c24e73`  
		Last Modified: Thu, 02 Nov 2017 09:11:21 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9eab0b8c448448962240d7de1cf3fe621301d48995b8fda36d8209cee174be`  
		Last Modified: Thu, 02 Nov 2017 09:37:57 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe172169a577595037d0fa7792271bf18cd5d62937c5d2d495470c8ec793df34`  
		Last Modified: Thu, 02 Nov 2017 09:37:58 GMT  
		Size: 14.8 MB (14815049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1926657241c91b7d0d02efc8a4f3fcdc5b6f2370cfcc89212b98683660f26551`  
		Last Modified: Thu, 02 Nov 2017 09:37:56 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00d7b93200efc31300ae8088730c51c191f8dac3f5ef3cecde1e89d9d0696c1`  
		Last Modified: Thu, 02 Nov 2017 09:37:55 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53663e7a9f25b5d554cb9217bb9a115a63418807ccda72d1832c2565a3807bbd`  
		Last Modified: Thu, 02 Nov 2017 09:38:05 GMT  
		Size: 59.1 MB (59082288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede6eccfdb1fef5de9e1afd6c2aab6386891e0a4f7e5e0eb3306cfc7dc2e1ca9`  
		Last Modified: Thu, 02 Nov 2017 09:37:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1a170ca42f0376f645bca35db0a9bfacab32912d5b15e71c85c8dd3391204c`  
		Last Modified: Thu, 02 Nov 2017 09:37:54 GMT  
		Size: 2.4 MB (2390733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175f61f890c5dda2cbae4863b8df0bfd431ae544450842b2356ead1bb5df3bd1`  
		Last Modified: Thu, 02 Nov 2017 09:38:16 GMT  
		Size: 80.5 MB (80504835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e8ad2ccd6fe3dd248110d090e4194233e007fceb1c6109ef54637be7eee231`  
		Last Modified: Thu, 02 Nov 2017 09:37:54 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.5`

```console
$ docker pull redmine@sha256:4fe6c0a6709c89635356cfa3aaf8a62c153e9a1ded28dd40cdaf55bef1aea74b
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
$ docker pull redmine@sha256:c2dfe0677c39cebfb9aac1a3d2052c31e57f4556f961b2edc38d85a7a2850f2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252352938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2ec09dfc994258e25da087b555a6fd52d5b396819d709b2da36f946f227d98`
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
# Wed, 25 Oct 2017 19:50:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:53:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:53:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:53:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:53:13 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:31:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:31:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:31:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:31:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:31:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:32:07 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:32:08 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:32:08 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 25 Oct 2017 20:32:08 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 25 Oct 2017 20:32:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:34:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:34:29 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:56:29 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:56:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:56:30 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:56:30 GMT
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
	-	`sha256:b08cd3790fc36a69cbf246db2e6a53ff9b625cce58927af56699e81089f04c68`  
		Last Modified: Wed, 25 Oct 2017 20:09:19 GMT  
		Size: 34.9 MB (34876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dae6f8f31a0f7881ea08d79de1fc7f1c20bddfc4ff0b9cce524d398cee10c6`  
		Last Modified: Wed, 25 Oct 2017 20:09:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a731c20a7cbcebe73eb1f8f2f29c421e710b4dd934e0898e2e7e37eb1fed6ff`  
		Last Modified: Wed, 25 Oct 2017 20:42:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fe5a71e430552e8907901a1a8b1a9533de567558c69a0d3140623614c6e207`  
		Last Modified: Wed, 25 Oct 2017 20:42:51 GMT  
		Size: 14.7 MB (14650130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cb9e960f996829706cc55dc24074586edb4461322e1c372b529a0fc2d60ea4`  
		Last Modified: Wed, 25 Oct 2017 20:42:48 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea4464a60ac94e779d85a5a4b78e5cb54ddef372fe2d5c582e917e809654d94`  
		Last Modified: Wed, 25 Oct 2017 20:42:47 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6393b410a473e1bf88c70b388055f90b0586f87a644a44ff2740d932fabba5c3`  
		Last Modified: Wed, 25 Oct 2017 20:42:56 GMT  
		Size: 59.2 MB (59228913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d9854cfc96bf5d5d683f589ea8ce42a414d942b5d4b60a19c245994a48d2`  
		Last Modified: Wed, 25 Oct 2017 20:42:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccf21dd7706aeb8a91830390956128958664b650e470c873aad4684376bf46f`  
		Last Modified: Wed, 25 Oct 2017 20:42:45 GMT  
		Size: 2.4 MB (2390733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2018b9dc87e4e1fe318264dc91d56b1bc57765b3373e725f1e1a24e3e31850`  
		Last Modified: Wed, 25 Oct 2017 20:42:55 GMT  
		Size: 77.9 MB (77935951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09aba085732d05d0a2f8dcfff5932923ddf10cd5088ac19c7c87ea96f541f3ec`  
		Last Modified: Tue, 31 Oct 2017 23:00:21 GMT  
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
$ docker pull redmine@sha256:d0ebc2cd65d9b91dc58591e71ef5127a8e13a3b01d0ba64ae21152f873c21ad4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.8 MB (244791178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374f97e839b46ada0175d1c0e912a1d4f14efce9cd49e3fa29f9216e2a15589d`
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
# Thu, 02 Nov 2017 18:59:35 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 19:14:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 19:14:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 19:14:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 19:14:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 19:14:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 19:14:14 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 20:33:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 20:34:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:34:17 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 20:34:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 20:34:25 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 20:34:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 20:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:37:10 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 20:37:12 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 20:37:13 GMT
ENV REDMINE_VERSION=3.3.5
# Thu, 02 Nov 2017 20:37:14 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Thu, 02 Nov 2017 20:37:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 20:52:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 20:52:03 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 20:52:05 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 20:52:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 20:52:08 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 20:52:09 GMT
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
	-	`sha256:8cb492ba20c92df7aeb853aae6843af30bca12f1e53cb5c89e3b1bc05ea8c77c`  
		Last Modified: Thu, 02 Nov 2017 19:54:45 GMT  
		Size: 35.0 MB (35049069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191086c28ee21b0d325cd0b8b22b59179e350cce360ea5b55f23f546c8847608`  
		Last Modified: Thu, 02 Nov 2017 19:54:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7be9bd60a692c4ab1c3151f1efdc92b3623bc2114a41e46bbd24e059bd3b9cc`  
		Last Modified: Thu, 02 Nov 2017 21:07:33 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e2a7601d20bd5cd5975756cea9749bc8b9e93ecfac521a210ebd5c0f25ffd4`  
		Last Modified: Thu, 02 Nov 2017 21:07:41 GMT  
		Size: 14.5 MB (14462538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c73236b8228c5aeb498c30dae9ec48bdf6ee2c250793393b668a3a0327d98a1`  
		Last Modified: Thu, 02 Nov 2017 21:07:30 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069d373cf8d54162e994509ee5fddae1b494e6567460ab99d7735e08d9b590c`  
		Last Modified: Thu, 02 Nov 2017 21:07:30 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22726081148b93defa2046a59e7f57c5e2714b88bdf5af87ee09cfcb040ea78b`  
		Last Modified: Thu, 02 Nov 2017 21:08:07 GMT  
		Size: 55.8 MB (55758762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abe38cfbdefa399a6a93a65414006b92d4bad75056b74a4df049f22d3c87e05`  
		Last Modified: Thu, 02 Nov 2017 21:07:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181cc4906d0817327ebfe6595d31c5d7fa1035b666153d86e026e431be6b3cab`  
		Last Modified: Thu, 02 Nov 2017 21:07:30 GMT  
		Size: 2.4 MB (2390737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f056e86465609ecdfa27e5e6b456d2a0a04362e391008b3f8e44d4fbf9d644`  
		Last Modified: Thu, 02 Nov 2017 21:08:08 GMT  
		Size: 77.4 MB (77386744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f7daebe25fe188ac2084bc419a72fe0cc5d72f4f8ab0c4e5598cb4141884e8`  
		Last Modified: Thu, 02 Nov 2017 21:07:27 GMT  
		Size: 1.7 KB (1706 bytes)  
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
$ docker pull redmine@sha256:c262e40c37a95566f42a30ecb44c0e557e56a8376ea32aa262cedbf2c0a1e03d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.6 MB (258623399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8587dd9a496db159b5fb0e8d1412d88796eda70ba2f38e15668fb14a4d4ea4b`
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
# Thu, 02 Nov 2017 09:02:07 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 09:04:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 09:04:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 09:04:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 09:04:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 09:04:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 09:04:49 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 09:31:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 09:31:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:31:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 09:31:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 09:31:17 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 09:31:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 09:31:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:31:53 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 09:31:53 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 09:31:54 GMT
ENV REDMINE_VERSION=3.3.5
# Thu, 02 Nov 2017 09:31:54 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Thu, 02 Nov 2017 09:31:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 09:34:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 09:34:13 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 09:34:13 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 09:34:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 09:34:14 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 09:34:14 GMT
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
	-	`sha256:a1bfccf5c011a7b77204d6147a0c3d6e3364470724b6e8148b62bf016f877e96`  
		Last Modified: Thu, 02 Nov 2017 09:11:31 GMT  
		Size: 38.6 MB (38581647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0bc02d97eee0effb9726b8f8df9b0f8b4640fbacf860b9fb4e8f7295c24e73`  
		Last Modified: Thu, 02 Nov 2017 09:11:21 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9eab0b8c448448962240d7de1cf3fe621301d48995b8fda36d8209cee174be`  
		Last Modified: Thu, 02 Nov 2017 09:37:57 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe172169a577595037d0fa7792271bf18cd5d62937c5d2d495470c8ec793df34`  
		Last Modified: Thu, 02 Nov 2017 09:37:58 GMT  
		Size: 14.8 MB (14815049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1926657241c91b7d0d02efc8a4f3fcdc5b6f2370cfcc89212b98683660f26551`  
		Last Modified: Thu, 02 Nov 2017 09:37:56 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00d7b93200efc31300ae8088730c51c191f8dac3f5ef3cecde1e89d9d0696c1`  
		Last Modified: Thu, 02 Nov 2017 09:37:55 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53663e7a9f25b5d554cb9217bb9a115a63418807ccda72d1832c2565a3807bbd`  
		Last Modified: Thu, 02 Nov 2017 09:38:05 GMT  
		Size: 59.1 MB (59082288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede6eccfdb1fef5de9e1afd6c2aab6386891e0a4f7e5e0eb3306cfc7dc2e1ca9`  
		Last Modified: Thu, 02 Nov 2017 09:37:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1a170ca42f0376f645bca35db0a9bfacab32912d5b15e71c85c8dd3391204c`  
		Last Modified: Thu, 02 Nov 2017 09:37:54 GMT  
		Size: 2.4 MB (2390733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175f61f890c5dda2cbae4863b8df0bfd431ae544450842b2356ead1bb5df3bd1`  
		Last Modified: Thu, 02 Nov 2017 09:38:16 GMT  
		Size: 80.5 MB (80504835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e8ad2ccd6fe3dd248110d090e4194233e007fceb1c6109ef54637be7eee231`  
		Last Modified: Thu, 02 Nov 2017 09:37:54 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.5-passenger`

```console
$ docker pull redmine@sha256:932d4ed3639a8df5bc71b7ba1ca981625628e6b9aefa4e8c951cf66a6e269b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.5-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:ce0bb1e2a91af7dac5d34b97dbd309b2406f7f044879474d274779fe6112000e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269179367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e58a851c4ccd2e73e45fcb253e95d04b41cccb93d9ac84c8f2f4c00a9aa50d84`
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
# Wed, 25 Oct 2017 19:50:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:53:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:53:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:53:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:53:13 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:31:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:31:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:31:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:31:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:31:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:32:07 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:32:08 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:32:08 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 25 Oct 2017 20:32:08 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 25 Oct 2017 20:32:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:34:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:34:29 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:56:29 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:56:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:56:30 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:56:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 31 Oct 2017 22:56:45 GMT
ENV PASSENGER_VERSION=5.1.11
# Tue, 31 Oct 2017 22:57:15 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 31 Oct 2017 22:57:23 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 31 Oct 2017 22:57:23 GMT
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
	-	`sha256:b08cd3790fc36a69cbf246db2e6a53ff9b625cce58927af56699e81089f04c68`  
		Last Modified: Wed, 25 Oct 2017 20:09:19 GMT  
		Size: 34.9 MB (34876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dae6f8f31a0f7881ea08d79de1fc7f1c20bddfc4ff0b9cce524d398cee10c6`  
		Last Modified: Wed, 25 Oct 2017 20:09:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a731c20a7cbcebe73eb1f8f2f29c421e710b4dd934e0898e2e7e37eb1fed6ff`  
		Last Modified: Wed, 25 Oct 2017 20:42:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fe5a71e430552e8907901a1a8b1a9533de567558c69a0d3140623614c6e207`  
		Last Modified: Wed, 25 Oct 2017 20:42:51 GMT  
		Size: 14.7 MB (14650130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cb9e960f996829706cc55dc24074586edb4461322e1c372b529a0fc2d60ea4`  
		Last Modified: Wed, 25 Oct 2017 20:42:48 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea4464a60ac94e779d85a5a4b78e5cb54ddef372fe2d5c582e917e809654d94`  
		Last Modified: Wed, 25 Oct 2017 20:42:47 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6393b410a473e1bf88c70b388055f90b0586f87a644a44ff2740d932fabba5c3`  
		Last Modified: Wed, 25 Oct 2017 20:42:56 GMT  
		Size: 59.2 MB (59228913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d9854cfc96bf5d5d683f589ea8ce42a414d942b5d4b60a19c245994a48d2`  
		Last Modified: Wed, 25 Oct 2017 20:42:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccf21dd7706aeb8a91830390956128958664b650e470c873aad4684376bf46f`  
		Last Modified: Wed, 25 Oct 2017 20:42:45 GMT  
		Size: 2.4 MB (2390733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2018b9dc87e4e1fe318264dc91d56b1bc57765b3373e725f1e1a24e3e31850`  
		Last Modified: Wed, 25 Oct 2017 20:42:55 GMT  
		Size: 77.9 MB (77935951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09aba085732d05d0a2f8dcfff5932923ddf10cd5088ac19c7c87ea96f541f3ec`  
		Last Modified: Tue, 31 Oct 2017 23:00:21 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a483cb163eb32a4cd35710e30932711409602b2a7ff005a90aca453627f19ac`  
		Last Modified: Tue, 31 Oct 2017 23:00:45 GMT  
		Size: 12.8 MB (12750799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add455d33373b6a279f0badab666975529369a7256343f033aea3aa94024fc89`  
		Last Modified: Tue, 31 Oct 2017 23:00:44 GMT  
		Size: 4.1 MB (4075630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:932d4ed3639a8df5bc71b7ba1ca981625628e6b9aefa4e8c951cf66a6e269b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:ce0bb1e2a91af7dac5d34b97dbd309b2406f7f044879474d274779fe6112000e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269179367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e58a851c4ccd2e73e45fcb253e95d04b41cccb93d9ac84c8f2f4c00a9aa50d84`
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
# Wed, 25 Oct 2017 19:50:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:53:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:53:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:53:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:53:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:53:13 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:31:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:31:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:31:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:31:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:31:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:32:07 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:32:08 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:32:08 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 25 Oct 2017 20:32:08 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 25 Oct 2017 20:32:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:34:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:34:29 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:56:29 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:56:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:56:30 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:56:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 31 Oct 2017 22:56:45 GMT
ENV PASSENGER_VERSION=5.1.11
# Tue, 31 Oct 2017 22:57:15 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 31 Oct 2017 22:57:23 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 31 Oct 2017 22:57:23 GMT
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
	-	`sha256:b08cd3790fc36a69cbf246db2e6a53ff9b625cce58927af56699e81089f04c68`  
		Last Modified: Wed, 25 Oct 2017 20:09:19 GMT  
		Size: 34.9 MB (34876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dae6f8f31a0f7881ea08d79de1fc7f1c20bddfc4ff0b9cce524d398cee10c6`  
		Last Modified: Wed, 25 Oct 2017 20:09:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a731c20a7cbcebe73eb1f8f2f29c421e710b4dd934e0898e2e7e37eb1fed6ff`  
		Last Modified: Wed, 25 Oct 2017 20:42:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fe5a71e430552e8907901a1a8b1a9533de567558c69a0d3140623614c6e207`  
		Last Modified: Wed, 25 Oct 2017 20:42:51 GMT  
		Size: 14.7 MB (14650130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cb9e960f996829706cc55dc24074586edb4461322e1c372b529a0fc2d60ea4`  
		Last Modified: Wed, 25 Oct 2017 20:42:48 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea4464a60ac94e779d85a5a4b78e5cb54ddef372fe2d5c582e917e809654d94`  
		Last Modified: Wed, 25 Oct 2017 20:42:47 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6393b410a473e1bf88c70b388055f90b0586f87a644a44ff2740d932fabba5c3`  
		Last Modified: Wed, 25 Oct 2017 20:42:56 GMT  
		Size: 59.2 MB (59228913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0d9854cfc96bf5d5d683f589ea8ce42a414d942b5d4b60a19c245994a48d2`  
		Last Modified: Wed, 25 Oct 2017 20:42:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccf21dd7706aeb8a91830390956128958664b650e470c873aad4684376bf46f`  
		Last Modified: Wed, 25 Oct 2017 20:42:45 GMT  
		Size: 2.4 MB (2390733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2018b9dc87e4e1fe318264dc91d56b1bc57765b3373e725f1e1a24e3e31850`  
		Last Modified: Wed, 25 Oct 2017 20:42:55 GMT  
		Size: 77.9 MB (77935951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09aba085732d05d0a2f8dcfff5932923ddf10cd5088ac19c7c87ea96f541f3ec`  
		Last Modified: Tue, 31 Oct 2017 23:00:21 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a483cb163eb32a4cd35710e30932711409602b2a7ff005a90aca453627f19ac`  
		Last Modified: Tue, 31 Oct 2017 23:00:45 GMT  
		Size: 12.8 MB (12750799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add455d33373b6a279f0badab666975529369a7256343f033aea3aa94024fc89`  
		Last Modified: Tue, 31 Oct 2017 23:00:44 GMT  
		Size: 4.1 MB (4075630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:c202f94e0f827dcf231889692ae48a9402b42d07baa8572d91edc7e4a9f6e62a
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
$ docker pull redmine@sha256:098318ddd6912cac85be64faea49f510127bf208f81d989047a093a518676a87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241150023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86e325c408cd5503ecf440787347d3bfb85d38f67ea544cb155a938add10292`
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
# Wed, 25 Oct 2017 19:28:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:32:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:32:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:32:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:32:05 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:26:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:26:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:26:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:26:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:26:59 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:27:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:27:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:27:42 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:27:42 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:27:42 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 25 Oct 2017 20:27:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 25 Oct 2017 20:27:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:30:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:30:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:54:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:54:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:54:56 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:54:56 GMT
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
	-	`sha256:ffff09909504cacaac9201e21d25c040fb7633231abab154487c27a612e96ffb`  
		Last Modified: Wed, 25 Oct 2017 20:01:55 GMT  
		Size: 24.3 MB (24286429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76a1a06d36442283854b277110a464cf75abf772ad2206b46c8a0ebacb036ef`  
		Last Modified: Wed, 25 Oct 2017 20:01:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ab89d380eb560ef6f04376c1fa61c0ed332596b8c729d25f50ca0987918950`  
		Last Modified: Wed, 25 Oct 2017 20:41:08 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c314d67f5e43fbcc4a5cd4094c703b82b92d5436ddeea374415d266b20dd93`  
		Last Modified: Wed, 25 Oct 2017 20:41:11 GMT  
		Size: 14.7 MB (14650128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a2ef0d1820bff9d9fb3215c279ca13413d2cb602cf97e422d5bb1e63e782ed`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4f02c2d55a18d17690fd1dd1963eeb9ff48b7052b0bc33d87933e3eb9e155d`  
		Last Modified: Wed, 25 Oct 2017 20:41:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994674730999ddbc5323141ce35763ca117ac0a0f37e3902efdac0abe5f27d75`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 59.2 MB (59228463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db84569570f9a554474131f28eaaa862ce123e9abc2262fc8c256d33c7bd127`  
		Last Modified: Wed, 25 Oct 2017 20:41:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad28fb2271231fdbbb59ef9e14ca8db6c2362f5b285fd1b50b10c548b63583`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 2.4 MB (2449718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29652b55913f35e46dfe21cdab929b94ad8e741a426c60a7ed5fd7297def4d83`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 77.3 MB (77264642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db70bf677ac60c26a16b29d0128b6b991ce9f80e71a3178a4ad7f8fddc813d2`  
		Last Modified: Tue, 31 Oct 2017 22:58:43 GMT  
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
$ docker pull redmine@sha256:203d7c12b735794af7fd9319455f2d740de03368beb31013fe29ae01ec520585
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.4 MB (233407879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc167b619442732d6b86965bcb42e1f6776167570cbd4275d5386909b3e6b9`
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
# Thu, 02 Nov 2017 18:07:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 18:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 18:17:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 18:17:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 18:17:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:17:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 18:17:23 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 20:15:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 20:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:16:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 20:16:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 20:16:26 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 20:16:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 20:18:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:18:51 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 20:18:52 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 20:18:53 GMT
ENV REDMINE_VERSION=3.4.3
# Thu, 02 Nov 2017 20:18:54 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Thu, 02 Nov 2017 20:19:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 20:32:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 20:32:44 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 20:32:46 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 20:32:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 20:32:48 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 20:32:50 GMT
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
	-	`sha256:12ac716002903f38255383c5dcb04893cf506e57db2f40b1ecf0dc5d1420075c`  
		Last Modified: Thu, 02 Nov 2017 19:42:14 GMT  
		Size: 24.3 MB (24278575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50170bedad533fa63ea6f55afea8d4d97ada47c86c5434f103c9ec2be2432695`  
		Last Modified: Thu, 02 Nov 2017 19:41:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1584eed6416ccfb4c66b49a455eefe133b41be2b79a8051933631bc8f9bf4660`  
		Last Modified: Thu, 02 Nov 2017 21:06:00 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e2c00ef7c62c9c8892194ea467368be0fbf775bfd271a1e026c6adccc07f94`  
		Last Modified: Thu, 02 Nov 2017 21:06:07 GMT  
		Size: 14.5 MB (14462562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60d46fb883b4c2bbb31d6cbf36ec059abe7cf090f52e08a192542612a907a8`  
		Last Modified: Thu, 02 Nov 2017 21:06:01 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5827e491049be36aa8526ee91baccf916ef647dd1ba64e0a183a3cc3e7bde8a`  
		Last Modified: Thu, 02 Nov 2017 21:05:58 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacbebde859a6cf1950525c6320fdebd0c7205e7e2e35b66629df7fdd55d355a`  
		Last Modified: Thu, 02 Nov 2017 21:06:22 GMT  
		Size: 55.8 MB (55758931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd1dc05f76f5a3b59cacc9ac9ff2f5cf2a55cda146d8d9b66ea66f8d3220013`  
		Last Modified: Thu, 02 Nov 2017 21:05:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50acafbdb7d414ca045978ee05e1cc4b93cd3bd23c07ac0bf836cbaafb150c14`  
		Last Modified: Thu, 02 Nov 2017 21:05:58 GMT  
		Size: 2.4 MB (2449713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d784346800715dda859000bb115f95882c7e7eec21499375d5695bda53668d`  
		Last Modified: Thu, 02 Nov 2017 21:06:25 GMT  
		Size: 76.7 MB (76714772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92b355db1bb9a5633c8f5ce919df92561c607d42daac2579fc492fc1472b5d2`  
		Last Modified: Thu, 02 Nov 2017 21:05:56 GMT  
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
$ docker pull redmine@sha256:ca412ea0315a7da04bbfb883cbec1a9174ff4236b1674be960b7eab5b2e2007c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244235683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2dc5545709e9bdca31d2361e04299f2fe5689ee35ae5b75cd24cf07376a5682`
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
# Thu, 02 Nov 2017 08:47:43 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 08:50:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 08:50:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 08:50:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 08:51:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 08:51:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 08:51:00 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 09:27:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 09:27:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:27:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 09:27:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 09:27:39 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 09:27:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 09:28:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:28:16 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 09:28:16 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 09:28:17 GMT
ENV REDMINE_VERSION=3.4.3
# Thu, 02 Nov 2017 09:28:17 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Thu, 02 Nov 2017 09:28:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 09:30:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 09:30:46 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 09:30:47 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 09:30:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 09:30:47 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 09:30:47 GMT
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
	-	`sha256:b14a71a6bbdccbb3f4c1bdb0d5b904fb5b463a24e4711ab018e0ae5f91da8919`  
		Last Modified: Thu, 02 Nov 2017 09:08:25 GMT  
		Size: 24.7 MB (24721390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160f7619101c1c4ff511f9cac33d244e669acfd9cfa8d882c91a88519e51f896`  
		Last Modified: Thu, 02 Nov 2017 09:08:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62015fe24dd9fd8fd16a65c5b86214800fcd71db7e9d799144fc38c6f11de54`  
		Last Modified: Thu, 02 Nov 2017 09:37:09 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbac9e0620970055635c8bdc8f6bfc790e4e54cea8eb2d3bb5007070ada39f03`  
		Last Modified: Thu, 02 Nov 2017 09:37:11 GMT  
		Size: 14.8 MB (14815049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb479d8676fb71d60d33a3f2e714ecd6fefcd06776defd40fc3c89ae025c2077`  
		Last Modified: Thu, 02 Nov 2017 09:37:08 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbd271270d24d0d9d3510944b5765e444ea455baf4eaaceb734eefa700bc334`  
		Last Modified: Thu, 02 Nov 2017 09:37:08 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf384a794d9cd92d2843557cfb59b5902dec07f2cd0c7e5b18ef972ec2897b38`  
		Last Modified: Thu, 02 Nov 2017 09:37:18 GMT  
		Size: 59.1 MB (59083065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affbd52fa20f31929fc20eacd28b5bd4f476bc0bb7cb56b7792237f962fdb558`  
		Last Modified: Thu, 02 Nov 2017 09:37:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1431a5a46ec701e487281c222dc3c3980a240a8e9690101504642efb0fbd2b`  
		Last Modified: Thu, 02 Nov 2017 09:37:08 GMT  
		Size: 2.4 MB (2449721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8199b08ec82862fd5ca922a4fcf42ece8138a9520e07a94ed225bd7b36f058`  
		Last Modified: Thu, 02 Nov 2017 09:37:28 GMT  
		Size: 79.9 MB (79917606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddd7c2ba3e19fc05a08ff74c4a7fd60a341eeedcebc3f2ae684483350d912ca`  
		Last Modified: Thu, 02 Nov 2017 09:37:07 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.3`

```console
$ docker pull redmine@sha256:c202f94e0f827dcf231889692ae48a9402b42d07baa8572d91edc7e4a9f6e62a
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
$ docker pull redmine@sha256:098318ddd6912cac85be64faea49f510127bf208f81d989047a093a518676a87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241150023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86e325c408cd5503ecf440787347d3bfb85d38f67ea544cb155a938add10292`
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
# Wed, 25 Oct 2017 19:28:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:32:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:32:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:32:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:32:05 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:26:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:26:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:26:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:26:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:26:59 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:27:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:27:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:27:42 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:27:42 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:27:42 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 25 Oct 2017 20:27:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 25 Oct 2017 20:27:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:30:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:30:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:54:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:54:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:54:56 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:54:56 GMT
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
	-	`sha256:ffff09909504cacaac9201e21d25c040fb7633231abab154487c27a612e96ffb`  
		Last Modified: Wed, 25 Oct 2017 20:01:55 GMT  
		Size: 24.3 MB (24286429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76a1a06d36442283854b277110a464cf75abf772ad2206b46c8a0ebacb036ef`  
		Last Modified: Wed, 25 Oct 2017 20:01:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ab89d380eb560ef6f04376c1fa61c0ed332596b8c729d25f50ca0987918950`  
		Last Modified: Wed, 25 Oct 2017 20:41:08 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c314d67f5e43fbcc4a5cd4094c703b82b92d5436ddeea374415d266b20dd93`  
		Last Modified: Wed, 25 Oct 2017 20:41:11 GMT  
		Size: 14.7 MB (14650128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a2ef0d1820bff9d9fb3215c279ca13413d2cb602cf97e422d5bb1e63e782ed`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4f02c2d55a18d17690fd1dd1963eeb9ff48b7052b0bc33d87933e3eb9e155d`  
		Last Modified: Wed, 25 Oct 2017 20:41:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994674730999ddbc5323141ce35763ca117ac0a0f37e3902efdac0abe5f27d75`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 59.2 MB (59228463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db84569570f9a554474131f28eaaa862ce123e9abc2262fc8c256d33c7bd127`  
		Last Modified: Wed, 25 Oct 2017 20:41:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad28fb2271231fdbbb59ef9e14ca8db6c2362f5b285fd1b50b10c548b63583`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 2.4 MB (2449718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29652b55913f35e46dfe21cdab929b94ad8e741a426c60a7ed5fd7297def4d83`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 77.3 MB (77264642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db70bf677ac60c26a16b29d0128b6b991ce9f80e71a3178a4ad7f8fddc813d2`  
		Last Modified: Tue, 31 Oct 2017 22:58:43 GMT  
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
$ docker pull redmine@sha256:203d7c12b735794af7fd9319455f2d740de03368beb31013fe29ae01ec520585
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.4 MB (233407879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc167b619442732d6b86965bcb42e1f6776167570cbd4275d5386909b3e6b9`
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
# Thu, 02 Nov 2017 18:07:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 18:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 18:17:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 18:17:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 18:17:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:17:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 18:17:23 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 20:15:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 20:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:16:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 20:16:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 20:16:26 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 20:16:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 20:18:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:18:51 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 20:18:52 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 20:18:53 GMT
ENV REDMINE_VERSION=3.4.3
# Thu, 02 Nov 2017 20:18:54 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Thu, 02 Nov 2017 20:19:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 20:32:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 20:32:44 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 20:32:46 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 20:32:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 20:32:48 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 20:32:50 GMT
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
	-	`sha256:12ac716002903f38255383c5dcb04893cf506e57db2f40b1ecf0dc5d1420075c`  
		Last Modified: Thu, 02 Nov 2017 19:42:14 GMT  
		Size: 24.3 MB (24278575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50170bedad533fa63ea6f55afea8d4d97ada47c86c5434f103c9ec2be2432695`  
		Last Modified: Thu, 02 Nov 2017 19:41:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1584eed6416ccfb4c66b49a455eefe133b41be2b79a8051933631bc8f9bf4660`  
		Last Modified: Thu, 02 Nov 2017 21:06:00 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e2c00ef7c62c9c8892194ea467368be0fbf775bfd271a1e026c6adccc07f94`  
		Last Modified: Thu, 02 Nov 2017 21:06:07 GMT  
		Size: 14.5 MB (14462562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60d46fb883b4c2bbb31d6cbf36ec059abe7cf090f52e08a192542612a907a8`  
		Last Modified: Thu, 02 Nov 2017 21:06:01 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5827e491049be36aa8526ee91baccf916ef647dd1ba64e0a183a3cc3e7bde8a`  
		Last Modified: Thu, 02 Nov 2017 21:05:58 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacbebde859a6cf1950525c6320fdebd0c7205e7e2e35b66629df7fdd55d355a`  
		Last Modified: Thu, 02 Nov 2017 21:06:22 GMT  
		Size: 55.8 MB (55758931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd1dc05f76f5a3b59cacc9ac9ff2f5cf2a55cda146d8d9b66ea66f8d3220013`  
		Last Modified: Thu, 02 Nov 2017 21:05:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50acafbdb7d414ca045978ee05e1cc4b93cd3bd23c07ac0bf836cbaafb150c14`  
		Last Modified: Thu, 02 Nov 2017 21:05:58 GMT  
		Size: 2.4 MB (2449713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d784346800715dda859000bb115f95882c7e7eec21499375d5695bda53668d`  
		Last Modified: Thu, 02 Nov 2017 21:06:25 GMT  
		Size: 76.7 MB (76714772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92b355db1bb9a5633c8f5ce919df92561c607d42daac2579fc492fc1472b5d2`  
		Last Modified: Thu, 02 Nov 2017 21:05:56 GMT  
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
$ docker pull redmine@sha256:ca412ea0315a7da04bbfb883cbec1a9174ff4236b1674be960b7eab5b2e2007c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244235683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2dc5545709e9bdca31d2361e04299f2fe5689ee35ae5b75cd24cf07376a5682`
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
# Thu, 02 Nov 2017 08:47:43 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 08:50:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 08:50:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 08:50:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 08:51:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 08:51:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 08:51:00 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 09:27:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 09:27:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:27:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 09:27:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 09:27:39 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 09:27:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 09:28:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:28:16 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 09:28:16 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 09:28:17 GMT
ENV REDMINE_VERSION=3.4.3
# Thu, 02 Nov 2017 09:28:17 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Thu, 02 Nov 2017 09:28:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 09:30:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 09:30:46 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 09:30:47 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 09:30:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 09:30:47 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 09:30:47 GMT
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
	-	`sha256:b14a71a6bbdccbb3f4c1bdb0d5b904fb5b463a24e4711ab018e0ae5f91da8919`  
		Last Modified: Thu, 02 Nov 2017 09:08:25 GMT  
		Size: 24.7 MB (24721390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160f7619101c1c4ff511f9cac33d244e669acfd9cfa8d882c91a88519e51f896`  
		Last Modified: Thu, 02 Nov 2017 09:08:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62015fe24dd9fd8fd16a65c5b86214800fcd71db7e9d799144fc38c6f11de54`  
		Last Modified: Thu, 02 Nov 2017 09:37:09 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbac9e0620970055635c8bdc8f6bfc790e4e54cea8eb2d3bb5007070ada39f03`  
		Last Modified: Thu, 02 Nov 2017 09:37:11 GMT  
		Size: 14.8 MB (14815049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb479d8676fb71d60d33a3f2e714ecd6fefcd06776defd40fc3c89ae025c2077`  
		Last Modified: Thu, 02 Nov 2017 09:37:08 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbd271270d24d0d9d3510944b5765e444ea455baf4eaaceb734eefa700bc334`  
		Last Modified: Thu, 02 Nov 2017 09:37:08 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf384a794d9cd92d2843557cfb59b5902dec07f2cd0c7e5b18ef972ec2897b38`  
		Last Modified: Thu, 02 Nov 2017 09:37:18 GMT  
		Size: 59.1 MB (59083065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affbd52fa20f31929fc20eacd28b5bd4f476bc0bb7cb56b7792237f962fdb558`  
		Last Modified: Thu, 02 Nov 2017 09:37:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1431a5a46ec701e487281c222dc3c3980a240a8e9690101504642efb0fbd2b`  
		Last Modified: Thu, 02 Nov 2017 09:37:08 GMT  
		Size: 2.4 MB (2449721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8199b08ec82862fd5ca922a4fcf42ece8138a9520e07a94ed225bd7b36f058`  
		Last Modified: Thu, 02 Nov 2017 09:37:28 GMT  
		Size: 79.9 MB (79917606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddd7c2ba3e19fc05a08ff74c4a7fd60a341eeedcebc3f2ae684483350d912ca`  
		Last Modified: Thu, 02 Nov 2017 09:37:07 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.3-passenger`

```console
$ docker pull redmine@sha256:3c5f9b9af397dd185fa4cee5b9b6fba3909fd07499a0e99237f71370bb7dc982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e711ce82e3d462d8c18725fc361fefb252dad5302ce56e734288789c7a01c5f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257975741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b6272050a8e5661676803b50275982b605c21907ad0eb49316889b604f7794`
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
# Wed, 25 Oct 2017 19:28:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:32:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:32:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:32:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:32:05 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:26:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:26:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:26:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:26:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:26:59 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:27:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:27:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:27:42 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:27:42 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:27:42 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 25 Oct 2017 20:27:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 25 Oct 2017 20:27:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:30:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:30:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:54:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:54:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:54:56 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:54:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 31 Oct 2017 22:55:39 GMT
ENV PASSENGER_VERSION=5.1.11
# Tue, 31 Oct 2017 22:56:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 31 Oct 2017 22:56:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 31 Oct 2017 22:56:09 GMT
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
	-	`sha256:ffff09909504cacaac9201e21d25c040fb7633231abab154487c27a612e96ffb`  
		Last Modified: Wed, 25 Oct 2017 20:01:55 GMT  
		Size: 24.3 MB (24286429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76a1a06d36442283854b277110a464cf75abf772ad2206b46c8a0ebacb036ef`  
		Last Modified: Wed, 25 Oct 2017 20:01:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ab89d380eb560ef6f04376c1fa61c0ed332596b8c729d25f50ca0987918950`  
		Last Modified: Wed, 25 Oct 2017 20:41:08 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c314d67f5e43fbcc4a5cd4094c703b82b92d5436ddeea374415d266b20dd93`  
		Last Modified: Wed, 25 Oct 2017 20:41:11 GMT  
		Size: 14.7 MB (14650128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a2ef0d1820bff9d9fb3215c279ca13413d2cb602cf97e422d5bb1e63e782ed`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4f02c2d55a18d17690fd1dd1963eeb9ff48b7052b0bc33d87933e3eb9e155d`  
		Last Modified: Wed, 25 Oct 2017 20:41:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994674730999ddbc5323141ce35763ca117ac0a0f37e3902efdac0abe5f27d75`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 59.2 MB (59228463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db84569570f9a554474131f28eaaa862ce123e9abc2262fc8c256d33c7bd127`  
		Last Modified: Wed, 25 Oct 2017 20:41:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad28fb2271231fdbbb59ef9e14ca8db6c2362f5b285fd1b50b10c548b63583`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 2.4 MB (2449718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29652b55913f35e46dfe21cdab929b94ad8e741a426c60a7ed5fd7297def4d83`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 77.3 MB (77264642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db70bf677ac60c26a16b29d0128b6b991ce9f80e71a3178a4ad7f8fddc813d2`  
		Last Modified: Tue, 31 Oct 2017 22:58:43 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ba60cddfec1e6769a28105b48d88dc0330585ed530c8546d1d0e56c70033e2`  
		Last Modified: Tue, 31 Oct 2017 22:59:37 GMT  
		Size: 12.8 MB (12750092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561e7d8f880a7662d6efb27b74b090dffd5768eee6fd4bae8336000950630ab7`  
		Last Modified: Tue, 31 Oct 2017 22:59:35 GMT  
		Size: 4.1 MB (4075626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:3c5f9b9af397dd185fa4cee5b9b6fba3909fd07499a0e99237f71370bb7dc982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e711ce82e3d462d8c18725fc361fefb252dad5302ce56e734288789c7a01c5f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257975741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b6272050a8e5661676803b50275982b605c21907ad0eb49316889b604f7794`
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
# Wed, 25 Oct 2017 19:28:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:32:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:32:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:32:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:32:05 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:26:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:26:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:26:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:26:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:26:59 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:27:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:27:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:27:42 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:27:42 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:27:42 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 25 Oct 2017 20:27:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 25 Oct 2017 20:27:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:30:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:30:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:54:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:54:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:54:56 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:54:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 31 Oct 2017 22:55:39 GMT
ENV PASSENGER_VERSION=5.1.11
# Tue, 31 Oct 2017 22:56:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 31 Oct 2017 22:56:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 31 Oct 2017 22:56:09 GMT
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
	-	`sha256:ffff09909504cacaac9201e21d25c040fb7633231abab154487c27a612e96ffb`  
		Last Modified: Wed, 25 Oct 2017 20:01:55 GMT  
		Size: 24.3 MB (24286429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76a1a06d36442283854b277110a464cf75abf772ad2206b46c8a0ebacb036ef`  
		Last Modified: Wed, 25 Oct 2017 20:01:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ab89d380eb560ef6f04376c1fa61c0ed332596b8c729d25f50ca0987918950`  
		Last Modified: Wed, 25 Oct 2017 20:41:08 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c314d67f5e43fbcc4a5cd4094c703b82b92d5436ddeea374415d266b20dd93`  
		Last Modified: Wed, 25 Oct 2017 20:41:11 GMT  
		Size: 14.7 MB (14650128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a2ef0d1820bff9d9fb3215c279ca13413d2cb602cf97e422d5bb1e63e782ed`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4f02c2d55a18d17690fd1dd1963eeb9ff48b7052b0bc33d87933e3eb9e155d`  
		Last Modified: Wed, 25 Oct 2017 20:41:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994674730999ddbc5323141ce35763ca117ac0a0f37e3902efdac0abe5f27d75`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 59.2 MB (59228463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db84569570f9a554474131f28eaaa862ce123e9abc2262fc8c256d33c7bd127`  
		Last Modified: Wed, 25 Oct 2017 20:41:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad28fb2271231fdbbb59ef9e14ca8db6c2362f5b285fd1b50b10c548b63583`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 2.4 MB (2449718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29652b55913f35e46dfe21cdab929b94ad8e741a426c60a7ed5fd7297def4d83`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 77.3 MB (77264642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db70bf677ac60c26a16b29d0128b6b991ce9f80e71a3178a4ad7f8fddc813d2`  
		Last Modified: Tue, 31 Oct 2017 22:58:43 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ba60cddfec1e6769a28105b48d88dc0330585ed530c8546d1d0e56c70033e2`  
		Last Modified: Tue, 31 Oct 2017 22:59:37 GMT  
		Size: 12.8 MB (12750092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561e7d8f880a7662d6efb27b74b090dffd5768eee6fd4bae8336000950630ab7`  
		Last Modified: Tue, 31 Oct 2017 22:59:35 GMT  
		Size: 4.1 MB (4075626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:3c5f9b9af397dd185fa4cee5b9b6fba3909fd07499a0e99237f71370bb7dc982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e711ce82e3d462d8c18725fc361fefb252dad5302ce56e734288789c7a01c5f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257975741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b6272050a8e5661676803b50275982b605c21907ad0eb49316889b604f7794`
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
# Wed, 25 Oct 2017 19:28:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:32:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:32:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:32:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:32:05 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:26:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:26:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:26:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:26:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:26:59 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:27:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:27:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:27:42 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:27:42 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:27:42 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 25 Oct 2017 20:27:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 25 Oct 2017 20:27:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:30:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:30:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:54:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:54:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:54:56 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:54:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 31 Oct 2017 22:55:39 GMT
ENV PASSENGER_VERSION=5.1.11
# Tue, 31 Oct 2017 22:56:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 31 Oct 2017 22:56:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 31 Oct 2017 22:56:09 GMT
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
	-	`sha256:ffff09909504cacaac9201e21d25c040fb7633231abab154487c27a612e96ffb`  
		Last Modified: Wed, 25 Oct 2017 20:01:55 GMT  
		Size: 24.3 MB (24286429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76a1a06d36442283854b277110a464cf75abf772ad2206b46c8a0ebacb036ef`  
		Last Modified: Wed, 25 Oct 2017 20:01:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ab89d380eb560ef6f04376c1fa61c0ed332596b8c729d25f50ca0987918950`  
		Last Modified: Wed, 25 Oct 2017 20:41:08 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c314d67f5e43fbcc4a5cd4094c703b82b92d5436ddeea374415d266b20dd93`  
		Last Modified: Wed, 25 Oct 2017 20:41:11 GMT  
		Size: 14.7 MB (14650128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a2ef0d1820bff9d9fb3215c279ca13413d2cb602cf97e422d5bb1e63e782ed`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4f02c2d55a18d17690fd1dd1963eeb9ff48b7052b0bc33d87933e3eb9e155d`  
		Last Modified: Wed, 25 Oct 2017 20:41:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994674730999ddbc5323141ce35763ca117ac0a0f37e3902efdac0abe5f27d75`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 59.2 MB (59228463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db84569570f9a554474131f28eaaa862ce123e9abc2262fc8c256d33c7bd127`  
		Last Modified: Wed, 25 Oct 2017 20:41:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad28fb2271231fdbbb59ef9e14ca8db6c2362f5b285fd1b50b10c548b63583`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 2.4 MB (2449718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29652b55913f35e46dfe21cdab929b94ad8e741a426c60a7ed5fd7297def4d83`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 77.3 MB (77264642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db70bf677ac60c26a16b29d0128b6b991ce9f80e71a3178a4ad7f8fddc813d2`  
		Last Modified: Tue, 31 Oct 2017 22:58:43 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ba60cddfec1e6769a28105b48d88dc0330585ed530c8546d1d0e56c70033e2`  
		Last Modified: Tue, 31 Oct 2017 22:59:37 GMT  
		Size: 12.8 MB (12750092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561e7d8f880a7662d6efb27b74b090dffd5768eee6fd4bae8336000950630ab7`  
		Last Modified: Tue, 31 Oct 2017 22:59:35 GMT  
		Size: 4.1 MB (4075626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:c44df9591e9c445baf28da2395ac81ebd646c0ac1073def71db7f9dfdfd6ceb5
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
$ docker pull redmine@sha256:098318ddd6912cac85be64faea49f510127bf208f81d989047a093a518676a87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241150023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86e325c408cd5503ecf440787347d3bfb85d38f67ea544cb155a938add10292`
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
# Wed, 25 Oct 2017 19:28:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:32:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:32:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:32:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:32:05 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:26:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:26:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:26:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:26:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:26:59 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:27:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:27:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:27:42 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:27:42 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:27:42 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 25 Oct 2017 20:27:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 25 Oct 2017 20:27:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:30:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:30:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:54:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:54:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:54:56 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:54:56 GMT
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
	-	`sha256:ffff09909504cacaac9201e21d25c040fb7633231abab154487c27a612e96ffb`  
		Last Modified: Wed, 25 Oct 2017 20:01:55 GMT  
		Size: 24.3 MB (24286429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76a1a06d36442283854b277110a464cf75abf772ad2206b46c8a0ebacb036ef`  
		Last Modified: Wed, 25 Oct 2017 20:01:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ab89d380eb560ef6f04376c1fa61c0ed332596b8c729d25f50ca0987918950`  
		Last Modified: Wed, 25 Oct 2017 20:41:08 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c314d67f5e43fbcc4a5cd4094c703b82b92d5436ddeea374415d266b20dd93`  
		Last Modified: Wed, 25 Oct 2017 20:41:11 GMT  
		Size: 14.7 MB (14650128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a2ef0d1820bff9d9fb3215c279ca13413d2cb602cf97e422d5bb1e63e782ed`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4f02c2d55a18d17690fd1dd1963eeb9ff48b7052b0bc33d87933e3eb9e155d`  
		Last Modified: Wed, 25 Oct 2017 20:41:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994674730999ddbc5323141ce35763ca117ac0a0f37e3902efdac0abe5f27d75`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 59.2 MB (59228463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db84569570f9a554474131f28eaaa862ce123e9abc2262fc8c256d33c7bd127`  
		Last Modified: Wed, 25 Oct 2017 20:41:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad28fb2271231fdbbb59ef9e14ca8db6c2362f5b285fd1b50b10c548b63583`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 2.4 MB (2449718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29652b55913f35e46dfe21cdab929b94ad8e741a426c60a7ed5fd7297def4d83`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 77.3 MB (77264642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db70bf677ac60c26a16b29d0128b6b991ce9f80e71a3178a4ad7f8fddc813d2`  
		Last Modified: Tue, 31 Oct 2017 22:58:43 GMT  
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
$ docker pull redmine@sha256:203d7c12b735794af7fd9319455f2d740de03368beb31013fe29ae01ec520585
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.4 MB (233407879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc167b619442732d6b86965bcb42e1f6776167570cbd4275d5386909b3e6b9`
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
# Thu, 02 Nov 2017 18:07:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 18:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 18:17:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 18:17:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 18:17:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:17:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 18:17:23 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 20:15:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 20:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:16:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 20:16:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 20:16:26 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 20:16:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 20:18:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:18:51 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 20:18:52 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 20:18:53 GMT
ENV REDMINE_VERSION=3.4.3
# Thu, 02 Nov 2017 20:18:54 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Thu, 02 Nov 2017 20:19:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 20:32:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 20:32:44 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 20:32:46 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 20:32:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 20:32:48 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 20:32:50 GMT
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
	-	`sha256:12ac716002903f38255383c5dcb04893cf506e57db2f40b1ecf0dc5d1420075c`  
		Last Modified: Thu, 02 Nov 2017 19:42:14 GMT  
		Size: 24.3 MB (24278575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50170bedad533fa63ea6f55afea8d4d97ada47c86c5434f103c9ec2be2432695`  
		Last Modified: Thu, 02 Nov 2017 19:41:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1584eed6416ccfb4c66b49a455eefe133b41be2b79a8051933631bc8f9bf4660`  
		Last Modified: Thu, 02 Nov 2017 21:06:00 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e2c00ef7c62c9c8892194ea467368be0fbf775bfd271a1e026c6adccc07f94`  
		Last Modified: Thu, 02 Nov 2017 21:06:07 GMT  
		Size: 14.5 MB (14462562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60d46fb883b4c2bbb31d6cbf36ec059abe7cf090f52e08a192542612a907a8`  
		Last Modified: Thu, 02 Nov 2017 21:06:01 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5827e491049be36aa8526ee91baccf916ef647dd1ba64e0a183a3cc3e7bde8a`  
		Last Modified: Thu, 02 Nov 2017 21:05:58 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacbebde859a6cf1950525c6320fdebd0c7205e7e2e35b66629df7fdd55d355a`  
		Last Modified: Thu, 02 Nov 2017 21:06:22 GMT  
		Size: 55.8 MB (55758931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd1dc05f76f5a3b59cacc9ac9ff2f5cf2a55cda146d8d9b66ea66f8d3220013`  
		Last Modified: Thu, 02 Nov 2017 21:05:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50acafbdb7d414ca045978ee05e1cc4b93cd3bd23c07ac0bf836cbaafb150c14`  
		Last Modified: Thu, 02 Nov 2017 21:05:58 GMT  
		Size: 2.4 MB (2449713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d784346800715dda859000bb115f95882c7e7eec21499375d5695bda53668d`  
		Last Modified: Thu, 02 Nov 2017 21:06:25 GMT  
		Size: 76.7 MB (76714772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92b355db1bb9a5633c8f5ce919df92561c607d42daac2579fc492fc1472b5d2`  
		Last Modified: Thu, 02 Nov 2017 21:05:56 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:40736dd01223e982d27514baf61e23971d95bb63cdaf9b9ccd315eeaa61be1a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.3 MB (245311491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d72fc0a6bedf451a1b550f09e927c2b07380c4fa3392e7c55e353ff873b72d2`
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
# Thu, 02 Nov 2017 02:57:06 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 03:01:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 03:01:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 03:01:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 03:01:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 03:01:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 03:01:19 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 03:51:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 03:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 03:52:22 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 03:52:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 03:52:26 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 03:52:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 03:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 03:53:28 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 03:53:28 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 03:53:29 GMT
ENV REDMINE_VERSION=3.4.3
# Thu, 02 Nov 2017 03:53:29 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Thu, 02 Nov 2017 03:53:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 03:56:43 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 03:56:43 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 03:56:43 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 03:56:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 03:56:44 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 03:56:44 GMT
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
	-	`sha256:84aa44bb7bdc922a326cc3d4283c358d74b81603f34a191a8c659efb62be3229`  
		Last Modified: Thu, 02 Nov 2017 03:28:04 GMT  
		Size: 23.3 MB (23317920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd921aa0f6e7a21c42b1d48c08baa4009be0a495b85fbe03f5c629526f649613`  
		Last Modified: Thu, 02 Nov 2017 03:27:57 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8969fad36dd12b8dae055ef20f14baee93e002508c7e589460ae6401556d1217`  
		Last Modified: Thu, 02 Nov 2017 04:09:01 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784b2df47dd9f403da18fbe6bd45cd71bd58ae270b02e8d635c2556e164d836e`  
		Last Modified: Thu, 02 Nov 2017 04:09:06 GMT  
		Size: 14.8 MB (14817265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191142d59a5c4c458a2b06cbe7d5f371deed43ebea72d4d56117c4f49ac1cc1f`  
		Last Modified: Thu, 02 Nov 2017 04:09:01 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28704325ec2899e7a259148228dcc97bbb11079f5610457f7c0cc4e7d6a566`  
		Last Modified: Thu, 02 Nov 2017 04:09:01 GMT  
		Size: 8.6 KB (8560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a8c6422fdaf8d39de4ea8a28f0d90a59b4ad0fd8b36fe7bef5f01e3eb3581c`  
		Last Modified: Thu, 02 Nov 2017 04:09:22 GMT  
		Size: 60.1 MB (60106167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046e7a2f114dd69c881f8ffba1a4a11de1af61d81984b391b81afcd4cd30dfff`  
		Last Modified: Thu, 02 Nov 2017 04:09:01 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8805d0ee299dbe8393c1a1748d4714013f2b8fb494313094e262643f566dfa0e`  
		Last Modified: Thu, 02 Nov 2017 04:09:05 GMT  
		Size: 2.4 MB (2449720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4030bce301d123c29ea3027059dd5a42389137d751a3bf159294c08a84143d`  
		Last Modified: Thu, 02 Nov 2017 04:09:18 GMT  
		Size: 76.7 MB (76725586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e044d3d9a831d9b14e0e51a5553c3736257148f216e000c9e6fb00b1d721bd`  
		Last Modified: Thu, 02 Nov 2017 04:09:01 GMT  
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
$ docker pull redmine@sha256:ca412ea0315a7da04bbfb883cbec1a9174ff4236b1674be960b7eab5b2e2007c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244235683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2dc5545709e9bdca31d2361e04299f2fe5689ee35ae5b75cd24cf07376a5682`
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
# Thu, 02 Nov 2017 08:47:43 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 08:50:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 08:50:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 08:50:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 08:51:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 08:51:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 08:51:00 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 09:27:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 02 Nov 2017 09:27:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:27:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 09:27:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 09:27:39 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 02 Nov 2017 09:27:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 02 Nov 2017 09:28:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 09:28:16 GMT
ENV RAILS_ENV=production
# Thu, 02 Nov 2017 09:28:16 GMT
WORKDIR /usr/src/redmine
# Thu, 02 Nov 2017 09:28:17 GMT
ENV REDMINE_VERSION=3.4.3
# Thu, 02 Nov 2017 09:28:17 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Thu, 02 Nov 2017 09:28:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 02 Nov 2017 09:30:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 02 Nov 2017 09:30:46 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 02 Nov 2017 09:30:47 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 02 Nov 2017 09:30:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 09:30:47 GMT
EXPOSE 3000/tcp
# Thu, 02 Nov 2017 09:30:47 GMT
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
	-	`sha256:b14a71a6bbdccbb3f4c1bdb0d5b904fb5b463a24e4711ab018e0ae5f91da8919`  
		Last Modified: Thu, 02 Nov 2017 09:08:25 GMT  
		Size: 24.7 MB (24721390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160f7619101c1c4ff511f9cac33d244e669acfd9cfa8d882c91a88519e51f896`  
		Last Modified: Thu, 02 Nov 2017 09:08:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62015fe24dd9fd8fd16a65c5b86214800fcd71db7e9d799144fc38c6f11de54`  
		Last Modified: Thu, 02 Nov 2017 09:37:09 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbac9e0620970055635c8bdc8f6bfc790e4e54cea8eb2d3bb5007070ada39f03`  
		Last Modified: Thu, 02 Nov 2017 09:37:11 GMT  
		Size: 14.8 MB (14815049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb479d8676fb71d60d33a3f2e714ecd6fefcd06776defd40fc3c89ae025c2077`  
		Last Modified: Thu, 02 Nov 2017 09:37:08 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbd271270d24d0d9d3510944b5765e444ea455baf4eaaceb734eefa700bc334`  
		Last Modified: Thu, 02 Nov 2017 09:37:08 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf384a794d9cd92d2843557cfb59b5902dec07f2cd0c7e5b18ef972ec2897b38`  
		Last Modified: Thu, 02 Nov 2017 09:37:18 GMT  
		Size: 59.1 MB (59083065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affbd52fa20f31929fc20eacd28b5bd4f476bc0bb7cb56b7792237f962fdb558`  
		Last Modified: Thu, 02 Nov 2017 09:37:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1431a5a46ec701e487281c222dc3c3980a240a8e9690101504642efb0fbd2b`  
		Last Modified: Thu, 02 Nov 2017 09:37:08 GMT  
		Size: 2.4 MB (2449721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8199b08ec82862fd5ca922a4fcf42ece8138a9520e07a94ed225bd7b36f058`  
		Last Modified: Thu, 02 Nov 2017 09:37:28 GMT  
		Size: 79.9 MB (79917606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddd7c2ba3e19fc05a08ff74c4a7fd60a341eeedcebc3f2ae684483350d912ca`  
		Last Modified: Thu, 02 Nov 2017 09:37:07 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:3c5f9b9af397dd185fa4cee5b9b6fba3909fd07499a0e99237f71370bb7dc982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e711ce82e3d462d8c18725fc361fefb252dad5302ce56e734288789c7a01c5f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257975741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b6272050a8e5661676803b50275982b605c21907ad0eb49316889b604f7794`
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
# Wed, 25 Oct 2017 19:28:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:32:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:32:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:32:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:32:05 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:26:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:26:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:26:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:26:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:26:59 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:27:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:27:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:27:42 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:27:42 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:27:42 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 25 Oct 2017 20:27:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 25 Oct 2017 20:27:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:30:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:30:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 31 Oct 2017 22:54:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 31 Oct 2017 22:54:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 22:54:56 GMT
EXPOSE 3000/tcp
# Tue, 31 Oct 2017 22:54:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 31 Oct 2017 22:55:39 GMT
ENV PASSENGER_VERSION=5.1.11
# Tue, 31 Oct 2017 22:56:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 31 Oct 2017 22:56:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 31 Oct 2017 22:56:09 GMT
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
	-	`sha256:ffff09909504cacaac9201e21d25c040fb7633231abab154487c27a612e96ffb`  
		Last Modified: Wed, 25 Oct 2017 20:01:55 GMT  
		Size: 24.3 MB (24286429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76a1a06d36442283854b277110a464cf75abf772ad2206b46c8a0ebacb036ef`  
		Last Modified: Wed, 25 Oct 2017 20:01:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ab89d380eb560ef6f04376c1fa61c0ed332596b8c729d25f50ca0987918950`  
		Last Modified: Wed, 25 Oct 2017 20:41:08 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c314d67f5e43fbcc4a5cd4094c703b82b92d5436ddeea374415d266b20dd93`  
		Last Modified: Wed, 25 Oct 2017 20:41:11 GMT  
		Size: 14.7 MB (14650128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a2ef0d1820bff9d9fb3215c279ca13413d2cb602cf97e422d5bb1e63e782ed`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4f02c2d55a18d17690fd1dd1963eeb9ff48b7052b0bc33d87933e3eb9e155d`  
		Last Modified: Wed, 25 Oct 2017 20:41:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994674730999ddbc5323141ce35763ca117ac0a0f37e3902efdac0abe5f27d75`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 59.2 MB (59228463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db84569570f9a554474131f28eaaa862ce123e9abc2262fc8c256d33c7bd127`  
		Last Modified: Wed, 25 Oct 2017 20:41:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad28fb2271231fdbbb59ef9e14ca8db6c2362f5b285fd1b50b10c548b63583`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 2.4 MB (2449718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29652b55913f35e46dfe21cdab929b94ad8e741a426c60a7ed5fd7297def4d83`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 77.3 MB (77264642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db70bf677ac60c26a16b29d0128b6b991ce9f80e71a3178a4ad7f8fddc813d2`  
		Last Modified: Tue, 31 Oct 2017 22:58:43 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ba60cddfec1e6769a28105b48d88dc0330585ed530c8546d1d0e56c70033e2`  
		Last Modified: Tue, 31 Oct 2017 22:59:37 GMT  
		Size: 12.8 MB (12750092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561e7d8f880a7662d6efb27b74b090dffd5768eee6fd4bae8336000950630ab7`  
		Last Modified: Tue, 31 Oct 2017 22:59:35 GMT  
		Size: 4.1 MB (4075626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
