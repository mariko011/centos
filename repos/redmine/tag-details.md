<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3.1.7`](#redmine317)
-	[`redmine:3.1`](#redmine31)
-	[`redmine:3.1.7-passenger`](#redmine317-passenger)
-	[`redmine:3.1-passenger`](#redmine31-passenger)
-	[`redmine:3.2.4`](#redmine324)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.4-passenger`](#redmine324-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3.1`](#redmine331)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3`](#redmine3)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:3.3.1-passenger`](#redmine331-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:35d78970c5a7e2a5df66e4fedae58fb9996af78110ad185c7bfdf10a8e6b2189
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.2 MB (237223382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2f574fab68b3ecb056f35bcc6459f44405dbc1fd5917c48f059362612ba331`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:08:58 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 06 Jan 2017 19:08:59 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 06 Jan 2017 19:09:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:11:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:11:04 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:11:05 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:11:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:11:06 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:11:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a688a65d558b3d150760fb8d0fc4a531c4f2af6fa3973ff8a460a3c3afeda5bf`  
		Last Modified: Fri, 06 Jan 2017 19:17:06 GMT  
		Size: 2.3 MB (2273013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a84dcea184f177e9f69b6d451a8644f8c2c4eb270b63fcdf18b1fc76fccdfc`  
		Last Modified: Fri, 06 Jan 2017 19:17:22 GMT  
		Size: 66.8 MB (66819104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa75644c4cba71f046bfa6905debfe0635665f31b87ac9464e5bcd3bbb204b4`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:35d78970c5a7e2a5df66e4fedae58fb9996af78110ad185c7bfdf10a8e6b2189
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.2 MB (237223382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2f574fab68b3ecb056f35bcc6459f44405dbc1fd5917c48f059362612ba331`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:08:58 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 06 Jan 2017 19:08:59 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 06 Jan 2017 19:09:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:11:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:11:04 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:11:05 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:11:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:11:06 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:11:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a688a65d558b3d150760fb8d0fc4a531c4f2af6fa3973ff8a460a3c3afeda5bf`  
		Last Modified: Fri, 06 Jan 2017 19:17:06 GMT  
		Size: 2.3 MB (2273013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a84dcea184f177e9f69b6d451a8644f8c2c4eb270b63fcdf18b1fc76fccdfc`  
		Last Modified: Fri, 06 Jan 2017 19:17:22 GMT  
		Size: 66.8 MB (66819104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa75644c4cba71f046bfa6905debfe0635665f31b87ac9464e5bcd3bbb204b4`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:b9f23891e0f0bdef34d520542ace5a2cf021264bd664076f530968cea4497305
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.8 MB (256788604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:733b9361600b1296d8602c7551d2ef0e075ea758757f974164d5e987d31d957f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:08:58 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 06 Jan 2017 19:08:59 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 06 Jan 2017 19:09:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:11:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:11:04 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:11:05 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:11:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:11:06 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:11:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 06 Jan 2017 19:11:07 GMT
ENV PASSENGER_VERSION=5.1.1
# Fri, 06 Jan 2017 19:11:21 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:11:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 06 Jan 2017 19:11:23 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a688a65d558b3d150760fb8d0fc4a531c4f2af6fa3973ff8a460a3c3afeda5bf`  
		Last Modified: Fri, 06 Jan 2017 19:17:06 GMT  
		Size: 2.3 MB (2273013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a84dcea184f177e9f69b6d451a8644f8c2c4eb270b63fcdf18b1fc76fccdfc`  
		Last Modified: Fri, 06 Jan 2017 19:17:22 GMT  
		Size: 66.8 MB (66819104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa75644c4cba71f046bfa6905debfe0635665f31b87ac9464e5bcd3bbb204b4`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c7f850ee4366312f9df64974ded3214d2ce2fe26ecb8ddca45695546a2d6032`  
		Last Modified: Fri, 06 Jan 2017 19:18:04 GMT  
		Size: 15.5 MB (15499216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7d627e8ff2083e8ac078bf6155bf0b271737ccae11204736c6709425cdae67`  
		Last Modified: Fri, 06 Jan 2017 19:18:02 GMT  
		Size: 4.1 MB (4066006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:b9f23891e0f0bdef34d520542ace5a2cf021264bd664076f530968cea4497305
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.8 MB (256788604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:733b9361600b1296d8602c7551d2ef0e075ea758757f974164d5e987d31d957f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:08:58 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 06 Jan 2017 19:08:59 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 06 Jan 2017 19:09:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:11:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:11:04 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:11:05 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:11:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:11:06 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:11:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 06 Jan 2017 19:11:07 GMT
ENV PASSENGER_VERSION=5.1.1
# Fri, 06 Jan 2017 19:11:21 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:11:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 06 Jan 2017 19:11:23 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a688a65d558b3d150760fb8d0fc4a531c4f2af6fa3973ff8a460a3c3afeda5bf`  
		Last Modified: Fri, 06 Jan 2017 19:17:06 GMT  
		Size: 2.3 MB (2273013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a84dcea184f177e9f69b6d451a8644f8c2c4eb270b63fcdf18b1fc76fccdfc`  
		Last Modified: Fri, 06 Jan 2017 19:17:22 GMT  
		Size: 66.8 MB (66819104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa75644c4cba71f046bfa6905debfe0635665f31b87ac9464e5bcd3bbb204b4`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c7f850ee4366312f9df64974ded3214d2ce2fe26ecb8ddca45695546a2d6032`  
		Last Modified: Fri, 06 Jan 2017 19:18:04 GMT  
		Size: 15.5 MB (15499216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7d627e8ff2083e8ac078bf6155bf0b271737ccae11204736c6709425cdae67`  
		Last Modified: Fri, 06 Jan 2017 19:18:02 GMT  
		Size: 4.1 MB (4066006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.4`

```console
$ docker pull redmine@sha256:ca109b799fefe4f3f692df73801023d6ff73cb9014ddd5ee3f28204ddfcb58da
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246077434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d001af14508f52ffa14ea17c835d07396fac794be69e6848181c6615a6ce2ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:11:24 GMT
ENV REDMINE_VERSION=3.2.4
# Fri, 06 Jan 2017 19:11:24 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Fri, 06 Jan 2017 19:11:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:13:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:13:48 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:13:49 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:13:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:13:50 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:13:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e6ce9a2ca4473a89f19606b122cbd95c4ef55351ae706d3482c8bb85304b1a`  
		Last Modified: Fri, 06 Jan 2017 19:18:41 GMT  
		Size: 2.3 MB (2330248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87509b3293c20b6d0edb7cfebbdf8c7eb0f1d211ea3c4e892c90d2b8845ffbd`  
		Last Modified: Fri, 06 Jan 2017 19:18:55 GMT  
		Size: 75.6 MB (75615923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cdc187c575378c145d441abcb4c2634fa594ea176fd84446f44799a246514`  
		Last Modified: Fri, 06 Jan 2017 19:18:40 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:ca109b799fefe4f3f692df73801023d6ff73cb9014ddd5ee3f28204ddfcb58da
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246077434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d001af14508f52ffa14ea17c835d07396fac794be69e6848181c6615a6ce2ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:11:24 GMT
ENV REDMINE_VERSION=3.2.4
# Fri, 06 Jan 2017 19:11:24 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Fri, 06 Jan 2017 19:11:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:13:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:13:48 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:13:49 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:13:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:13:50 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:13:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e6ce9a2ca4473a89f19606b122cbd95c4ef55351ae706d3482c8bb85304b1a`  
		Last Modified: Fri, 06 Jan 2017 19:18:41 GMT  
		Size: 2.3 MB (2330248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87509b3293c20b6d0edb7cfebbdf8c7eb0f1d211ea3c4e892c90d2b8845ffbd`  
		Last Modified: Fri, 06 Jan 2017 19:18:55 GMT  
		Size: 75.6 MB (75615923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cdc187c575378c145d441abcb4c2634fa594ea176fd84446f44799a246514`  
		Last Modified: Fri, 06 Jan 2017 19:18:40 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.4-passenger`

```console
$ docker pull redmine@sha256:03ae54f5d935ddb853041d6ab7fe04ac45e3f01ead4c6bb6ae3d6aeedccc0551
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.4-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265642684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990ab73ba0b356dd44b6844bbfca72d25df0b91258262ebf8ab57a0b9bd1169e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:11:24 GMT
ENV REDMINE_VERSION=3.2.4
# Fri, 06 Jan 2017 19:11:24 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Fri, 06 Jan 2017 19:11:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:13:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:13:48 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:13:49 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:13:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:13:50 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:13:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 06 Jan 2017 19:13:51 GMT
ENV PASSENGER_VERSION=5.1.1
# Fri, 06 Jan 2017 19:14:05 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:14:07 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 06 Jan 2017 19:14:07 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e6ce9a2ca4473a89f19606b122cbd95c4ef55351ae706d3482c8bb85304b1a`  
		Last Modified: Fri, 06 Jan 2017 19:18:41 GMT  
		Size: 2.3 MB (2330248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87509b3293c20b6d0edb7cfebbdf8c7eb0f1d211ea3c4e892c90d2b8845ffbd`  
		Last Modified: Fri, 06 Jan 2017 19:18:55 GMT  
		Size: 75.6 MB (75615923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cdc187c575378c145d441abcb4c2634fa594ea176fd84446f44799a246514`  
		Last Modified: Fri, 06 Jan 2017 19:18:40 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff2ff5b2e38d9bff6f34a66a7ae5b930c220e79ef159bf6c56502bc572ee25c`  
		Last Modified: Fri, 06 Jan 2017 19:19:37 GMT  
		Size: 15.5 MB (15499248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95ca687a22059b1c53bf711633eb03c91c3a488e4b881de14cce5d57cebcb22`  
		Last Modified: Fri, 06 Jan 2017 19:19:33 GMT  
		Size: 4.1 MB (4066002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:03ae54f5d935ddb853041d6ab7fe04ac45e3f01ead4c6bb6ae3d6aeedccc0551
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265642684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990ab73ba0b356dd44b6844bbfca72d25df0b91258262ebf8ab57a0b9bd1169e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:11:24 GMT
ENV REDMINE_VERSION=3.2.4
# Fri, 06 Jan 2017 19:11:24 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Fri, 06 Jan 2017 19:11:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:13:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:13:48 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:13:49 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:13:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:13:50 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:13:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 06 Jan 2017 19:13:51 GMT
ENV PASSENGER_VERSION=5.1.1
# Fri, 06 Jan 2017 19:14:05 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:14:07 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 06 Jan 2017 19:14:07 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e6ce9a2ca4473a89f19606b122cbd95c4ef55351ae706d3482c8bb85304b1a`  
		Last Modified: Fri, 06 Jan 2017 19:18:41 GMT  
		Size: 2.3 MB (2330248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87509b3293c20b6d0edb7cfebbdf8c7eb0f1d211ea3c4e892c90d2b8845ffbd`  
		Last Modified: Fri, 06 Jan 2017 19:18:55 GMT  
		Size: 75.6 MB (75615923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cdc187c575378c145d441abcb4c2634fa594ea176fd84446f44799a246514`  
		Last Modified: Fri, 06 Jan 2017 19:18:40 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff2ff5b2e38d9bff6f34a66a7ae5b930c220e79ef159bf6c56502bc572ee25c`  
		Last Modified: Fri, 06 Jan 2017 19:19:37 GMT  
		Size: 15.5 MB (15499248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95ca687a22059b1c53bf711633eb03c91c3a488e4b881de14cce5d57cebcb22`  
		Last Modified: Fri, 06 Jan 2017 19:19:33 GMT  
		Size: 4.1 MB (4066002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.1`

```console
$ docker pull redmine@sha256:f5a40e55d464e30aedc8fc1cbe35c472c6a9102feb490018ff878302d98f85ab
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246119878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71dcac7b5e5d17b9527725ab8bcb8a5cbde94d086610d05c1454b1f9ee545d01`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 06 Jan 2017 19:14:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:16:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:16:31 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:16:32 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:16:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:16:32 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:16:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c127ae38212e34bf474b23181288242f5c59b819eda866abb25d1a1b58269548`  
		Last Modified: Fri, 06 Jan 2017 19:20:13 GMT  
		Size: 2.4 MB (2372943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dd642bcca081e274c764328979adb601dd6558b723d5b87d7da80e05b12b9b`  
		Last Modified: Fri, 06 Jan 2017 19:20:26 GMT  
		Size: 75.6 MB (75615671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3d808153fd8ee9cdacba23b073980507c7598cc9716a71e555b8b18b438515`  
		Last Modified: Fri, 06 Jan 2017 19:20:12 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:f5a40e55d464e30aedc8fc1cbe35c472c6a9102feb490018ff878302d98f85ab
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246119878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71dcac7b5e5d17b9527725ab8bcb8a5cbde94d086610d05c1454b1f9ee545d01`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 06 Jan 2017 19:14:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:16:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:16:31 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:16:32 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:16:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:16:32 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:16:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c127ae38212e34bf474b23181288242f5c59b819eda866abb25d1a1b58269548`  
		Last Modified: Fri, 06 Jan 2017 19:20:13 GMT  
		Size: 2.4 MB (2372943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dd642bcca081e274c764328979adb601dd6558b723d5b87d7da80e05b12b9b`  
		Last Modified: Fri, 06 Jan 2017 19:20:26 GMT  
		Size: 75.6 MB (75615671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3d808153fd8ee9cdacba23b073980507c7598cc9716a71e555b8b18b438515`  
		Last Modified: Fri, 06 Jan 2017 19:20:12 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:f5a40e55d464e30aedc8fc1cbe35c472c6a9102feb490018ff878302d98f85ab
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246119878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71dcac7b5e5d17b9527725ab8bcb8a5cbde94d086610d05c1454b1f9ee545d01`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 06 Jan 2017 19:14:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:16:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:16:31 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:16:32 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:16:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:16:32 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:16:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c127ae38212e34bf474b23181288242f5c59b819eda866abb25d1a1b58269548`  
		Last Modified: Fri, 06 Jan 2017 19:20:13 GMT  
		Size: 2.4 MB (2372943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dd642bcca081e274c764328979adb601dd6558b723d5b87d7da80e05b12b9b`  
		Last Modified: Fri, 06 Jan 2017 19:20:26 GMT  
		Size: 75.6 MB (75615671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3d808153fd8ee9cdacba23b073980507c7598cc9716a71e555b8b18b438515`  
		Last Modified: Fri, 06 Jan 2017 19:20:12 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:f5a40e55d464e30aedc8fc1cbe35c472c6a9102feb490018ff878302d98f85ab
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246119878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71dcac7b5e5d17b9527725ab8bcb8a5cbde94d086610d05c1454b1f9ee545d01`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 06 Jan 2017 19:14:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:16:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:16:31 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:16:32 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:16:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:16:32 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:16:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c127ae38212e34bf474b23181288242f5c59b819eda866abb25d1a1b58269548`  
		Last Modified: Fri, 06 Jan 2017 19:20:13 GMT  
		Size: 2.4 MB (2372943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dd642bcca081e274c764328979adb601dd6558b723d5b87d7da80e05b12b9b`  
		Last Modified: Fri, 06 Jan 2017 19:20:26 GMT  
		Size: 75.6 MB (75615671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3d808153fd8ee9cdacba23b073980507c7598cc9716a71e555b8b18b438515`  
		Last Modified: Fri, 06 Jan 2017 19:20:12 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.1-passenger`

```console
$ docker pull redmine@sha256:a06800b3894c875d7cf0d7d50c3f23350a98837c74c34a43df9f1d645857196a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.1-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265685133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f07fd2ed7a98f764fe44b9711255a6daaaa1c5d3c906b1fb1284e148f5df4c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 06 Jan 2017 19:14:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:16:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:16:31 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:16:32 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:16:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:16:32 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:16:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 06 Jan 2017 19:16:33 GMT
ENV PASSENGER_VERSION=5.1.1
# Fri, 06 Jan 2017 19:16:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:16:47 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 06 Jan 2017 19:16:48 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c127ae38212e34bf474b23181288242f5c59b819eda866abb25d1a1b58269548`  
		Last Modified: Fri, 06 Jan 2017 19:20:13 GMT  
		Size: 2.4 MB (2372943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dd642bcca081e274c764328979adb601dd6558b723d5b87d7da80e05b12b9b`  
		Last Modified: Fri, 06 Jan 2017 19:20:26 GMT  
		Size: 75.6 MB (75615671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3d808153fd8ee9cdacba23b073980507c7598cc9716a71e555b8b18b438515`  
		Last Modified: Fri, 06 Jan 2017 19:20:12 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb2e37bad2f72364f41332a39c8b70b6549ea13c156530825f155d4208b1da`  
		Last Modified: Fri, 06 Jan 2017 19:21:31 GMT  
		Size: 15.5 MB (15499257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff5cef866f5197decd12274b7bab90c1103bcff30713f1e7bd41ded7c925538`  
		Last Modified: Fri, 06 Jan 2017 19:21:30 GMT  
		Size: 4.1 MB (4065998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:a06800b3894c875d7cf0d7d50c3f23350a98837c74c34a43df9f1d645857196a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265685133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f07fd2ed7a98f764fe44b9711255a6daaaa1c5d3c906b1fb1284e148f5df4c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 06 Jan 2017 19:14:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:16:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:16:31 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:16:32 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:16:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:16:32 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:16:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 06 Jan 2017 19:16:33 GMT
ENV PASSENGER_VERSION=5.1.1
# Fri, 06 Jan 2017 19:16:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:16:47 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 06 Jan 2017 19:16:48 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c127ae38212e34bf474b23181288242f5c59b819eda866abb25d1a1b58269548`  
		Last Modified: Fri, 06 Jan 2017 19:20:13 GMT  
		Size: 2.4 MB (2372943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dd642bcca081e274c764328979adb601dd6558b723d5b87d7da80e05b12b9b`  
		Last Modified: Fri, 06 Jan 2017 19:20:26 GMT  
		Size: 75.6 MB (75615671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3d808153fd8ee9cdacba23b073980507c7598cc9716a71e555b8b18b438515`  
		Last Modified: Fri, 06 Jan 2017 19:20:12 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb2e37bad2f72364f41332a39c8b70b6549ea13c156530825f155d4208b1da`  
		Last Modified: Fri, 06 Jan 2017 19:21:31 GMT  
		Size: 15.5 MB (15499257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff5cef866f5197decd12274b7bab90c1103bcff30713f1e7bd41ded7c925538`  
		Last Modified: Fri, 06 Jan 2017 19:21:30 GMT  
		Size: 4.1 MB (4065998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:a06800b3894c875d7cf0d7d50c3f23350a98837c74c34a43df9f1d645857196a
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265685133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f07fd2ed7a98f764fe44b9711255a6daaaa1c5d3c906b1fb1284e148f5df4c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 06 Jan 2017 19:14:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:16:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:16:31 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:16:32 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:16:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:16:32 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:16:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 06 Jan 2017 19:16:33 GMT
ENV PASSENGER_VERSION=5.1.1
# Fri, 06 Jan 2017 19:16:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:16:47 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 06 Jan 2017 19:16:48 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c127ae38212e34bf474b23181288242f5c59b819eda866abb25d1a1b58269548`  
		Last Modified: Fri, 06 Jan 2017 19:20:13 GMT  
		Size: 2.4 MB (2372943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dd642bcca081e274c764328979adb601dd6558b723d5b87d7da80e05b12b9b`  
		Last Modified: Fri, 06 Jan 2017 19:20:26 GMT  
		Size: 75.6 MB (75615671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3d808153fd8ee9cdacba23b073980507c7598cc9716a71e555b8b18b438515`  
		Last Modified: Fri, 06 Jan 2017 19:20:12 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb2e37bad2f72364f41332a39c8b70b6549ea13c156530825f155d4208b1da`  
		Last Modified: Fri, 06 Jan 2017 19:21:31 GMT  
		Size: 15.5 MB (15499257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff5cef866f5197decd12274b7bab90c1103bcff30713f1e7bd41ded7c925538`  
		Last Modified: Fri, 06 Jan 2017 19:21:30 GMT  
		Size: 4.1 MB (4065998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:a06800b3894c875d7cf0d7d50c3f23350a98837c74c34a43df9f1d645857196a
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265685133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f07fd2ed7a98f764fe44b9711255a6daaaa1c5d3c906b1fb1284e148f5df4c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 06 Jan 2017 19:14:08 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 06 Jan 2017 19:14:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 06 Jan 2017 19:16:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:16:31 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Jan 2017 19:16:32 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 06 Jan 2017 19:16:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jan 2017 19:16:32 GMT
EXPOSE 3000/tcp
# Fri, 06 Jan 2017 19:16:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 06 Jan 2017 19:16:33 GMT
ENV PASSENGER_VERSION=5.1.1
# Fri, 06 Jan 2017 19:16:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 19:16:47 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 06 Jan 2017 19:16:48 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c127ae38212e34bf474b23181288242f5c59b819eda866abb25d1a1b58269548`  
		Last Modified: Fri, 06 Jan 2017 19:20:13 GMT  
		Size: 2.4 MB (2372943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dd642bcca081e274c764328979adb601dd6558b723d5b87d7da80e05b12b9b`  
		Last Modified: Fri, 06 Jan 2017 19:20:26 GMT  
		Size: 75.6 MB (75615671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3d808153fd8ee9cdacba23b073980507c7598cc9716a71e555b8b18b438515`  
		Last Modified: Fri, 06 Jan 2017 19:20:12 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb2e37bad2f72364f41332a39c8b70b6549ea13c156530825f155d4208b1da`  
		Last Modified: Fri, 06 Jan 2017 19:21:31 GMT  
		Size: 15.5 MB (15499257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff5cef866f5197decd12274b7bab90c1103bcff30713f1e7bd41ded7c925538`  
		Last Modified: Fri, 06 Jan 2017 19:21:30 GMT  
		Size: 4.1 MB (4065998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
