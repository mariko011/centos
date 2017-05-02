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
$ docker pull redmine@sha256:9dcf731b811fc33fec32b41407bb4ed1b5d77a17696339b656eda20bb97cbd16
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (241023034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3651afe322b9fbcb88498c32e9635c46555c36e3e55bfd572e588007be63d6a8`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 16:45:59 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 02 May 2017 16:46:19 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 02 May 2017 16:46:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 16:49:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 16:49:48 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 16:49:50 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 16:49:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 16:49:51 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 16:49:52 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38568dc902963e9ba04090bd7d70f61fa8d54e185684dd811fa6b34a5ed8fef1`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 2.3 MB (2281374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040e5f1d492f28ab03faa82225502f141852f77e5bc87bcd16d664540dfece91`  
		Last Modified: Tue, 02 May 2017 17:06:18 GMT  
		Size: 67.1 MB (67105009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afed00fd2037e8e9a76523fdbc99fd4a7fb54b61c90e494320d306ef69ab79dc`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:9dcf731b811fc33fec32b41407bb4ed1b5d77a17696339b656eda20bb97cbd16
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (241023034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3651afe322b9fbcb88498c32e9635c46555c36e3e55bfd572e588007be63d6a8`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 16:45:59 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 02 May 2017 16:46:19 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 02 May 2017 16:46:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 16:49:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 16:49:48 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 16:49:50 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 16:49:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 16:49:51 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 16:49:52 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38568dc902963e9ba04090bd7d70f61fa8d54e185684dd811fa6b34a5ed8fef1`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 2.3 MB (2281374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040e5f1d492f28ab03faa82225502f141852f77e5bc87bcd16d664540dfece91`  
		Last Modified: Tue, 02 May 2017 17:06:18 GMT  
		Size: 67.1 MB (67105009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afed00fd2037e8e9a76523fdbc99fd4a7fb54b61c90e494320d306ef69ab79dc`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:429ce0d6d9800ffc54ec4cf7554b5cb90a3da227ca2d7e6c5c03620212fa52fa
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.8 MB (260754172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9875fe2373664dbc8c0503ba9fe27e32b2cefa560f1d5b086ef3d88875b68ca1`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 16:45:59 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 02 May 2017 16:46:19 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 02 May 2017 16:46:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 16:49:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 16:49:48 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 16:49:50 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 16:49:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 16:49:51 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 16:49:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 02 May 2017 16:50:33 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 02 May 2017 16:50:55 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 16:50:58 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 02 May 2017 16:50:58 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38568dc902963e9ba04090bd7d70f61fa8d54e185684dd811fa6b34a5ed8fef1`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 2.3 MB (2281374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040e5f1d492f28ab03faa82225502f141852f77e5bc87bcd16d664540dfece91`  
		Last Modified: Tue, 02 May 2017 17:06:18 GMT  
		Size: 67.1 MB (67105009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afed00fd2037e8e9a76523fdbc99fd4a7fb54b61c90e494320d306ef69ab79dc`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025a5646edfbbd6d618334408c92c6ca51a744233e844a1b008d3541bb50c876`  
		Last Modified: Tue, 02 May 2017 17:07:40 GMT  
		Size: 15.5 MB (15541819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33028914384347780e36a767322402319a1d397b1fa56817760ec591f47e3318`  
		Last Modified: Tue, 02 May 2017 17:07:34 GMT  
		Size: 4.2 MB (4189319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:429ce0d6d9800ffc54ec4cf7554b5cb90a3da227ca2d7e6c5c03620212fa52fa
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.8 MB (260754172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9875fe2373664dbc8c0503ba9fe27e32b2cefa560f1d5b086ef3d88875b68ca1`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 16:45:59 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 02 May 2017 16:46:19 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 02 May 2017 16:46:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 16:49:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 16:49:48 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 16:49:50 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 16:49:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 16:49:51 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 16:49:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 02 May 2017 16:50:33 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 02 May 2017 16:50:55 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 16:50:58 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 02 May 2017 16:50:58 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38568dc902963e9ba04090bd7d70f61fa8d54e185684dd811fa6b34a5ed8fef1`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 2.3 MB (2281374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040e5f1d492f28ab03faa82225502f141852f77e5bc87bcd16d664540dfece91`  
		Last Modified: Tue, 02 May 2017 17:06:18 GMT  
		Size: 67.1 MB (67105009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afed00fd2037e8e9a76523fdbc99fd4a7fb54b61c90e494320d306ef69ab79dc`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025a5646edfbbd6d618334408c92c6ca51a744233e844a1b008d3541bb50c876`  
		Last Modified: Tue, 02 May 2017 17:07:40 GMT  
		Size: 15.5 MB (15541819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33028914384347780e36a767322402319a1d397b1fa56817760ec591f47e3318`  
		Last Modified: Tue, 02 May 2017 17:07:34 GMT  
		Size: 4.2 MB (4189319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.6`

```console
$ docker pull redmine@sha256:946883411468971ffdbe964280a9d1ee7f005cbe97c8bbe2227d948f4ba7c502
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250357189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4bfc5d98507c78abce0197f0b62131f038f1663a8211909dbb16e97dbad749d`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 16:52:03 GMT
ENV REDMINE_VERSION=3.2.6
# Tue, 02 May 2017 16:52:04 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Tue, 02 May 2017 16:52:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 16:54:43 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 16:54:56 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 16:55:14 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 16:55:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 16:55:49 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 16:56:07 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68850c1c1d690a80c06b3de2d414abd61dc1c1787fb2a61448b9d2c7eb37198d`  
		Last Modified: Tue, 02 May 2017 17:08:44 GMT  
		Size: 2.3 MB (2345897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aebf6d63640bc3ddce43121ae290d19fac38600d4f924419c3d788e3bea32d`  
		Last Modified: Tue, 02 May 2017 17:09:01 GMT  
		Size: 76.4 MB (76374641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6559a7c0e4019b721838bdcdc4e1c0e77be75420b485b7e68a1d4ffe07afe2f7`  
		Last Modified: Tue, 02 May 2017 17:08:42 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:946883411468971ffdbe964280a9d1ee7f005cbe97c8bbe2227d948f4ba7c502
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250357189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4bfc5d98507c78abce0197f0b62131f038f1663a8211909dbb16e97dbad749d`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 16:52:03 GMT
ENV REDMINE_VERSION=3.2.6
# Tue, 02 May 2017 16:52:04 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Tue, 02 May 2017 16:52:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 16:54:43 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 16:54:56 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 16:55:14 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 16:55:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 16:55:49 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 16:56:07 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68850c1c1d690a80c06b3de2d414abd61dc1c1787fb2a61448b9d2c7eb37198d`  
		Last Modified: Tue, 02 May 2017 17:08:44 GMT  
		Size: 2.3 MB (2345897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aebf6d63640bc3ddce43121ae290d19fac38600d4f924419c3d788e3bea32d`  
		Last Modified: Tue, 02 May 2017 17:09:01 GMT  
		Size: 76.4 MB (76374641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6559a7c0e4019b721838bdcdc4e1c0e77be75420b485b7e68a1d4ffe07afe2f7`  
		Last Modified: Tue, 02 May 2017 17:08:42 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.6-passenger`

```console
$ docker pull redmine@sha256:d1eee99d0ea4cae5c84b7d3ae63e93e79c6a47205d8e3ec256be8bb19b2fc958
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.6-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270088320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905a5a302476b429a475e345700c35dc5fb3bbd72bfcc795c0780fda25e2211e`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 16:52:03 GMT
ENV REDMINE_VERSION=3.2.6
# Tue, 02 May 2017 16:52:04 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Tue, 02 May 2017 16:52:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 16:54:43 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 16:54:56 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 16:55:14 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 16:55:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 16:55:49 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 16:56:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 02 May 2017 16:57:54 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 02 May 2017 16:58:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 16:58:49 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 02 May 2017 16:59:06 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68850c1c1d690a80c06b3de2d414abd61dc1c1787fb2a61448b9d2c7eb37198d`  
		Last Modified: Tue, 02 May 2017 17:08:44 GMT  
		Size: 2.3 MB (2345897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aebf6d63640bc3ddce43121ae290d19fac38600d4f924419c3d788e3bea32d`  
		Last Modified: Tue, 02 May 2017 17:09:01 GMT  
		Size: 76.4 MB (76374641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6559a7c0e4019b721838bdcdc4e1c0e77be75420b485b7e68a1d4ffe07afe2f7`  
		Last Modified: Tue, 02 May 2017 17:08:42 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847afc97c64a3ed1ba9a2824b98584f0cb5fae817e9e46d91aaf4c1038fdc0d9`  
		Last Modified: Tue, 02 May 2017 17:10:06 GMT  
		Size: 15.5 MB (15541805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb2521a95b7df2e4c00a38573a98d14bcaba9b0bb6450a689997f252377ac65`  
		Last Modified: Tue, 02 May 2017 17:10:05 GMT  
		Size: 4.2 MB (4189326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:d1eee99d0ea4cae5c84b7d3ae63e93e79c6a47205d8e3ec256be8bb19b2fc958
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270088320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905a5a302476b429a475e345700c35dc5fb3bbd72bfcc795c0780fda25e2211e`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 16:52:03 GMT
ENV REDMINE_VERSION=3.2.6
# Tue, 02 May 2017 16:52:04 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Tue, 02 May 2017 16:52:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 16:54:43 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 16:54:56 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 16:55:14 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 16:55:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 16:55:49 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 16:56:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 02 May 2017 16:57:54 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 02 May 2017 16:58:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 16:58:49 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 02 May 2017 16:59:06 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68850c1c1d690a80c06b3de2d414abd61dc1c1787fb2a61448b9d2c7eb37198d`  
		Last Modified: Tue, 02 May 2017 17:08:44 GMT  
		Size: 2.3 MB (2345897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aebf6d63640bc3ddce43121ae290d19fac38600d4f924419c3d788e3bea32d`  
		Last Modified: Tue, 02 May 2017 17:09:01 GMT  
		Size: 76.4 MB (76374641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6559a7c0e4019b721838bdcdc4e1c0e77be75420b485b7e68a1d4ffe07afe2f7`  
		Last Modified: Tue, 02 May 2017 17:08:42 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847afc97c64a3ed1ba9a2824b98584f0cb5fae817e9e46d91aaf4c1038fdc0d9`  
		Last Modified: Tue, 02 May 2017 17:10:06 GMT  
		Size: 15.5 MB (15541805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb2521a95b7df2e4c00a38573a98d14bcaba9b0bb6450a689997f252377ac65`  
		Last Modified: Tue, 02 May 2017 17:10:05 GMT  
		Size: 4.2 MB (4189326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.3`

```console
$ docker pull redmine@sha256:f136b89ad1702f37e11cb1ea223ca09f2b48e30fd74c5d48f8910f1105b28b26
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250400926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de108d1d415cfee00a7bcf29fc25a2e8bdefdc7c235ae2d5fe2c20f02ff19d21`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 17:01:43 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 02 May 2017 17:01:44 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 02 May 2017 17:01:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 17:04:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 17:04:16 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 17:04:17 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 17:04:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 17:04:36 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 17:04:36 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1554360e517a79e0a09f70dc63e3d76f5e70a4147c61c238685dc04bc70a8a7a`  
		Last Modified: Tue, 02 May 2017 17:11:12 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c292bebf026e351c9ce58c6eed3fd517c7caf8321bf5c9a8460aed40b0f24fd`  
		Last Modified: Tue, 02 May 2017 17:11:21 GMT  
		Size: 76.4 MB (76375968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8327b0f9a7623236cd2d506eb9fc2ab5d3464c9d2ec1ea3f5858b4e90cdfe51b`  
		Last Modified: Tue, 02 May 2017 17:11:10 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:f136b89ad1702f37e11cb1ea223ca09f2b48e30fd74c5d48f8910f1105b28b26
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250400926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de108d1d415cfee00a7bcf29fc25a2e8bdefdc7c235ae2d5fe2c20f02ff19d21`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 17:01:43 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 02 May 2017 17:01:44 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 02 May 2017 17:01:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 17:04:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 17:04:16 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 17:04:17 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 17:04:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 17:04:36 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 17:04:36 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1554360e517a79e0a09f70dc63e3d76f5e70a4147c61c238685dc04bc70a8a7a`  
		Last Modified: Tue, 02 May 2017 17:11:12 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c292bebf026e351c9ce58c6eed3fd517c7caf8321bf5c9a8460aed40b0f24fd`  
		Last Modified: Tue, 02 May 2017 17:11:21 GMT  
		Size: 76.4 MB (76375968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8327b0f9a7623236cd2d506eb9fc2ab5d3464c9d2ec1ea3f5858b4e90cdfe51b`  
		Last Modified: Tue, 02 May 2017 17:11:10 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:f136b89ad1702f37e11cb1ea223ca09f2b48e30fd74c5d48f8910f1105b28b26
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250400926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de108d1d415cfee00a7bcf29fc25a2e8bdefdc7c235ae2d5fe2c20f02ff19d21`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 17:01:43 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 02 May 2017 17:01:44 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 02 May 2017 17:01:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 17:04:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 17:04:16 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 17:04:17 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 17:04:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 17:04:36 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 17:04:36 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1554360e517a79e0a09f70dc63e3d76f5e70a4147c61c238685dc04bc70a8a7a`  
		Last Modified: Tue, 02 May 2017 17:11:12 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c292bebf026e351c9ce58c6eed3fd517c7caf8321bf5c9a8460aed40b0f24fd`  
		Last Modified: Tue, 02 May 2017 17:11:21 GMT  
		Size: 76.4 MB (76375968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8327b0f9a7623236cd2d506eb9fc2ab5d3464c9d2ec1ea3f5858b4e90cdfe51b`  
		Last Modified: Tue, 02 May 2017 17:11:10 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:f136b89ad1702f37e11cb1ea223ca09f2b48e30fd74c5d48f8910f1105b28b26
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250400926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de108d1d415cfee00a7bcf29fc25a2e8bdefdc7c235ae2d5fe2c20f02ff19d21`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 17:01:43 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 02 May 2017 17:01:44 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 02 May 2017 17:01:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 17:04:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 17:04:16 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 17:04:17 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 17:04:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 17:04:36 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 17:04:36 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1554360e517a79e0a09f70dc63e3d76f5e70a4147c61c238685dc04bc70a8a7a`  
		Last Modified: Tue, 02 May 2017 17:11:12 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c292bebf026e351c9ce58c6eed3fd517c7caf8321bf5c9a8460aed40b0f24fd`  
		Last Modified: Tue, 02 May 2017 17:11:21 GMT  
		Size: 76.4 MB (76375968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8327b0f9a7623236cd2d506eb9fc2ab5d3464c9d2ec1ea3f5858b4e90cdfe51b`  
		Last Modified: Tue, 02 May 2017 17:11:10 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.3-passenger`

```console
$ docker pull redmine@sha256:b81ce1f9a89f5bce9eee8cd089808c06c647c905ddfb837aecff1ca0a6c25ce4
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.3-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270132016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2439dddbf4812b9f72fcd1180119ae4aa5961357956194bb71893208c69445`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 17:01:43 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 02 May 2017 17:01:44 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 02 May 2017 17:01:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 17:04:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 17:04:16 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 17:04:17 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 17:04:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 17:04:36 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 17:04:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 02 May 2017 17:05:13 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 02 May 2017 17:05:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 17:05:35 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 02 May 2017 17:05:36 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1554360e517a79e0a09f70dc63e3d76f5e70a4147c61c238685dc04bc70a8a7a`  
		Last Modified: Tue, 02 May 2017 17:11:12 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c292bebf026e351c9ce58c6eed3fd517c7caf8321bf5c9a8460aed40b0f24fd`  
		Last Modified: Tue, 02 May 2017 17:11:21 GMT  
		Size: 76.4 MB (76375968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8327b0f9a7623236cd2d506eb9fc2ab5d3464c9d2ec1ea3f5858b4e90cdfe51b`  
		Last Modified: Tue, 02 May 2017 17:11:10 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3866b485f135ee9330ce6aa26b0727157a01236806347569cf0fb5d9d6705136`  
		Last Modified: Tue, 02 May 2017 17:13:34 GMT  
		Size: 15.5 MB (15541780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf82f8937b7c419185cdfa6afaac01ec08b71984d2d313175e7cbe04419c4a2`  
		Last Modified: Tue, 02 May 2017 17:13:32 GMT  
		Size: 4.2 MB (4189310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:b81ce1f9a89f5bce9eee8cd089808c06c647c905ddfb837aecff1ca0a6c25ce4
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270132016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2439dddbf4812b9f72fcd1180119ae4aa5961357956194bb71893208c69445`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 17:01:43 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 02 May 2017 17:01:44 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 02 May 2017 17:01:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 17:04:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 17:04:16 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 17:04:17 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 17:04:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 17:04:36 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 17:04:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 02 May 2017 17:05:13 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 02 May 2017 17:05:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 17:05:35 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 02 May 2017 17:05:36 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1554360e517a79e0a09f70dc63e3d76f5e70a4147c61c238685dc04bc70a8a7a`  
		Last Modified: Tue, 02 May 2017 17:11:12 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c292bebf026e351c9ce58c6eed3fd517c7caf8321bf5c9a8460aed40b0f24fd`  
		Last Modified: Tue, 02 May 2017 17:11:21 GMT  
		Size: 76.4 MB (76375968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8327b0f9a7623236cd2d506eb9fc2ab5d3464c9d2ec1ea3f5858b4e90cdfe51b`  
		Last Modified: Tue, 02 May 2017 17:11:10 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3866b485f135ee9330ce6aa26b0727157a01236806347569cf0fb5d9d6705136`  
		Last Modified: Tue, 02 May 2017 17:13:34 GMT  
		Size: 15.5 MB (15541780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf82f8937b7c419185cdfa6afaac01ec08b71984d2d313175e7cbe04419c4a2`  
		Last Modified: Tue, 02 May 2017 17:13:32 GMT  
		Size: 4.2 MB (4189310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:b81ce1f9a89f5bce9eee8cd089808c06c647c905ddfb837aecff1ca0a6c25ce4
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270132016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2439dddbf4812b9f72fcd1180119ae4aa5961357956194bb71893208c69445`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 17:01:43 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 02 May 2017 17:01:44 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 02 May 2017 17:01:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 17:04:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 17:04:16 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 17:04:17 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 17:04:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 17:04:36 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 17:04:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 02 May 2017 17:05:13 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 02 May 2017 17:05:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 17:05:35 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 02 May 2017 17:05:36 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1554360e517a79e0a09f70dc63e3d76f5e70a4147c61c238685dc04bc70a8a7a`  
		Last Modified: Tue, 02 May 2017 17:11:12 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c292bebf026e351c9ce58c6eed3fd517c7caf8321bf5c9a8460aed40b0f24fd`  
		Last Modified: Tue, 02 May 2017 17:11:21 GMT  
		Size: 76.4 MB (76375968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8327b0f9a7623236cd2d506eb9fc2ab5d3464c9d2ec1ea3f5858b4e90cdfe51b`  
		Last Modified: Tue, 02 May 2017 17:11:10 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3866b485f135ee9330ce6aa26b0727157a01236806347569cf0fb5d9d6705136`  
		Last Modified: Tue, 02 May 2017 17:13:34 GMT  
		Size: 15.5 MB (15541780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf82f8937b7c419185cdfa6afaac01ec08b71984d2d313175e7cbe04419c4a2`  
		Last Modified: Tue, 02 May 2017 17:13:32 GMT  
		Size: 4.2 MB (4189310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:b81ce1f9a89f5bce9eee8cd089808c06c647c905ddfb837aecff1ca0a6c25ce4
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270132016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2439dddbf4812b9f72fcd1180119ae4aa5961357956194bb71893208c69445`
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
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 17:01:43 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 02 May 2017 17:01:44 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 02 May 2017 17:01:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 17:04:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 17:04:16 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 17:04:17 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 17:04:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 17:04:36 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 17:04:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 02 May 2017 17:05:13 GMT
ENV PASSENGER_VERSION=5.1.2
# Tue, 02 May 2017 17:05:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 17:05:35 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 02 May 2017 17:05:36 GMT
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
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1554360e517a79e0a09f70dc63e3d76f5e70a4147c61c238685dc04bc70a8a7a`  
		Last Modified: Tue, 02 May 2017 17:11:12 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c292bebf026e351c9ce58c6eed3fd517c7caf8321bf5c9a8460aed40b0f24fd`  
		Last Modified: Tue, 02 May 2017 17:11:21 GMT  
		Size: 76.4 MB (76375968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8327b0f9a7623236cd2d506eb9fc2ab5d3464c9d2ec1ea3f5858b4e90cdfe51b`  
		Last Modified: Tue, 02 May 2017 17:11:10 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3866b485f135ee9330ce6aa26b0727157a01236806347569cf0fb5d9d6705136`  
		Last Modified: Tue, 02 May 2017 17:13:34 GMT  
		Size: 15.5 MB (15541780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf82f8937b7c419185cdfa6afaac01ec08b71984d2d313175e7cbe04419c4a2`  
		Last Modified: Tue, 02 May 2017 17:13:32 GMT  
		Size: 4.2 MB (4189310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
