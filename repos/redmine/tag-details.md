<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3.1.6`](#redmine316)
-	[`redmine:3.1`](#redmine31)
-	[`redmine:3.1.6-passenger`](#redmine316-passenger)
-	[`redmine:3.1-passenger`](#redmine31-passenger)
-	[`redmine:3.2.3`](#redmine323)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.3-passenger`](#redmine323-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3.0`](#redmine330)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3`](#redmine3)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:3.3.0-passenger`](#redmine330-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3.1.6`

```console
$ docker pull redmine@sha256:f6f71af19e907f8f43bb0e165fdc23b5590f02fcb1ad598d32b9f31760f97c92
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238620674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edbd6c998d110f529651144773db5b56cee3b124743030d6f1b022b7b83a004b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:31:34 GMT
ENV REDMINE_VERSION=3.1.6
# Fri, 23 Sep 2016 23:31:34 GMT
ENV REDMINE_DOWNLOAD_MD5=ce846787e490ec5121b1c4b960a2a32b
# Fri, 23 Sep 2016 23:31:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 23 Sep 2016 23:34:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:34:10 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Sep 2016 23:34:11 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 23 Sep 2016 23:34:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:34:11 GMT
EXPOSE 3000/tcp
# Fri, 23 Sep 2016 23:34:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f309b2bffef5fe60a82c527262659071f02b7276437ee1961668f87e550c1ab8`  
		Last Modified: Sat, 24 Sep 2016 05:39:45 GMT  
		Size: 2.3 MB (2273967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf9d98da3aaecd542e6d65ba0eb26908a361ffa8587d6a1d2f396ef78320c9c`  
		Last Modified: Sat, 24 Sep 2016 05:40:08 GMT  
		Size: 67.9 MB (67866437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a38d972c8a8b6d96f177aead68c7fa6a59bf4b3ca278b955e49b39cb29d846`  
		Last Modified: Sat, 24 Sep 2016 05:39:43 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:f6f71af19e907f8f43bb0e165fdc23b5590f02fcb1ad598d32b9f31760f97c92
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238620674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edbd6c998d110f529651144773db5b56cee3b124743030d6f1b022b7b83a004b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:31:34 GMT
ENV REDMINE_VERSION=3.1.6
# Fri, 23 Sep 2016 23:31:34 GMT
ENV REDMINE_DOWNLOAD_MD5=ce846787e490ec5121b1c4b960a2a32b
# Fri, 23 Sep 2016 23:31:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 23 Sep 2016 23:34:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:34:10 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Sep 2016 23:34:11 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 23 Sep 2016 23:34:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:34:11 GMT
EXPOSE 3000/tcp
# Fri, 23 Sep 2016 23:34:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f309b2bffef5fe60a82c527262659071f02b7276437ee1961668f87e550c1ab8`  
		Last Modified: Sat, 24 Sep 2016 05:39:45 GMT  
		Size: 2.3 MB (2273967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf9d98da3aaecd542e6d65ba0eb26908a361ffa8587d6a1d2f396ef78320c9c`  
		Last Modified: Sat, 24 Sep 2016 05:40:08 GMT  
		Size: 67.9 MB (67866437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a38d972c8a8b6d96f177aead68c7fa6a59bf4b3ca278b955e49b39cb29d846`  
		Last Modified: Sat, 24 Sep 2016 05:39:43 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.6-passenger`

```console
$ docker pull redmine@sha256:7c43ef96afd9d02c02aa88685954e9702de56572b697eb2e35aa18a1cfe8c9e6
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.6-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270749621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc4cfa005b72bdd9de07384191eaa6fe1d8580b145a33c04e49414981d19699`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:31:34 GMT
ENV REDMINE_VERSION=3.1.6
# Fri, 23 Sep 2016 23:31:34 GMT
ENV REDMINE_DOWNLOAD_MD5=ce846787e490ec5121b1c4b960a2a32b
# Fri, 23 Sep 2016 23:31:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 23 Sep 2016 23:34:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:34:10 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Sep 2016 23:34:11 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 23 Sep 2016 23:34:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:34:11 GMT
EXPOSE 3000/tcp
# Fri, 23 Sep 2016 23:34:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 23 Sep 2016 23:34:12 GMT
ENV PASSENGER_VERSION=5.0.30
# Fri, 23 Sep 2016 23:34:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:34:30 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 23 Sep 2016 23:34:30 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f309b2bffef5fe60a82c527262659071f02b7276437ee1961668f87e550c1ab8`  
		Last Modified: Sat, 24 Sep 2016 05:39:45 GMT  
		Size: 2.3 MB (2273967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf9d98da3aaecd542e6d65ba0eb26908a361ffa8587d6a1d2f396ef78320c9c`  
		Last Modified: Sat, 24 Sep 2016 05:40:08 GMT  
		Size: 67.9 MB (67866437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a38d972c8a8b6d96f177aead68c7fa6a59bf4b3ca278b955e49b39cb29d846`  
		Last Modified: Sat, 24 Sep 2016 05:39:43 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a755e44b744311901f2251a877b5ee53289ce793505271f800455f807b7583`  
		Last Modified: Sat, 24 Sep 2016 05:40:44 GMT  
		Size: 21.7 MB (21710189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d93cd6d347d16710b1455a64f3e881596cf529b72d14496956667adc5b802d`  
		Last Modified: Sat, 24 Sep 2016 05:40:42 GMT  
		Size: 10.4 MB (10418758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:7c43ef96afd9d02c02aa88685954e9702de56572b697eb2e35aa18a1cfe8c9e6
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270749621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc4cfa005b72bdd9de07384191eaa6fe1d8580b145a33c04e49414981d19699`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:31:34 GMT
ENV REDMINE_VERSION=3.1.6
# Fri, 23 Sep 2016 23:31:34 GMT
ENV REDMINE_DOWNLOAD_MD5=ce846787e490ec5121b1c4b960a2a32b
# Fri, 23 Sep 2016 23:31:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 23 Sep 2016 23:34:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:34:10 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Sep 2016 23:34:11 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 23 Sep 2016 23:34:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:34:11 GMT
EXPOSE 3000/tcp
# Fri, 23 Sep 2016 23:34:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 23 Sep 2016 23:34:12 GMT
ENV PASSENGER_VERSION=5.0.30
# Fri, 23 Sep 2016 23:34:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:34:30 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 23 Sep 2016 23:34:30 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f309b2bffef5fe60a82c527262659071f02b7276437ee1961668f87e550c1ab8`  
		Last Modified: Sat, 24 Sep 2016 05:39:45 GMT  
		Size: 2.3 MB (2273967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf9d98da3aaecd542e6d65ba0eb26908a361ffa8587d6a1d2f396ef78320c9c`  
		Last Modified: Sat, 24 Sep 2016 05:40:08 GMT  
		Size: 67.9 MB (67866437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a38d972c8a8b6d96f177aead68c7fa6a59bf4b3ca278b955e49b39cb29d846`  
		Last Modified: Sat, 24 Sep 2016 05:39:43 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a755e44b744311901f2251a877b5ee53289ce793505271f800455f807b7583`  
		Last Modified: Sat, 24 Sep 2016 05:40:44 GMT  
		Size: 21.7 MB (21710189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d93cd6d347d16710b1455a64f3e881596cf529b72d14496956667adc5b802d`  
		Last Modified: Sat, 24 Sep 2016 05:40:42 GMT  
		Size: 10.4 MB (10418758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.3`

```console
$ docker pull redmine@sha256:cb1d264380895b69a991a6f65489f58389c5e9508fc35a00ba093e1c306e31e6
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247288454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed63fc99a397a5d05e0e15756ac8abb4c8e193e94209892209b8a8c7c43db065`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:34:31 GMT
ENV REDMINE_VERSION=3.2.3
# Fri, 23 Sep 2016 23:34:31 GMT
ENV REDMINE_DOWNLOAD_MD5=46178231093ed8a90e9d9b6c1e7d42b6
# Fri, 23 Sep 2016 23:34:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 23 Sep 2016 23:36:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:36:55 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Sep 2016 23:36:55 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 23 Sep 2016 23:36:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:36:56 GMT
EXPOSE 3000/tcp
# Fri, 23 Sep 2016 23:36:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06dc07d8c128f9cd882f20ab3920d9f26bdbc231676e2522f879e282b55044b`  
		Last Modified: Sat, 24 Sep 2016 05:41:12 GMT  
		Size: 2.3 MB (2330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca08a943dbdde658ce873572f7f8d2fd5a57f4cf070c9e3e14b2d68267423437`  
		Last Modified: Sat, 24 Sep 2016 05:41:28 GMT  
		Size: 76.5 MB (76477509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2bf4374d6bd3f6cf77d885f56fa5c9d69cae544079445d47dd5bfef76dd753`  
		Last Modified: Sat, 24 Sep 2016 05:41:12 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:cb1d264380895b69a991a6f65489f58389c5e9508fc35a00ba093e1c306e31e6
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247288454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed63fc99a397a5d05e0e15756ac8abb4c8e193e94209892209b8a8c7c43db065`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:34:31 GMT
ENV REDMINE_VERSION=3.2.3
# Fri, 23 Sep 2016 23:34:31 GMT
ENV REDMINE_DOWNLOAD_MD5=46178231093ed8a90e9d9b6c1e7d42b6
# Fri, 23 Sep 2016 23:34:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 23 Sep 2016 23:36:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:36:55 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Sep 2016 23:36:55 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 23 Sep 2016 23:36:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:36:56 GMT
EXPOSE 3000/tcp
# Fri, 23 Sep 2016 23:36:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06dc07d8c128f9cd882f20ab3920d9f26bdbc231676e2522f879e282b55044b`  
		Last Modified: Sat, 24 Sep 2016 05:41:12 GMT  
		Size: 2.3 MB (2330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca08a943dbdde658ce873572f7f8d2fd5a57f4cf070c9e3e14b2d68267423437`  
		Last Modified: Sat, 24 Sep 2016 05:41:28 GMT  
		Size: 76.5 MB (76477509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2bf4374d6bd3f6cf77d885f56fa5c9d69cae544079445d47dd5bfef76dd753`  
		Last Modified: Sat, 24 Sep 2016 05:41:12 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.3-passenger`

```console
$ docker pull redmine@sha256:4009836c826a01946aa9799fc78257341ad8215c2a7d47123741af057b2a575e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.3-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279417070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af81eb2c23d9a770ae1cba43cf17d8659bc9c546ef08597e2b9d526e49c61ad6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:34:31 GMT
ENV REDMINE_VERSION=3.2.3
# Fri, 23 Sep 2016 23:34:31 GMT
ENV REDMINE_DOWNLOAD_MD5=46178231093ed8a90e9d9b6c1e7d42b6
# Fri, 23 Sep 2016 23:34:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 23 Sep 2016 23:36:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:36:55 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Sep 2016 23:36:55 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 23 Sep 2016 23:36:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:36:56 GMT
EXPOSE 3000/tcp
# Fri, 23 Sep 2016 23:36:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 23 Sep 2016 23:36:57 GMT
ENV PASSENGER_VERSION=5.0.30
# Fri, 23 Sep 2016 23:37:12 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:37:13 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 23 Sep 2016 23:37:14 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06dc07d8c128f9cd882f20ab3920d9f26bdbc231676e2522f879e282b55044b`  
		Last Modified: Sat, 24 Sep 2016 05:41:12 GMT  
		Size: 2.3 MB (2330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca08a943dbdde658ce873572f7f8d2fd5a57f4cf070c9e3e14b2d68267423437`  
		Last Modified: Sat, 24 Sep 2016 05:41:28 GMT  
		Size: 76.5 MB (76477509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2bf4374d6bd3f6cf77d885f56fa5c9d69cae544079445d47dd5bfef76dd753`  
		Last Modified: Sat, 24 Sep 2016 05:41:12 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc9fafdd3bc828501a842f0d71d892fd8ed8a0534ed1fcadfa2ca04b987bd5d`  
		Last Modified: Sat, 24 Sep 2016 05:42:02 GMT  
		Size: 21.7 MB (21709867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d61d6b888dcac9ca69edcb7ed31949146d549022581f2b051dd0a8dc3e6581d`  
		Last Modified: Sat, 24 Sep 2016 05:41:58 GMT  
		Size: 10.4 MB (10418749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:4009836c826a01946aa9799fc78257341ad8215c2a7d47123741af057b2a575e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279417070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af81eb2c23d9a770ae1cba43cf17d8659bc9c546ef08597e2b9d526e49c61ad6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:34:31 GMT
ENV REDMINE_VERSION=3.2.3
# Fri, 23 Sep 2016 23:34:31 GMT
ENV REDMINE_DOWNLOAD_MD5=46178231093ed8a90e9d9b6c1e7d42b6
# Fri, 23 Sep 2016 23:34:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 23 Sep 2016 23:36:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:36:55 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Sep 2016 23:36:55 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 23 Sep 2016 23:36:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:36:56 GMT
EXPOSE 3000/tcp
# Fri, 23 Sep 2016 23:36:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 23 Sep 2016 23:36:57 GMT
ENV PASSENGER_VERSION=5.0.30
# Fri, 23 Sep 2016 23:37:12 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:37:13 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 23 Sep 2016 23:37:14 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06dc07d8c128f9cd882f20ab3920d9f26bdbc231676e2522f879e282b55044b`  
		Last Modified: Sat, 24 Sep 2016 05:41:12 GMT  
		Size: 2.3 MB (2330674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca08a943dbdde658ce873572f7f8d2fd5a57f4cf070c9e3e14b2d68267423437`  
		Last Modified: Sat, 24 Sep 2016 05:41:28 GMT  
		Size: 76.5 MB (76477509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2bf4374d6bd3f6cf77d885f56fa5c9d69cae544079445d47dd5bfef76dd753`  
		Last Modified: Sat, 24 Sep 2016 05:41:12 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc9fafdd3bc828501a842f0d71d892fd8ed8a0534ed1fcadfa2ca04b987bd5d`  
		Last Modified: Sat, 24 Sep 2016 05:42:02 GMT  
		Size: 21.7 MB (21709867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d61d6b888dcac9ca69edcb7ed31949146d549022581f2b051dd0a8dc3e6581d`  
		Last Modified: Sat, 24 Sep 2016 05:41:58 GMT  
		Size: 10.4 MB (10418749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.0`

```console
$ docker pull redmine@sha256:bacd9a570e9cc389fe3ab4671377b4498cfcf75f40b14eb3a3b49119aa080ff4
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247331586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8415d47dc1780260e76a9f3c346cb99804e30ea52d7ba2cd806fadf205c60b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:37:14 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 23 Sep 2016 23:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 23 Sep 2016 23:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 24 Sep 2016 05:37:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:37:09 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 24 Sep 2016 05:37:10 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Sat, 24 Sep 2016 05:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 05:37:11 GMT
EXPOSE 3000/tcp
# Sat, 24 Sep 2016 05:37:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230cbc3e1a4ee1edce2f74074a1bbec3c5aded15b658324063c297bab25bbd04`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 2.4 MB (2370093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1239de192a28e7a93d89cb0dfce59973689ef5ee4b5ae5a63da052e4bde883`  
		Last Modified: Sat, 24 Sep 2016 05:37:36 GMT  
		Size: 76.5 MB (76481224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3653ae21627fc1e8616b3f0a479be8b1ad6c0845f75f8f741958f81664274dd7`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:bacd9a570e9cc389fe3ab4671377b4498cfcf75f40b14eb3a3b49119aa080ff4
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247331586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8415d47dc1780260e76a9f3c346cb99804e30ea52d7ba2cd806fadf205c60b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:37:14 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 23 Sep 2016 23:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 23 Sep 2016 23:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 24 Sep 2016 05:37:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:37:09 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 24 Sep 2016 05:37:10 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Sat, 24 Sep 2016 05:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 05:37:11 GMT
EXPOSE 3000/tcp
# Sat, 24 Sep 2016 05:37:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230cbc3e1a4ee1edce2f74074a1bbec3c5aded15b658324063c297bab25bbd04`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 2.4 MB (2370093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1239de192a28e7a93d89cb0dfce59973689ef5ee4b5ae5a63da052e4bde883`  
		Last Modified: Sat, 24 Sep 2016 05:37:36 GMT  
		Size: 76.5 MB (76481224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3653ae21627fc1e8616b3f0a479be8b1ad6c0845f75f8f741958f81664274dd7`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:bacd9a570e9cc389fe3ab4671377b4498cfcf75f40b14eb3a3b49119aa080ff4
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247331586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8415d47dc1780260e76a9f3c346cb99804e30ea52d7ba2cd806fadf205c60b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:37:14 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 23 Sep 2016 23:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 23 Sep 2016 23:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 24 Sep 2016 05:37:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:37:09 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 24 Sep 2016 05:37:10 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Sat, 24 Sep 2016 05:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 05:37:11 GMT
EXPOSE 3000/tcp
# Sat, 24 Sep 2016 05:37:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230cbc3e1a4ee1edce2f74074a1bbec3c5aded15b658324063c297bab25bbd04`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 2.4 MB (2370093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1239de192a28e7a93d89cb0dfce59973689ef5ee4b5ae5a63da052e4bde883`  
		Last Modified: Sat, 24 Sep 2016 05:37:36 GMT  
		Size: 76.5 MB (76481224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3653ae21627fc1e8616b3f0a479be8b1ad6c0845f75f8f741958f81664274dd7`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:bacd9a570e9cc389fe3ab4671377b4498cfcf75f40b14eb3a3b49119aa080ff4
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247331586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8415d47dc1780260e76a9f3c346cb99804e30ea52d7ba2cd806fadf205c60b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:37:14 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 23 Sep 2016 23:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 23 Sep 2016 23:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 24 Sep 2016 05:37:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:37:09 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 24 Sep 2016 05:37:10 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Sat, 24 Sep 2016 05:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 05:37:11 GMT
EXPOSE 3000/tcp
# Sat, 24 Sep 2016 05:37:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230cbc3e1a4ee1edce2f74074a1bbec3c5aded15b658324063c297bab25bbd04`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 2.4 MB (2370093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1239de192a28e7a93d89cb0dfce59973689ef5ee4b5ae5a63da052e4bde883`  
		Last Modified: Sat, 24 Sep 2016 05:37:36 GMT  
		Size: 76.5 MB (76481224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3653ae21627fc1e8616b3f0a479be8b1ad6c0845f75f8f741958f81664274dd7`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.0-passenger`

```console
$ docker pull redmine@sha256:02dd8c0baf1b87b60f56f95251971b57949cc4919911af52c99a76428ab8b922
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.0-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279460383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53c2dc0fa218a98bb73b5575c061fb5f127927b1cdd0f03d3cf5ef00313c787`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:37:14 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 23 Sep 2016 23:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 23 Sep 2016 23:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 24 Sep 2016 05:37:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:37:09 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 24 Sep 2016 05:37:10 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Sat, 24 Sep 2016 05:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 05:37:11 GMT
EXPOSE 3000/tcp
# Sat, 24 Sep 2016 05:37:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 24 Sep 2016 05:38:21 GMT
ENV PASSENGER_VERSION=5.0.30
# Sat, 24 Sep 2016 05:38:36 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:38:37 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Sat, 24 Sep 2016 05:38:38 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230cbc3e1a4ee1edce2f74074a1bbec3c5aded15b658324063c297bab25bbd04`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 2.4 MB (2370093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1239de192a28e7a93d89cb0dfce59973689ef5ee4b5ae5a63da052e4bde883`  
		Last Modified: Sat, 24 Sep 2016 05:37:36 GMT  
		Size: 76.5 MB (76481224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3653ae21627fc1e8616b3f0a479be8b1ad6c0845f75f8f741958f81664274dd7`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9add483e7c69e271885d7ee1c91401851a767645bde001b5ef2153a46582fd5b`  
		Last Modified: Sat, 24 Sep 2016 05:38:50 GMT  
		Size: 21.7 MB (21710045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf772dbad9c80ae4fb4b6c4cdc60313292a1ea24be7894dcf875c1928ca9a81`  
		Last Modified: Sat, 24 Sep 2016 05:38:50 GMT  
		Size: 10.4 MB (10418752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:02dd8c0baf1b87b60f56f95251971b57949cc4919911af52c99a76428ab8b922
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279460383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53c2dc0fa218a98bb73b5575c061fb5f127927b1cdd0f03d3cf5ef00313c787`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:37:14 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 23 Sep 2016 23:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 23 Sep 2016 23:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 24 Sep 2016 05:37:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:37:09 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 24 Sep 2016 05:37:10 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Sat, 24 Sep 2016 05:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 05:37:11 GMT
EXPOSE 3000/tcp
# Sat, 24 Sep 2016 05:37:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 24 Sep 2016 05:38:21 GMT
ENV PASSENGER_VERSION=5.0.30
# Sat, 24 Sep 2016 05:38:36 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:38:37 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Sat, 24 Sep 2016 05:38:38 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230cbc3e1a4ee1edce2f74074a1bbec3c5aded15b658324063c297bab25bbd04`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 2.4 MB (2370093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1239de192a28e7a93d89cb0dfce59973689ef5ee4b5ae5a63da052e4bde883`  
		Last Modified: Sat, 24 Sep 2016 05:37:36 GMT  
		Size: 76.5 MB (76481224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3653ae21627fc1e8616b3f0a479be8b1ad6c0845f75f8f741958f81664274dd7`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9add483e7c69e271885d7ee1c91401851a767645bde001b5ef2153a46582fd5b`  
		Last Modified: Sat, 24 Sep 2016 05:38:50 GMT  
		Size: 21.7 MB (21710045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf772dbad9c80ae4fb4b6c4cdc60313292a1ea24be7894dcf875c1928ca9a81`  
		Last Modified: Sat, 24 Sep 2016 05:38:50 GMT  
		Size: 10.4 MB (10418752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:02dd8c0baf1b87b60f56f95251971b57949cc4919911af52c99a76428ab8b922
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279460383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53c2dc0fa218a98bb73b5575c061fb5f127927b1cdd0f03d3cf5ef00313c787`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:37:14 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 23 Sep 2016 23:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 23 Sep 2016 23:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 24 Sep 2016 05:37:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:37:09 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 24 Sep 2016 05:37:10 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Sat, 24 Sep 2016 05:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 05:37:11 GMT
EXPOSE 3000/tcp
# Sat, 24 Sep 2016 05:37:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 24 Sep 2016 05:38:21 GMT
ENV PASSENGER_VERSION=5.0.30
# Sat, 24 Sep 2016 05:38:36 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:38:37 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Sat, 24 Sep 2016 05:38:38 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230cbc3e1a4ee1edce2f74074a1bbec3c5aded15b658324063c297bab25bbd04`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 2.4 MB (2370093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1239de192a28e7a93d89cb0dfce59973689ef5ee4b5ae5a63da052e4bde883`  
		Last Modified: Sat, 24 Sep 2016 05:37:36 GMT  
		Size: 76.5 MB (76481224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3653ae21627fc1e8616b3f0a479be8b1ad6c0845f75f8f741958f81664274dd7`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9add483e7c69e271885d7ee1c91401851a767645bde001b5ef2153a46582fd5b`  
		Last Modified: Sat, 24 Sep 2016 05:38:50 GMT  
		Size: 21.7 MB (21710045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf772dbad9c80ae4fb4b6c4cdc60313292a1ea24be7894dcf875c1928ca9a81`  
		Last Modified: Sat, 24 Sep 2016 05:38:50 GMT  
		Size: 10.4 MB (10418752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:02dd8c0baf1b87b60f56f95251971b57949cc4919911af52c99a76428ab8b922
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279460383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53c2dc0fa218a98bb73b5575c061fb5f127927b1cdd0f03d3cf5ef00313c787`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:37:14 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 23 Sep 2016 23:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 23 Sep 2016 23:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 24 Sep 2016 05:37:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:37:09 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 24 Sep 2016 05:37:10 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Sat, 24 Sep 2016 05:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 05:37:11 GMT
EXPOSE 3000/tcp
# Sat, 24 Sep 2016 05:37:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 24 Sep 2016 05:38:21 GMT
ENV PASSENGER_VERSION=5.0.30
# Sat, 24 Sep 2016 05:38:36 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:38:37 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Sat, 24 Sep 2016 05:38:38 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230cbc3e1a4ee1edce2f74074a1bbec3c5aded15b658324063c297bab25bbd04`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 2.4 MB (2370093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1239de192a28e7a93d89cb0dfce59973689ef5ee4b5ae5a63da052e4bde883`  
		Last Modified: Sat, 24 Sep 2016 05:37:36 GMT  
		Size: 76.5 MB (76481224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3653ae21627fc1e8616b3f0a479be8b1ad6c0845f75f8f741958f81664274dd7`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9add483e7c69e271885d7ee1c91401851a767645bde001b5ef2153a46582fd5b`  
		Last Modified: Sat, 24 Sep 2016 05:38:50 GMT  
		Size: 21.7 MB (21710045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf772dbad9c80ae4fb4b6c4cdc60313292a1ea24be7894dcf875c1928ca9a81`  
		Last Modified: Sat, 24 Sep 2016 05:38:50 GMT  
		Size: 10.4 MB (10418752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
