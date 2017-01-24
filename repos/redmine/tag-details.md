<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3.1.7`](#redmine317)
-	[`redmine:3.1`](#redmine31)
-	[`redmine:3.1.7-passenger`](#redmine317-passenger)
-	[`redmine:3.1-passenger`](#redmine31-passenger)
-	[`redmine:3.2.5`](#redmine325)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.5-passenger`](#redmine325-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3.2`](#redmine332)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3`](#redmine3)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:3.3.2-passenger`](#redmine332-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:9280511733314f742da6a8db70439806a556033389f9194368a59a529690e913
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237456600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b72d539edeba568a9e8242781427c7b0c521e2e0f6f0e0ec612a03172ab65b3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:03:51 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 24 Jan 2017 23:03:52 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 24 Jan 2017 23:03:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:06:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:06:17 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:06:18 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:06:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:06:19 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:06:19 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97a02466b28ecb3503b4944c1426dc446487cabc9b1f6dbf4d88b37a334274f`  
		Last Modified: Tue, 24 Jan 2017 23:11:53 GMT  
		Size: 2.3 MB (2273009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4739105894f5da48f47ec88a70ebb22ed77f831dcbda0c3b66517d29828f084c`  
		Last Modified: Tue, 24 Jan 2017 23:12:09 GMT  
		Size: 67.0 MB (66981739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f3f482ef6aa176dbdee3ae97c99dd07f89f339b0422eff6c3e67b4aad2b8e7`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:9280511733314f742da6a8db70439806a556033389f9194368a59a529690e913
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237456600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b72d539edeba568a9e8242781427c7b0c521e2e0f6f0e0ec612a03172ab65b3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:03:51 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 24 Jan 2017 23:03:52 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 24 Jan 2017 23:03:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:06:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:06:17 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:06:18 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:06:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:06:19 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:06:19 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97a02466b28ecb3503b4944c1426dc446487cabc9b1f6dbf4d88b37a334274f`  
		Last Modified: Tue, 24 Jan 2017 23:11:53 GMT  
		Size: 2.3 MB (2273009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4739105894f5da48f47ec88a70ebb22ed77f831dcbda0c3b66517d29828f084c`  
		Last Modified: Tue, 24 Jan 2017 23:12:09 GMT  
		Size: 67.0 MB (66981739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f3f482ef6aa176dbdee3ae97c99dd07f89f339b0422eff6c3e67b4aad2b8e7`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:6ddd2f5242a7e0e19de242bdad1d61195af79dbd5d638bd34a84bd33c8903ccd
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (257021407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7621fd5ef32544ada3c98e8d311843c6edc9af3d042dbd7e0d8f1f4273bae7b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:03:51 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 24 Jan 2017 23:03:52 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 24 Jan 2017 23:03:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:06:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:06:17 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:06:18 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:06:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:06:19 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:06:19 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 24 Jan 2017 23:06:20 GMT
ENV PASSENGER_VERSION=5.1.1
# Tue, 24 Jan 2017 23:06:34 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:06:35 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 24 Jan 2017 23:06:36 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97a02466b28ecb3503b4944c1426dc446487cabc9b1f6dbf4d88b37a334274f`  
		Last Modified: Tue, 24 Jan 2017 23:11:53 GMT  
		Size: 2.3 MB (2273009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4739105894f5da48f47ec88a70ebb22ed77f831dcbda0c3b66517d29828f084c`  
		Last Modified: Tue, 24 Jan 2017 23:12:09 GMT  
		Size: 67.0 MB (66981739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f3f482ef6aa176dbdee3ae97c99dd07f89f339b0422eff6c3e67b4aad2b8e7`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f383e0a091fc97d80da67b0063e977d479837c32dabbdeeac2f0d16dd37ed120`  
		Last Modified: Tue, 24 Jan 2017 23:12:49 GMT  
		Size: 15.5 MB (15498785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdb017297ef34af459105b4cab0eb5fc6771990d1b5a73f6d01fed2c8badd73`  
		Last Modified: Tue, 24 Jan 2017 23:12:47 GMT  
		Size: 4.1 MB (4066022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:6ddd2f5242a7e0e19de242bdad1d61195af79dbd5d638bd34a84bd33c8903ccd
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (257021407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7621fd5ef32544ada3c98e8d311843c6edc9af3d042dbd7e0d8f1f4273bae7b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:03:51 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 24 Jan 2017 23:03:52 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 24 Jan 2017 23:03:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:06:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:06:17 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:06:18 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:06:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:06:19 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:06:19 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 24 Jan 2017 23:06:20 GMT
ENV PASSENGER_VERSION=5.1.1
# Tue, 24 Jan 2017 23:06:34 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:06:35 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 24 Jan 2017 23:06:36 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97a02466b28ecb3503b4944c1426dc446487cabc9b1f6dbf4d88b37a334274f`  
		Last Modified: Tue, 24 Jan 2017 23:11:53 GMT  
		Size: 2.3 MB (2273009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4739105894f5da48f47ec88a70ebb22ed77f831dcbda0c3b66517d29828f084c`  
		Last Modified: Tue, 24 Jan 2017 23:12:09 GMT  
		Size: 67.0 MB (66981739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f3f482ef6aa176dbdee3ae97c99dd07f89f339b0422eff6c3e67b4aad2b8e7`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f383e0a091fc97d80da67b0063e977d479837c32dabbdeeac2f0d16dd37ed120`  
		Last Modified: Tue, 24 Jan 2017 23:12:49 GMT  
		Size: 15.5 MB (15498785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdb017297ef34af459105b4cab0eb5fc6771990d1b5a73f6d01fed2c8badd73`  
		Last Modified: Tue, 24 Jan 2017 23:12:47 GMT  
		Size: 4.1 MB (4066022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.5`

```console
$ docker pull redmine@sha256:8afc6c102b297400d30234f559121d518f0dc60354786f81de6b3b18b3e66e01
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.3 MB (246315285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42ce6cbc0fd7db9c950100229d98df8f39c444192f642c275bdbb29c1ec1a55c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:06:37 GMT
ENV REDMINE_VERSION=3.2.5
# Tue, 24 Jan 2017 23:06:37 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Tue, 24 Jan 2017 23:06:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:08:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:08:49 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:08:49 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:08:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:08:50 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:08:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d9a3548b9b8d4e07b3bae5806aa78fb6c2aee97b4da052658575551d314f3b`  
		Last Modified: Tue, 24 Jan 2017 23:13:24 GMT  
		Size: 2.3 MB (2334511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efb1b2eeb6bbd23bfd70aa1bdb43c7cb91926cde0e49f1bcf17896f605972a2`  
		Last Modified: Tue, 24 Jan 2017 23:13:37 GMT  
		Size: 75.8 MB (75778920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28b9d4bfb43075cd660073997aebfb530f5835d9dd0039bb2ad6909b7faa6bc`  
		Last Modified: Tue, 24 Jan 2017 23:13:23 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:8afc6c102b297400d30234f559121d518f0dc60354786f81de6b3b18b3e66e01
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.3 MB (246315285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42ce6cbc0fd7db9c950100229d98df8f39c444192f642c275bdbb29c1ec1a55c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:06:37 GMT
ENV REDMINE_VERSION=3.2.5
# Tue, 24 Jan 2017 23:06:37 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Tue, 24 Jan 2017 23:06:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:08:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:08:49 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:08:49 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:08:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:08:50 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:08:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d9a3548b9b8d4e07b3bae5806aa78fb6c2aee97b4da052658575551d314f3b`  
		Last Modified: Tue, 24 Jan 2017 23:13:24 GMT  
		Size: 2.3 MB (2334511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efb1b2eeb6bbd23bfd70aa1bdb43c7cb91926cde0e49f1bcf17896f605972a2`  
		Last Modified: Tue, 24 Jan 2017 23:13:37 GMT  
		Size: 75.8 MB (75778920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28b9d4bfb43075cd660073997aebfb530f5835d9dd0039bb2ad6909b7faa6bc`  
		Last Modified: Tue, 24 Jan 2017 23:13:23 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.5-passenger`

```console
$ docker pull redmine@sha256:bacc1827dcd087dd2c368295d932b942e159eb3c24ca6d1491b74560233f7d6d
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.5-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.9 MB (265880160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144e20cf97a27fc7703d2c63472a860b9dbffa6f35387dfb9b617962d5aa444d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:06:37 GMT
ENV REDMINE_VERSION=3.2.5
# Tue, 24 Jan 2017 23:06:37 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Tue, 24 Jan 2017 23:06:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:08:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:08:49 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:08:49 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:08:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:08:50 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:08:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 24 Jan 2017 23:08:52 GMT
ENV PASSENGER_VERSION=5.1.1
# Tue, 24 Jan 2017 23:09:04 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:09:06 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 24 Jan 2017 23:09:06 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d9a3548b9b8d4e07b3bae5806aa78fb6c2aee97b4da052658575551d314f3b`  
		Last Modified: Tue, 24 Jan 2017 23:13:24 GMT  
		Size: 2.3 MB (2334511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efb1b2eeb6bbd23bfd70aa1bdb43c7cb91926cde0e49f1bcf17896f605972a2`  
		Last Modified: Tue, 24 Jan 2017 23:13:37 GMT  
		Size: 75.8 MB (75778920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28b9d4bfb43075cd660073997aebfb530f5835d9dd0039bb2ad6909b7faa6bc`  
		Last Modified: Tue, 24 Jan 2017 23:13:23 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b24a065790d412875eba6860726ef2a3b55ef5724c0cbfbcc25ca43a8b0508`  
		Last Modified: Tue, 24 Jan 2017 23:14:16 GMT  
		Size: 15.5 MB (15498867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d14d4d8ade2e1aee093f7d2139849304838943639102eb63e1c2609933c7b47`  
		Last Modified: Tue, 24 Jan 2017 23:14:15 GMT  
		Size: 4.1 MB (4066008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:bacc1827dcd087dd2c368295d932b942e159eb3c24ca6d1491b74560233f7d6d
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.9 MB (265880160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144e20cf97a27fc7703d2c63472a860b9dbffa6f35387dfb9b617962d5aa444d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:06:37 GMT
ENV REDMINE_VERSION=3.2.5
# Tue, 24 Jan 2017 23:06:37 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Tue, 24 Jan 2017 23:06:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:08:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:08:49 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:08:49 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:08:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:08:50 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:08:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 24 Jan 2017 23:08:52 GMT
ENV PASSENGER_VERSION=5.1.1
# Tue, 24 Jan 2017 23:09:04 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:09:06 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 24 Jan 2017 23:09:06 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d9a3548b9b8d4e07b3bae5806aa78fb6c2aee97b4da052658575551d314f3b`  
		Last Modified: Tue, 24 Jan 2017 23:13:24 GMT  
		Size: 2.3 MB (2334511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efb1b2eeb6bbd23bfd70aa1bdb43c7cb91926cde0e49f1bcf17896f605972a2`  
		Last Modified: Tue, 24 Jan 2017 23:13:37 GMT  
		Size: 75.8 MB (75778920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28b9d4bfb43075cd660073997aebfb530f5835d9dd0039bb2ad6909b7faa6bc`  
		Last Modified: Tue, 24 Jan 2017 23:13:23 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b24a065790d412875eba6860726ef2a3b55ef5724c0cbfbcc25ca43a8b0508`  
		Last Modified: Tue, 24 Jan 2017 23:14:16 GMT  
		Size: 15.5 MB (15498867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d14d4d8ade2e1aee093f7d2139849304838943639102eb63e1c2609933c7b47`  
		Last Modified: Tue, 24 Jan 2017 23:14:15 GMT  
		Size: 4.1 MB (4066008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.2`

```console
$ docker pull redmine@sha256:064a40b888c5671295ee0dc4dc89c8ac29a631ce5d9fff9b3cbf403d75030152
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.4 MB (246357454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b064d67e8c2c7d9a88deb839f8c7774fd03cf1a1acd19956136bb3e7a235e27`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_VERSION=3.3.2
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Tue, 24 Jan 2017 23:09:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:11:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:11:18 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:11:19 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:11:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:11:19 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:11:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e59fd88d189bff610257a51ba6a77c79be17796d418a629311952e45f6c4e`  
		Last Modified: Tue, 24 Jan 2017 23:14:52 GMT  
		Size: 2.4 MB (2376989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03a515d8c2238b13bd949ee563780e49273fbedad2b2850f0e6cf315f3abdaa`  
		Last Modified: Tue, 24 Jan 2017 23:15:07 GMT  
		Size: 75.8 MB (75778611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec3bdafa29888316b1a50df1212f46eff13a14ba8fda69f8a53643e28daf177`  
		Last Modified: Tue, 24 Jan 2017 23:14:50 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:064a40b888c5671295ee0dc4dc89c8ac29a631ce5d9fff9b3cbf403d75030152
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.4 MB (246357454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b064d67e8c2c7d9a88deb839f8c7774fd03cf1a1acd19956136bb3e7a235e27`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_VERSION=3.3.2
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Tue, 24 Jan 2017 23:09:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:11:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:11:18 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:11:19 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:11:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:11:19 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:11:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e59fd88d189bff610257a51ba6a77c79be17796d418a629311952e45f6c4e`  
		Last Modified: Tue, 24 Jan 2017 23:14:52 GMT  
		Size: 2.4 MB (2376989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03a515d8c2238b13bd949ee563780e49273fbedad2b2850f0e6cf315f3abdaa`  
		Last Modified: Tue, 24 Jan 2017 23:15:07 GMT  
		Size: 75.8 MB (75778611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec3bdafa29888316b1a50df1212f46eff13a14ba8fda69f8a53643e28daf177`  
		Last Modified: Tue, 24 Jan 2017 23:14:50 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:064a40b888c5671295ee0dc4dc89c8ac29a631ce5d9fff9b3cbf403d75030152
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.4 MB (246357454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b064d67e8c2c7d9a88deb839f8c7774fd03cf1a1acd19956136bb3e7a235e27`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_VERSION=3.3.2
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Tue, 24 Jan 2017 23:09:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:11:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:11:18 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:11:19 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:11:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:11:19 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:11:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e59fd88d189bff610257a51ba6a77c79be17796d418a629311952e45f6c4e`  
		Last Modified: Tue, 24 Jan 2017 23:14:52 GMT  
		Size: 2.4 MB (2376989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03a515d8c2238b13bd949ee563780e49273fbedad2b2850f0e6cf315f3abdaa`  
		Last Modified: Tue, 24 Jan 2017 23:15:07 GMT  
		Size: 75.8 MB (75778611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec3bdafa29888316b1a50df1212f46eff13a14ba8fda69f8a53643e28daf177`  
		Last Modified: Tue, 24 Jan 2017 23:14:50 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:064a40b888c5671295ee0dc4dc89c8ac29a631ce5d9fff9b3cbf403d75030152
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.4 MB (246357454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b064d67e8c2c7d9a88deb839f8c7774fd03cf1a1acd19956136bb3e7a235e27`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_VERSION=3.3.2
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Tue, 24 Jan 2017 23:09:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:11:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:11:18 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:11:19 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:11:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:11:19 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:11:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e59fd88d189bff610257a51ba6a77c79be17796d418a629311952e45f6c4e`  
		Last Modified: Tue, 24 Jan 2017 23:14:52 GMT  
		Size: 2.4 MB (2376989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03a515d8c2238b13bd949ee563780e49273fbedad2b2850f0e6cf315f3abdaa`  
		Last Modified: Tue, 24 Jan 2017 23:15:07 GMT  
		Size: 75.8 MB (75778611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec3bdafa29888316b1a50df1212f46eff13a14ba8fda69f8a53643e28daf177`  
		Last Modified: Tue, 24 Jan 2017 23:14:50 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.2-passenger`

```console
$ docker pull redmine@sha256:f9690adaf863d59b780932dbf68ab44868fa808a4a608cc8e8cd99c58e6a2e46
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.2-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.9 MB (265922436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e97c165770721c3a8adfeea2b0203b67cd2bf64e985866d1eef7d1b4f9e549`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_VERSION=3.3.2
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Tue, 24 Jan 2017 23:09:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:11:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:11:18 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:11:19 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:11:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:11:19 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:11:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 24 Jan 2017 23:11:20 GMT
ENV PASSENGER_VERSION=5.1.1
# Tue, 24 Jan 2017 23:11:33 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:11:34 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 24 Jan 2017 23:11:34 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e59fd88d189bff610257a51ba6a77c79be17796d418a629311952e45f6c4e`  
		Last Modified: Tue, 24 Jan 2017 23:14:52 GMT  
		Size: 2.4 MB (2376989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03a515d8c2238b13bd949ee563780e49273fbedad2b2850f0e6cf315f3abdaa`  
		Last Modified: Tue, 24 Jan 2017 23:15:07 GMT  
		Size: 75.8 MB (75778611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec3bdafa29888316b1a50df1212f46eff13a14ba8fda69f8a53643e28daf177`  
		Last Modified: Tue, 24 Jan 2017 23:14:50 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8e924ce497b59e4898a5856e40ed5b4b420d191011f3f8540c28cdcbc2ec77`  
		Last Modified: Tue, 24 Jan 2017 23:16:15 GMT  
		Size: 15.5 MB (15498971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6cc055e24255abf581a45b7d4826b5ae2d4adf087dd2f1e911e14e8f94418a`  
		Last Modified: Tue, 24 Jan 2017 23:16:13 GMT  
		Size: 4.1 MB (4066011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:f9690adaf863d59b780932dbf68ab44868fa808a4a608cc8e8cd99c58e6a2e46
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.9 MB (265922436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e97c165770721c3a8adfeea2b0203b67cd2bf64e985866d1eef7d1b4f9e549`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_VERSION=3.3.2
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Tue, 24 Jan 2017 23:09:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:11:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:11:18 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:11:19 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:11:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:11:19 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:11:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 24 Jan 2017 23:11:20 GMT
ENV PASSENGER_VERSION=5.1.1
# Tue, 24 Jan 2017 23:11:33 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:11:34 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 24 Jan 2017 23:11:34 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e59fd88d189bff610257a51ba6a77c79be17796d418a629311952e45f6c4e`  
		Last Modified: Tue, 24 Jan 2017 23:14:52 GMT  
		Size: 2.4 MB (2376989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03a515d8c2238b13bd949ee563780e49273fbedad2b2850f0e6cf315f3abdaa`  
		Last Modified: Tue, 24 Jan 2017 23:15:07 GMT  
		Size: 75.8 MB (75778611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec3bdafa29888316b1a50df1212f46eff13a14ba8fda69f8a53643e28daf177`  
		Last Modified: Tue, 24 Jan 2017 23:14:50 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8e924ce497b59e4898a5856e40ed5b4b420d191011f3f8540c28cdcbc2ec77`  
		Last Modified: Tue, 24 Jan 2017 23:16:15 GMT  
		Size: 15.5 MB (15498971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6cc055e24255abf581a45b7d4826b5ae2d4adf087dd2f1e911e14e8f94418a`  
		Last Modified: Tue, 24 Jan 2017 23:16:13 GMT  
		Size: 4.1 MB (4066011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:f9690adaf863d59b780932dbf68ab44868fa808a4a608cc8e8cd99c58e6a2e46
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.9 MB (265922436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e97c165770721c3a8adfeea2b0203b67cd2bf64e985866d1eef7d1b4f9e549`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_VERSION=3.3.2
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Tue, 24 Jan 2017 23:09:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:11:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:11:18 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:11:19 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:11:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:11:19 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:11:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 24 Jan 2017 23:11:20 GMT
ENV PASSENGER_VERSION=5.1.1
# Tue, 24 Jan 2017 23:11:33 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:11:34 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 24 Jan 2017 23:11:34 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e59fd88d189bff610257a51ba6a77c79be17796d418a629311952e45f6c4e`  
		Last Modified: Tue, 24 Jan 2017 23:14:52 GMT  
		Size: 2.4 MB (2376989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03a515d8c2238b13bd949ee563780e49273fbedad2b2850f0e6cf315f3abdaa`  
		Last Modified: Tue, 24 Jan 2017 23:15:07 GMT  
		Size: 75.8 MB (75778611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec3bdafa29888316b1a50df1212f46eff13a14ba8fda69f8a53643e28daf177`  
		Last Modified: Tue, 24 Jan 2017 23:14:50 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8e924ce497b59e4898a5856e40ed5b4b420d191011f3f8540c28cdcbc2ec77`  
		Last Modified: Tue, 24 Jan 2017 23:16:15 GMT  
		Size: 15.5 MB (15498971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6cc055e24255abf581a45b7d4826b5ae2d4adf087dd2f1e911e14e8f94418a`  
		Last Modified: Tue, 24 Jan 2017 23:16:13 GMT  
		Size: 4.1 MB (4066011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:f9690adaf863d59b780932dbf68ab44868fa808a4a608cc8e8cd99c58e6a2e46
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.9 MB (265922436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e97c165770721c3a8adfeea2b0203b67cd2bf64e985866d1eef7d1b4f9e549`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_MAJOR=2.2
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 17 Jan 2017 20:17:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Tue, 24 Jan 2017 20:14:22 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:16:53 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:16:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:16:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:16:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:16:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:16:57 GMT
CMD ["irb"]
# Tue, 24 Jan 2017 23:02:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 24 Jan 2017 23:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 24 Jan 2017 23:03:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 24 Jan 2017 23:03:16 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 24 Jan 2017 23:03:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 24 Jan 2017 23:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 23:03:50 GMT
ENV RAILS_ENV=production
# Tue, 24 Jan 2017 23:03:51 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_VERSION=3.3.2
# Tue, 24 Jan 2017 23:09:07 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Tue, 24 Jan 2017 23:09:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 24 Jan 2017 23:11:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:11:18 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Jan 2017 23:11:19 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 24 Jan 2017 23:11:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Jan 2017 23:11:19 GMT
EXPOSE 3000/tcp
# Tue, 24 Jan 2017 23:11:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 24 Jan 2017 23:11:20 GMT
ENV PASSENGER_VERSION=5.1.1
# Tue, 24 Jan 2017 23:11:33 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Jan 2017 23:11:34 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 24 Jan 2017 23:11:34 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c588799b12a44b94535e22c24ed52e730c117e69851c2549b94864816c2717`  
		Last Modified: Tue, 24 Jan 2017 20:38:58 GMT  
		Size: 33.3 MB (33319219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f04d6fa693f7e6251f1392968eb5b541443838e53781a42f7eb20fa2fbfbd`  
		Last Modified: Tue, 24 Jan 2017 20:38:45 GMT  
		Size: 631.4 KB (631367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96f442ea7ef033ec31cf4e76151925ba4e984fc4ce545182eed9496fa7424de`  
		Last Modified: Tue, 24 Jan 2017 20:38:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa99a543362e69a0371adbb15b5587a79429b03661a3ec63eca0578004fd8fe`  
		Last Modified: Tue, 24 Jan 2017 23:11:56 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d528bcd57157d740fdbddcc8d4cc1b6519722fceb8e663bbaeca0b7fd50fd7`  
		Last Modified: Tue, 24 Jan 2017 23:12:00 GMT  
		Size: 13.9 MB (13863607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d345d743277e0c2b72ef76da70c3c43fb2f8cf51361cdcf23c50f848239da8`  
		Last Modified: Tue, 24 Jan 2017 23:11:55 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaba273cd7fcd963d5f597188b3291a02012e2f8edf6d3379c79f05069678c7d`  
		Last Modified: Tue, 24 Jan 2017 23:11:54 GMT  
		Size: 7.1 KB (7117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a214e1eac67d40e87ea81f1cb4e072c95f0942bce7354dc47d84bbff8796ebf`  
		Last Modified: Tue, 24 Jan 2017 23:12:11 GMT  
		Size: 58.2 MB (58213097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ff44948ea8c84b6d9808b468d551cdf0e5bd28ee0e0012c42d8a82a41a653`  
		Last Modified: Tue, 24 Jan 2017 23:11:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26e59fd88d189bff610257a51ba6a77c79be17796d418a629311952e45f6c4e`  
		Last Modified: Tue, 24 Jan 2017 23:14:52 GMT  
		Size: 2.4 MB (2376989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03a515d8c2238b13bd949ee563780e49273fbedad2b2850f0e6cf315f3abdaa`  
		Last Modified: Tue, 24 Jan 2017 23:15:07 GMT  
		Size: 75.8 MB (75778611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec3bdafa29888316b1a50df1212f46eff13a14ba8fda69f8a53643e28daf177`  
		Last Modified: Tue, 24 Jan 2017 23:14:50 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8e924ce497b59e4898a5856e40ed5b4b420d191011f3f8540c28cdcbc2ec77`  
		Last Modified: Tue, 24 Jan 2017 23:16:15 GMT  
		Size: 15.5 MB (15498971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6cc055e24255abf581a45b7d4826b5ae2d4adf087dd2f1e911e14e8f94418a`  
		Last Modified: Tue, 24 Jan 2017 23:16:13 GMT  
		Size: 4.1 MB (4066011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
