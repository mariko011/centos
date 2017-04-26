<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3.1.7`](#redmine317)
-	[`redmine:3.1`](#redmine31)
-	[`redmine:3.1.7-passenger`](#redmine317-passenger)
-	[`redmine:3.1-passenger`](#redmine31-passenger)
-	[`redmine:3.2.6`](#redmine326)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.6-passenger`](#redmine326-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3.3`](#redmine333)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3`](#redmine3)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:3.3.3-passenger`](#redmine333-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:d935bb12f3ce64d60f94094a23180cc15c6f07cf624c3d0395ec23cf3360b1c6
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240921144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0a5d8d4b901dcfa215271288ab457c023715b6a00b9752c4029edb8044edb2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:14:03 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 25 Apr 2017 14:14:03 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 25 Apr 2017 14:14:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:16:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:16:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:16:53 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:16:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:16:54 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:17:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16959459fb38b27e245540a78845d2326f6a0f15331504947c6248b9e0ce5967`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 2.3 MB (2281374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae8ce20e543fba555f5731c58d81b48a883374686a47b55af3f8c74c305bee5`  
		Last Modified: Wed, 26 Apr 2017 00:06:26 GMT  
		Size: 67.0 MB (67046349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2075b913a4f56e4df4b9566727d3f0c5da980a91242150598fbc40292ec478ad`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:d935bb12f3ce64d60f94094a23180cc15c6f07cf624c3d0395ec23cf3360b1c6
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240921144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0a5d8d4b901dcfa215271288ab457c023715b6a00b9752c4029edb8044edb2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:14:03 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 25 Apr 2017 14:14:03 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 25 Apr 2017 14:14:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:16:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:16:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:16:53 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:16:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:16:54 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:17:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16959459fb38b27e245540a78845d2326f6a0f15331504947c6248b9e0ce5967`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 2.3 MB (2281374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae8ce20e543fba555f5731c58d81b48a883374686a47b55af3f8c74c305bee5`  
		Last Modified: Wed, 26 Apr 2017 00:06:26 GMT  
		Size: 67.0 MB (67046349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2075b913a4f56e4df4b9566727d3f0c5da980a91242150598fbc40292ec478ad`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:701233daa7aafb62454432e3a05e0e5f51e6d72194e65a93df403e79ef7600ed
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.7 MB (260652329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e85c30d043c5119461a2ec0660f7a8031599ed1c53a76a8082e0e301ef8a6b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:14:03 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 25 Apr 2017 14:14:03 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 25 Apr 2017 14:14:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:16:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:16:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:16:53 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:16:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:16:54 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:17:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 25 Apr 2017 14:17:45 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 25 Apr 2017 14:18:03 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:18:07 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 25 Apr 2017 14:18:08 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16959459fb38b27e245540a78845d2326f6a0f15331504947c6248b9e0ce5967`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 2.3 MB (2281374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae8ce20e543fba555f5731c58d81b48a883374686a47b55af3f8c74c305bee5`  
		Last Modified: Wed, 26 Apr 2017 00:06:26 GMT  
		Size: 67.0 MB (67046349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2075b913a4f56e4df4b9566727d3f0c5da980a91242150598fbc40292ec478ad`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4be35cd96612dc2b9c823c33573a6615805a68b83b6e844e0e18dc4f0dac10`  
		Last Modified: Wed, 26 Apr 2017 00:07:19 GMT  
		Size: 15.5 MB (15541873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe2dc623d6571a9c1fc5f4b4aa8a46554ad46f1da53ededd3cf8612423e812d`  
		Last Modified: Wed, 26 Apr 2017 00:07:14 GMT  
		Size: 4.2 MB (4189312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:701233daa7aafb62454432e3a05e0e5f51e6d72194e65a93df403e79ef7600ed
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.7 MB (260652329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e85c30d043c5119461a2ec0660f7a8031599ed1c53a76a8082e0e301ef8a6b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:14:03 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 25 Apr 2017 14:14:03 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 25 Apr 2017 14:14:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:16:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:16:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:16:53 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:16:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:16:54 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:17:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 25 Apr 2017 14:17:45 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 25 Apr 2017 14:18:03 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:18:07 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 25 Apr 2017 14:18:08 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16959459fb38b27e245540a78845d2326f6a0f15331504947c6248b9e0ce5967`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 2.3 MB (2281374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae8ce20e543fba555f5731c58d81b48a883374686a47b55af3f8c74c305bee5`  
		Last Modified: Wed, 26 Apr 2017 00:06:26 GMT  
		Size: 67.0 MB (67046349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2075b913a4f56e4df4b9566727d3f0c5da980a91242150598fbc40292ec478ad`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4be35cd96612dc2b9c823c33573a6615805a68b83b6e844e0e18dc4f0dac10`  
		Last Modified: Wed, 26 Apr 2017 00:07:19 GMT  
		Size: 15.5 MB (15541873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe2dc623d6571a9c1fc5f4b4aa8a46554ad46f1da53ededd3cf8612423e812d`  
		Last Modified: Wed, 26 Apr 2017 00:07:14 GMT  
		Size: 4.2 MB (4189312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.6`

```console
$ docker pull redmine@sha256:ba658dbc57ce2d76eccfafcc0cd86def558ee9d67759a7100e43f9d70c1282d3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250251196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a536148c946cd6f6e51d563e01fa5ff27153e9fe405da9ef9567c090eef6283`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:18:58 GMT
ENV REDMINE_VERSION=3.2.6
# Tue, 25 Apr 2017 14:18:59 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Tue, 25 Apr 2017 14:19:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:21:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:21:55 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:21:56 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:21:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:22:14 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:22:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6096d56dca81be54530163c32fc2e17cb81a90dcec25ebb2a067838e9a45f7fc`  
		Last Modified: Wed, 26 Apr 2017 00:08:04 GMT  
		Size: 2.3 MB (2345888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fcfe0f463c307b8c619acf1d0533e71ef0f7bfdf39b1b9000cec5d3db11b2f`  
		Last Modified: Wed, 26 Apr 2017 00:08:17 GMT  
		Size: 76.3 MB (76311887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc7bac26f56e017b050c1622e24eb9ed9bd285eb501a3aaba65e45bbfaeff1c`  
		Last Modified: Wed, 26 Apr 2017 00:08:02 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:ba658dbc57ce2d76eccfafcc0cd86def558ee9d67759a7100e43f9d70c1282d3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250251196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a536148c946cd6f6e51d563e01fa5ff27153e9fe405da9ef9567c090eef6283`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:18:58 GMT
ENV REDMINE_VERSION=3.2.6
# Tue, 25 Apr 2017 14:18:59 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Tue, 25 Apr 2017 14:19:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:21:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:21:55 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:21:56 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:21:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:22:14 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:22:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6096d56dca81be54530163c32fc2e17cb81a90dcec25ebb2a067838e9a45f7fc`  
		Last Modified: Wed, 26 Apr 2017 00:08:04 GMT  
		Size: 2.3 MB (2345888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fcfe0f463c307b8c619acf1d0533e71ef0f7bfdf39b1b9000cec5d3db11b2f`  
		Last Modified: Wed, 26 Apr 2017 00:08:17 GMT  
		Size: 76.3 MB (76311887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc7bac26f56e017b050c1622e24eb9ed9bd285eb501a3aaba65e45bbfaeff1c`  
		Last Modified: Wed, 26 Apr 2017 00:08:02 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.6-passenger`

```console
$ docker pull redmine@sha256:87a26fa571a8dab1ca7c3440765e361a298ef398317247668e5b9128b66c33f5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.6-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (269982342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e5eb6e4142d94e1242108d8a0357525f8e91682e4a740e64ae50e5f7011f54`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:18:58 GMT
ENV REDMINE_VERSION=3.2.6
# Tue, 25 Apr 2017 14:18:59 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Tue, 25 Apr 2017 14:19:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:21:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:21:55 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:21:56 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:21:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:22:14 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:22:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 25 Apr 2017 14:22:49 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 25 Apr 2017 14:23:05 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:23:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 25 Apr 2017 14:23:23 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6096d56dca81be54530163c32fc2e17cb81a90dcec25ebb2a067838e9a45f7fc`  
		Last Modified: Wed, 26 Apr 2017 00:08:04 GMT  
		Size: 2.3 MB (2345888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fcfe0f463c307b8c619acf1d0533e71ef0f7bfdf39b1b9000cec5d3db11b2f`  
		Last Modified: Wed, 26 Apr 2017 00:08:17 GMT  
		Size: 76.3 MB (76311887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc7bac26f56e017b050c1622e24eb9ed9bd285eb501a3aaba65e45bbfaeff1c`  
		Last Modified: Wed, 26 Apr 2017 00:08:02 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f26ca5c5c75b9c12a8e5f09a54878b008c016c755e7e6e21b9d1099950d176`  
		Last Modified: Wed, 26 Apr 2017 00:09:07 GMT  
		Size: 15.5 MB (15541833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddc78a26e14336094caaffcec5b216d391597fb82118b59f5ceb6debe55af96`  
		Last Modified: Wed, 26 Apr 2017 00:09:03 GMT  
		Size: 4.2 MB (4189313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:87a26fa571a8dab1ca7c3440765e361a298ef398317247668e5b9128b66c33f5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (269982342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e5eb6e4142d94e1242108d8a0357525f8e91682e4a740e64ae50e5f7011f54`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:18:58 GMT
ENV REDMINE_VERSION=3.2.6
# Tue, 25 Apr 2017 14:18:59 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Tue, 25 Apr 2017 14:19:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:21:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:21:55 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:21:56 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:21:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:22:14 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:22:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 25 Apr 2017 14:22:49 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 25 Apr 2017 14:23:05 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:23:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 25 Apr 2017 14:23:23 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6096d56dca81be54530163c32fc2e17cb81a90dcec25ebb2a067838e9a45f7fc`  
		Last Modified: Wed, 26 Apr 2017 00:08:04 GMT  
		Size: 2.3 MB (2345888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fcfe0f463c307b8c619acf1d0533e71ef0f7bfdf39b1b9000cec5d3db11b2f`  
		Last Modified: Wed, 26 Apr 2017 00:08:17 GMT  
		Size: 76.3 MB (76311887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc7bac26f56e017b050c1622e24eb9ed9bd285eb501a3aaba65e45bbfaeff1c`  
		Last Modified: Wed, 26 Apr 2017 00:08:02 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f26ca5c5c75b9c12a8e5f09a54878b008c016c755e7e6e21b9d1099950d176`  
		Last Modified: Wed, 26 Apr 2017 00:09:07 GMT  
		Size: 15.5 MB (15541833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddc78a26e14336094caaffcec5b216d391597fb82118b59f5ceb6debe55af96`  
		Last Modified: Wed, 26 Apr 2017 00:09:03 GMT  
		Size: 4.2 MB (4189313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.3`

```console
$ docker pull redmine@sha256:6968122d36db366606aeafa23ac45a6ed3a3ae78cfe8fdbaa960aca2823409da
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250293890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f946a45859ad7e68916e6afd3fdb4c284c1899f779a5ce5eb7bb13769efa0c6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:08:55 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 25 Apr 2017 14:08:56 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 25 Apr 2017 14:09:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:12:12 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:12:13 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:12:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:12:14 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:12:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad9af0afaf6a686fadf0fd313bd14b6920bdc3cda87e50f66231372a221be08`  
		Last Modified: Wed, 26 Apr 2017 00:09:54 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7d29972cd2f95f5fa829c1639015d9c0234eb1fb041a945cbdd7cbc5bd4687`  
		Last Modified: Wed, 26 Apr 2017 00:10:08 GMT  
		Size: 76.3 MB (76312162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6b1ab69b95ee586184f2049f5c5ebf2551f2fa526f59f69ee1f857c29124d4`  
		Last Modified: Wed, 26 Apr 2017 00:09:50 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:6968122d36db366606aeafa23ac45a6ed3a3ae78cfe8fdbaa960aca2823409da
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250293890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f946a45859ad7e68916e6afd3fdb4c284c1899f779a5ce5eb7bb13769efa0c6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:08:55 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 25 Apr 2017 14:08:56 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 25 Apr 2017 14:09:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:12:12 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:12:13 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:12:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:12:14 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:12:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad9af0afaf6a686fadf0fd313bd14b6920bdc3cda87e50f66231372a221be08`  
		Last Modified: Wed, 26 Apr 2017 00:09:54 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7d29972cd2f95f5fa829c1639015d9c0234eb1fb041a945cbdd7cbc5bd4687`  
		Last Modified: Wed, 26 Apr 2017 00:10:08 GMT  
		Size: 76.3 MB (76312162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6b1ab69b95ee586184f2049f5c5ebf2551f2fa526f59f69ee1f857c29124d4`  
		Last Modified: Wed, 26 Apr 2017 00:09:50 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:6968122d36db366606aeafa23ac45a6ed3a3ae78cfe8fdbaa960aca2823409da
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250293890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f946a45859ad7e68916e6afd3fdb4c284c1899f779a5ce5eb7bb13769efa0c6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:08:55 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 25 Apr 2017 14:08:56 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 25 Apr 2017 14:09:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:12:12 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:12:13 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:12:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:12:14 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:12:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad9af0afaf6a686fadf0fd313bd14b6920bdc3cda87e50f66231372a221be08`  
		Last Modified: Wed, 26 Apr 2017 00:09:54 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7d29972cd2f95f5fa829c1639015d9c0234eb1fb041a945cbdd7cbc5bd4687`  
		Last Modified: Wed, 26 Apr 2017 00:10:08 GMT  
		Size: 76.3 MB (76312162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6b1ab69b95ee586184f2049f5c5ebf2551f2fa526f59f69ee1f857c29124d4`  
		Last Modified: Wed, 26 Apr 2017 00:09:50 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:6968122d36db366606aeafa23ac45a6ed3a3ae78cfe8fdbaa960aca2823409da
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250293890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f946a45859ad7e68916e6afd3fdb4c284c1899f779a5ce5eb7bb13769efa0c6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:08:55 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 25 Apr 2017 14:08:56 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 25 Apr 2017 14:09:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:12:12 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:12:13 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:12:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:12:14 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:12:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad9af0afaf6a686fadf0fd313bd14b6920bdc3cda87e50f66231372a221be08`  
		Last Modified: Wed, 26 Apr 2017 00:09:54 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7d29972cd2f95f5fa829c1639015d9c0234eb1fb041a945cbdd7cbc5bd4687`  
		Last Modified: Wed, 26 Apr 2017 00:10:08 GMT  
		Size: 76.3 MB (76312162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6b1ab69b95ee586184f2049f5c5ebf2551f2fa526f59f69ee1f857c29124d4`  
		Last Modified: Wed, 26 Apr 2017 00:09:50 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.3-passenger`

```console
$ docker pull redmine@sha256:996ae80da7534920f654e04c4ce32df7c9352c1d18f2543df9ca71a1670fda6e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.3-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270025070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6584e673fdd3a10e6073272b3d28b91f89112d01318f4437a96429c5a888b178`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:08:55 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 25 Apr 2017 14:08:56 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 25 Apr 2017 14:09:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:12:12 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:12:13 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:12:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:12:14 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:12:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 25 Apr 2017 14:12:49 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 25 Apr 2017 14:13:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:13:12 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 25 Apr 2017 14:13:12 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad9af0afaf6a686fadf0fd313bd14b6920bdc3cda87e50f66231372a221be08`  
		Last Modified: Wed, 26 Apr 2017 00:09:54 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7d29972cd2f95f5fa829c1639015d9c0234eb1fb041a945cbdd7cbc5bd4687`  
		Last Modified: Wed, 26 Apr 2017 00:10:08 GMT  
		Size: 76.3 MB (76312162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6b1ab69b95ee586184f2049f5c5ebf2551f2fa526f59f69ee1f857c29124d4`  
		Last Modified: Wed, 26 Apr 2017 00:09:50 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850f5937cb2d244493e54c87a16db93ca9ce295d229abc2dd68113c8f854cf64`  
		Last Modified: Wed, 26 Apr 2017 00:11:36 GMT  
		Size: 15.5 MB (15541862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704cf7ee61b29548f6b70365ed405b7bcc072fdc3638b25d9c8c75bffa6c0012`  
		Last Modified: Wed, 26 Apr 2017 00:11:31 GMT  
		Size: 4.2 MB (4189318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:996ae80da7534920f654e04c4ce32df7c9352c1d18f2543df9ca71a1670fda6e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270025070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6584e673fdd3a10e6073272b3d28b91f89112d01318f4437a96429c5a888b178`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:08:55 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 25 Apr 2017 14:08:56 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 25 Apr 2017 14:09:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:12:12 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:12:13 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:12:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:12:14 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:12:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 25 Apr 2017 14:12:49 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 25 Apr 2017 14:13:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:13:12 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 25 Apr 2017 14:13:12 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad9af0afaf6a686fadf0fd313bd14b6920bdc3cda87e50f66231372a221be08`  
		Last Modified: Wed, 26 Apr 2017 00:09:54 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7d29972cd2f95f5fa829c1639015d9c0234eb1fb041a945cbdd7cbc5bd4687`  
		Last Modified: Wed, 26 Apr 2017 00:10:08 GMT  
		Size: 76.3 MB (76312162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6b1ab69b95ee586184f2049f5c5ebf2551f2fa526f59f69ee1f857c29124d4`  
		Last Modified: Wed, 26 Apr 2017 00:09:50 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850f5937cb2d244493e54c87a16db93ca9ce295d229abc2dd68113c8f854cf64`  
		Last Modified: Wed, 26 Apr 2017 00:11:36 GMT  
		Size: 15.5 MB (15541862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704cf7ee61b29548f6b70365ed405b7bcc072fdc3638b25d9c8c75bffa6c0012`  
		Last Modified: Wed, 26 Apr 2017 00:11:31 GMT  
		Size: 4.2 MB (4189318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:996ae80da7534920f654e04c4ce32df7c9352c1d18f2543df9ca71a1670fda6e
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270025070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6584e673fdd3a10e6073272b3d28b91f89112d01318f4437a96429c5a888b178`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:08:55 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 25 Apr 2017 14:08:56 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 25 Apr 2017 14:09:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:12:12 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:12:13 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:12:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:12:14 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:12:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 25 Apr 2017 14:12:49 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 25 Apr 2017 14:13:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:13:12 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 25 Apr 2017 14:13:12 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad9af0afaf6a686fadf0fd313bd14b6920bdc3cda87e50f66231372a221be08`  
		Last Modified: Wed, 26 Apr 2017 00:09:54 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7d29972cd2f95f5fa829c1639015d9c0234eb1fb041a945cbdd7cbc5bd4687`  
		Last Modified: Wed, 26 Apr 2017 00:10:08 GMT  
		Size: 76.3 MB (76312162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6b1ab69b95ee586184f2049f5c5ebf2551f2fa526f59f69ee1f857c29124d4`  
		Last Modified: Wed, 26 Apr 2017 00:09:50 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850f5937cb2d244493e54c87a16db93ca9ce295d229abc2dd68113c8f854cf64`  
		Last Modified: Wed, 26 Apr 2017 00:11:36 GMT  
		Size: 15.5 MB (15541862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704cf7ee61b29548f6b70365ed405b7bcc072fdc3638b25d9c8c75bffa6c0012`  
		Last Modified: Wed, 26 Apr 2017 00:11:31 GMT  
		Size: 4.2 MB (4189318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:996ae80da7534920f654e04c4ce32df7c9352c1d18f2543df9ca71a1670fda6e
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270025070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6584e673fdd3a10e6073272b3d28b91f89112d01318f4437a96429c5a888b178`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 25 Apr 2017 05:13:59 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Tue, 25 Apr 2017 05:17:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Apr 2017 05:17:29 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 25 Apr 2017 05:17:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Apr 2017 05:17:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Apr 2017 05:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Apr 2017 05:17:35 GMT
CMD ["irb"]
# Tue, 25 Apr 2017 14:07:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 25 Apr 2017 14:07:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:07:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 14:07:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 14:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 25 Apr 2017 14:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 25 Apr 2017 14:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:08:54 GMT
ENV RAILS_ENV=production
# Tue, 25 Apr 2017 14:08:54 GMT
WORKDIR /usr/src/redmine
# Tue, 25 Apr 2017 14:08:55 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 25 Apr 2017 14:08:56 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 25 Apr 2017 14:09:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 25 Apr 2017 14:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:12:12 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 25 Apr 2017 14:12:13 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 25 Apr 2017 14:12:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 14:12:14 GMT
EXPOSE 3000/tcp
# Tue, 25 Apr 2017 14:12:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 25 Apr 2017 14:12:49 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 25 Apr 2017 14:13:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 14:13:12 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 25 Apr 2017 14:13:12 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff7001c2fae5b58bb1032932b1df3c14880187736f4e7688587346ff126956`  
		Last Modified: Tue, 25 Apr 2017 21:40:46 GMT  
		Size: 33.8 MB (33777847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae87f3ae3d155e086f1e6b268bd751f165716f3798e9deb4b2247db492fc419`  
		Last Modified: Tue, 25 Apr 2017 21:40:37 GMT  
		Size: 639.4 KB (639415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c3c51e53d5a2e979beeff4acb58d118fbd2ee8f47f38c3546af7caeae55984`  
		Last Modified: Tue, 25 Apr 2017 21:40:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0383a05f40d6772dcd413fe368e3d64e2580b5bfde6b5664776f97ecd86b38`  
		Last Modified: Wed, 26 Apr 2017 00:06:11 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b79727ea74b379ad87c43a79b5767825f61ccbfd69d786bae31e1cb4ed7495`  
		Last Modified: Wed, 26 Apr 2017 00:06:17 GMT  
		Size: 14.4 MB (14424988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7ca2516905a386137b774ef7d52e76d894402088427226becf2f8867c7112`  
		Last Modified: Wed, 26 Apr 2017 00:06:10 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79999d54343e0ab6e7f92e151a559255e01c8db089037e01e9a823b7b04f98c7`  
		Last Modified: Wed, 26 Apr 2017 00:06:09 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8f1b2bc6ee8c384d1a64386e86d019f7258a65ca013f1f8ed26792d9b89e3e`  
		Last Modified: Wed, 26 Apr 2017 00:06:29 GMT  
		Size: 59.2 MB (59224154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f44fd2cba2983309d877abb19f6f3a03182a96c707d9f073bc9b0966692b2cc`  
		Last Modified: Wed, 26 Apr 2017 00:06:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad9af0afaf6a686fadf0fd313bd14b6920bdc3cda87e50f66231372a221be08`  
		Last Modified: Wed, 26 Apr 2017 00:09:54 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7d29972cd2f95f5fa829c1639015d9c0234eb1fb041a945cbdd7cbc5bd4687`  
		Last Modified: Wed, 26 Apr 2017 00:10:08 GMT  
		Size: 76.3 MB (76312162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6b1ab69b95ee586184f2049f5c5ebf2551f2fa526f59f69ee1f857c29124d4`  
		Last Modified: Wed, 26 Apr 2017 00:09:50 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850f5937cb2d244493e54c87a16db93ca9ce295d229abc2dd68113c8f854cf64`  
		Last Modified: Wed, 26 Apr 2017 00:11:36 GMT  
		Size: 15.5 MB (15541862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704cf7ee61b29548f6b70365ed405b7bcc072fdc3638b25d9c8c75bffa6c0012`  
		Last Modified: Wed, 26 Apr 2017 00:11:31 GMT  
		Size: 4.2 MB (4189318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
