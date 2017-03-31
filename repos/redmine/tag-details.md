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
$ docker pull redmine@sha256:08f3afd2d508f98c6313543086b9594fb794b2f605b560e22578dca43088a3d3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237482790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e3bdd92be3e0d48ee9a0f3f1ce1aed3a12ee235ffb91ba51d1a99d5962766a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 18:58:20 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 31 Mar 2017 18:58:21 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 31 Mar 2017 18:58:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:00:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:00:39 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:00:39 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:00:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:00:41 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:00:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f5febd8084cdee4e5065226bd655bc2b390ffad42fef447682e82958ae3ebb`  
		Last Modified: Fri, 31 Mar 2017 19:12:27 GMT  
		Size: 2.3 MB (2273010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499741e1942be4f6c5df0804f2df103960f447b7dc7fd0a5438c9b8ffd0be583`  
		Last Modified: Fri, 31 Mar 2017 19:12:43 GMT  
		Size: 66.7 MB (66681687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eaa52c2dee62971c542142d0d0b594f114cf8a1043a7f48b4706974d80dd566`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:08f3afd2d508f98c6313543086b9594fb794b2f605b560e22578dca43088a3d3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237482790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e3bdd92be3e0d48ee9a0f3f1ce1aed3a12ee235ffb91ba51d1a99d5962766a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 18:58:20 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 31 Mar 2017 18:58:21 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 31 Mar 2017 18:58:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:00:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:00:39 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:00:39 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:00:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:00:41 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:00:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f5febd8084cdee4e5065226bd655bc2b390ffad42fef447682e82958ae3ebb`  
		Last Modified: Fri, 31 Mar 2017 19:12:27 GMT  
		Size: 2.3 MB (2273010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499741e1942be4f6c5df0804f2df103960f447b7dc7fd0a5438c9b8ffd0be583`  
		Last Modified: Fri, 31 Mar 2017 19:12:43 GMT  
		Size: 66.7 MB (66681687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eaa52c2dee62971c542142d0d0b594f114cf8a1043a7f48b4706974d80dd566`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:fe77ebdbf7aea3d9e7ce381f6d9f1dc3f9aea2b5cc3093ae76285bc3ea27b01b
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257054421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51aafc62b11da3ed3978db592d5f79efc992646944ab8fc9349cb43d10132c8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 18:58:20 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 31 Mar 2017 18:58:21 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 31 Mar 2017 18:58:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:00:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:00:39 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:00:39 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:00:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:00:41 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:00:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 31 Mar 2017 19:00:42 GMT
ENV PASSENGER_VERSION=5.1.2
# Fri, 31 Mar 2017 19:00:55 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:00:57 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 31 Mar 2017 19:00:57 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f5febd8084cdee4e5065226bd655bc2b390ffad42fef447682e82958ae3ebb`  
		Last Modified: Fri, 31 Mar 2017 19:12:27 GMT  
		Size: 2.3 MB (2273010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499741e1942be4f6c5df0804f2df103960f447b7dc7fd0a5438c9b8ffd0be583`  
		Last Modified: Fri, 31 Mar 2017 19:12:43 GMT  
		Size: 66.7 MB (66681687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eaa52c2dee62971c542142d0d0b594f114cf8a1043a7f48b4706974d80dd566`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e53796d8d340593698ede0b7e34ce106d093e3bc3e3c99ade9d4b36d2d60a38`  
		Last Modified: Fri, 31 Mar 2017 19:13:39 GMT  
		Size: 15.5 MB (15505422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d90e7d28f36d72f4b7b532d8a97c1a61461c3c20d367051d3c2154c81d1169`  
		Last Modified: Fri, 31 Mar 2017 19:13:38 GMT  
		Size: 4.1 MB (4066209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:fe77ebdbf7aea3d9e7ce381f6d9f1dc3f9aea2b5cc3093ae76285bc3ea27b01b
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257054421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51aafc62b11da3ed3978db592d5f79efc992646944ab8fc9349cb43d10132c8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 18:58:20 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 31 Mar 2017 18:58:21 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 31 Mar 2017 18:58:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:00:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:00:39 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:00:39 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:00:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:00:41 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:00:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 31 Mar 2017 19:00:42 GMT
ENV PASSENGER_VERSION=5.1.2
# Fri, 31 Mar 2017 19:00:55 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:00:57 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 31 Mar 2017 19:00:57 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f5febd8084cdee4e5065226bd655bc2b390ffad42fef447682e82958ae3ebb`  
		Last Modified: Fri, 31 Mar 2017 19:12:27 GMT  
		Size: 2.3 MB (2273010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499741e1942be4f6c5df0804f2df103960f447b7dc7fd0a5438c9b8ffd0be583`  
		Last Modified: Fri, 31 Mar 2017 19:12:43 GMT  
		Size: 66.7 MB (66681687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eaa52c2dee62971c542142d0d0b594f114cf8a1043a7f48b4706974d80dd566`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e53796d8d340593698ede0b7e34ce106d093e3bc3e3c99ade9d4b36d2d60a38`  
		Last Modified: Fri, 31 Mar 2017 19:13:39 GMT  
		Size: 15.5 MB (15505422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d90e7d28f36d72f4b7b532d8a97c1a61461c3c20d367051d3c2154c81d1169`  
		Last Modified: Fri, 31 Mar 2017 19:13:38 GMT  
		Size: 4.1 MB (4066209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.5`

```console
$ docker pull redmine@sha256:c20956e65cf7ca3fdf550b297fefa9ae4ab1465175a6dc3cb919574bfe554ec0
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246831005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d39947384d0e159d41031403df4b4021d1f519e5a72daadf90a57a86397095`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 19:00:58 GMT
ENV REDMINE_VERSION=3.2.5
# Fri, 31 Mar 2017 19:00:59 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Fri, 31 Mar 2017 19:01:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:03:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:03:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:03:20 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:03:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:03:22 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:03:22 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b40c860c0818aafc7117c9d9e96cb4be555f59987c8fcdb378083090437e7be`  
		Last Modified: Fri, 31 Mar 2017 19:14:24 GMT  
		Size: 2.3 MB (2334511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879532fee3dcb47007e02ab0433d9bee87a0a81e234e9386aec2a2bb2f6c1d`  
		Last Modified: Fri, 31 Mar 2017 19:14:37 GMT  
		Size: 76.0 MB (75968399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e477f9ab1a416b684c19e213a320f19fa8de0105dfc2079b08ecc8f3e5ad00`  
		Last Modified: Fri, 31 Mar 2017 19:14:23 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:c20956e65cf7ca3fdf550b297fefa9ae4ab1465175a6dc3cb919574bfe554ec0
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246831005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d39947384d0e159d41031403df4b4021d1f519e5a72daadf90a57a86397095`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 19:00:58 GMT
ENV REDMINE_VERSION=3.2.5
# Fri, 31 Mar 2017 19:00:59 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Fri, 31 Mar 2017 19:01:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:03:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:03:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:03:20 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:03:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:03:22 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:03:22 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b40c860c0818aafc7117c9d9e96cb4be555f59987c8fcdb378083090437e7be`  
		Last Modified: Fri, 31 Mar 2017 19:14:24 GMT  
		Size: 2.3 MB (2334511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879532fee3dcb47007e02ab0433d9bee87a0a81e234e9386aec2a2bb2f6c1d`  
		Last Modified: Fri, 31 Mar 2017 19:14:37 GMT  
		Size: 76.0 MB (75968399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e477f9ab1a416b684c19e213a320f19fa8de0105dfc2079b08ecc8f3e5ad00`  
		Last Modified: Fri, 31 Mar 2017 19:14:23 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.5-passenger`

```console
$ docker pull redmine@sha256:8ad72480fd0d5ca27e70537cf04721bcc378c54f6c9894150f298e66e8bf9589
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.5-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266402596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bcdb8bc914e1989b029f0db8eeaed2a4ec3323b601c072d61e2d9d0dd2d9918`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 19:00:58 GMT
ENV REDMINE_VERSION=3.2.5
# Fri, 31 Mar 2017 19:00:59 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Fri, 31 Mar 2017 19:01:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:03:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:03:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:03:20 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:03:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:03:22 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:03:22 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 31 Mar 2017 19:03:23 GMT
ENV PASSENGER_VERSION=5.1.2
# Fri, 31 Mar 2017 19:03:36 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:03:38 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 31 Mar 2017 19:03:38 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b40c860c0818aafc7117c9d9e96cb4be555f59987c8fcdb378083090437e7be`  
		Last Modified: Fri, 31 Mar 2017 19:14:24 GMT  
		Size: 2.3 MB (2334511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879532fee3dcb47007e02ab0433d9bee87a0a81e234e9386aec2a2bb2f6c1d`  
		Last Modified: Fri, 31 Mar 2017 19:14:37 GMT  
		Size: 76.0 MB (75968399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e477f9ab1a416b684c19e213a320f19fa8de0105dfc2079b08ecc8f3e5ad00`  
		Last Modified: Fri, 31 Mar 2017 19:14:23 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25da8b98a563d485c0b4d0f2208bff5bc8a79367d2aaf7612dfdda9b4deca`  
		Last Modified: Fri, 31 Mar 2017 19:15:27 GMT  
		Size: 15.5 MB (15505377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb8538bbefed3a7f5ba21520ca6690e87ff6337f4791b9802fabdb3ab465a53`  
		Last Modified: Fri, 31 Mar 2017 19:15:25 GMT  
		Size: 4.1 MB (4066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:8ad72480fd0d5ca27e70537cf04721bcc378c54f6c9894150f298e66e8bf9589
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266402596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bcdb8bc914e1989b029f0db8eeaed2a4ec3323b601c072d61e2d9d0dd2d9918`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 19:00:58 GMT
ENV REDMINE_VERSION=3.2.5
# Fri, 31 Mar 2017 19:00:59 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Fri, 31 Mar 2017 19:01:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:03:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:03:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:03:20 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:03:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:03:22 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:03:22 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 31 Mar 2017 19:03:23 GMT
ENV PASSENGER_VERSION=5.1.2
# Fri, 31 Mar 2017 19:03:36 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:03:38 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 31 Mar 2017 19:03:38 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b40c860c0818aafc7117c9d9e96cb4be555f59987c8fcdb378083090437e7be`  
		Last Modified: Fri, 31 Mar 2017 19:14:24 GMT  
		Size: 2.3 MB (2334511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879532fee3dcb47007e02ab0433d9bee87a0a81e234e9386aec2a2bb2f6c1d`  
		Last Modified: Fri, 31 Mar 2017 19:14:37 GMT  
		Size: 76.0 MB (75968399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e477f9ab1a416b684c19e213a320f19fa8de0105dfc2079b08ecc8f3e5ad00`  
		Last Modified: Fri, 31 Mar 2017 19:14:23 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25da8b98a563d485c0b4d0f2208bff5bc8a79367d2aaf7612dfdda9b4deca`  
		Last Modified: Fri, 31 Mar 2017 19:15:27 GMT  
		Size: 15.5 MB (15505377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb8538bbefed3a7f5ba21520ca6690e87ff6337f4791b9802fabdb3ab465a53`  
		Last Modified: Fri, 31 Mar 2017 19:15:25 GMT  
		Size: 4.1 MB (4066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.2`

```console
$ docker pull redmine@sha256:1be86c3a3ef790eaca28a665ab89422072966bdcec0de5631a5ac57d7d036b4b
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246873502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc32b7bbed62b7216a1d7d8eb41dfb67263fca139c31d00c0480d4320224c155`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 19:03:39 GMT
ENV REDMINE_VERSION=3.3.2
# Fri, 31 Mar 2017 19:03:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Fri, 31 Mar 2017 19:03:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:05:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:05:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:05:51 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:05:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:05:52 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:05:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9ac4be7e2b409016b9d2731edf1dc2d8d6ac628479b1582a538f0825be05da`  
		Last Modified: Fri, 31 Mar 2017 19:16:12 GMT  
		Size: 2.4 MB (2376992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f148171306b4690545e036685da75d05ec59c1b91ce761d4db63345df618af7`  
		Last Modified: Fri, 31 Mar 2017 19:16:27 GMT  
		Size: 76.0 MB (75968416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65e0439dadb9a1c737781eb69a32c675b6244bcba0b0af8302398dd0e30d63`  
		Last Modified: Fri, 31 Mar 2017 19:16:11 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:1be86c3a3ef790eaca28a665ab89422072966bdcec0de5631a5ac57d7d036b4b
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246873502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc32b7bbed62b7216a1d7d8eb41dfb67263fca139c31d00c0480d4320224c155`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 19:03:39 GMT
ENV REDMINE_VERSION=3.3.2
# Fri, 31 Mar 2017 19:03:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Fri, 31 Mar 2017 19:03:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:05:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:05:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:05:51 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:05:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:05:52 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:05:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9ac4be7e2b409016b9d2731edf1dc2d8d6ac628479b1582a538f0825be05da`  
		Last Modified: Fri, 31 Mar 2017 19:16:12 GMT  
		Size: 2.4 MB (2376992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f148171306b4690545e036685da75d05ec59c1b91ce761d4db63345df618af7`  
		Last Modified: Fri, 31 Mar 2017 19:16:27 GMT  
		Size: 76.0 MB (75968416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65e0439dadb9a1c737781eb69a32c675b6244bcba0b0af8302398dd0e30d63`  
		Last Modified: Fri, 31 Mar 2017 19:16:11 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:1be86c3a3ef790eaca28a665ab89422072966bdcec0de5631a5ac57d7d036b4b
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246873502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc32b7bbed62b7216a1d7d8eb41dfb67263fca139c31d00c0480d4320224c155`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 19:03:39 GMT
ENV REDMINE_VERSION=3.3.2
# Fri, 31 Mar 2017 19:03:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Fri, 31 Mar 2017 19:03:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:05:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:05:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:05:51 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:05:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:05:52 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:05:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9ac4be7e2b409016b9d2731edf1dc2d8d6ac628479b1582a538f0825be05da`  
		Last Modified: Fri, 31 Mar 2017 19:16:12 GMT  
		Size: 2.4 MB (2376992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f148171306b4690545e036685da75d05ec59c1b91ce761d4db63345df618af7`  
		Last Modified: Fri, 31 Mar 2017 19:16:27 GMT  
		Size: 76.0 MB (75968416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65e0439dadb9a1c737781eb69a32c675b6244bcba0b0af8302398dd0e30d63`  
		Last Modified: Fri, 31 Mar 2017 19:16:11 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:1be86c3a3ef790eaca28a665ab89422072966bdcec0de5631a5ac57d7d036b4b
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246873502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc32b7bbed62b7216a1d7d8eb41dfb67263fca139c31d00c0480d4320224c155`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 19:03:39 GMT
ENV REDMINE_VERSION=3.3.2
# Fri, 31 Mar 2017 19:03:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Fri, 31 Mar 2017 19:03:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:05:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:05:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:05:51 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:05:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:05:52 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:05:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9ac4be7e2b409016b9d2731edf1dc2d8d6ac628479b1582a538f0825be05da`  
		Last Modified: Fri, 31 Mar 2017 19:16:12 GMT  
		Size: 2.4 MB (2376992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f148171306b4690545e036685da75d05ec59c1b91ce761d4db63345df618af7`  
		Last Modified: Fri, 31 Mar 2017 19:16:27 GMT  
		Size: 76.0 MB (75968416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65e0439dadb9a1c737781eb69a32c675b6244bcba0b0af8302398dd0e30d63`  
		Last Modified: Fri, 31 Mar 2017 19:16:11 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.2-passenger`

```console
$ docker pull redmine@sha256:e8c7bae77df3961038e2c4006c2355bf1bb9d9bba178636efe0eb087b3fabcf5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.2-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266445262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816dfa22d0ab887eecfec90a2bbccd60f2ce9284ce098639f25fb30303ecd939`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 19:03:39 GMT
ENV REDMINE_VERSION=3.3.2
# Fri, 31 Mar 2017 19:03:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Fri, 31 Mar 2017 19:03:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:05:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:05:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:05:51 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:05:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:05:52 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:05:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 31 Mar 2017 19:05:53 GMT
ENV PASSENGER_VERSION=5.1.2
# Fri, 31 Mar 2017 19:06:06 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:06:08 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 31 Mar 2017 19:06:08 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9ac4be7e2b409016b9d2731edf1dc2d8d6ac628479b1582a538f0825be05da`  
		Last Modified: Fri, 31 Mar 2017 19:16:12 GMT  
		Size: 2.4 MB (2376992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f148171306b4690545e036685da75d05ec59c1b91ce761d4db63345df618af7`  
		Last Modified: Fri, 31 Mar 2017 19:16:27 GMT  
		Size: 76.0 MB (75968416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65e0439dadb9a1c737781eb69a32c675b6244bcba0b0af8302398dd0e30d63`  
		Last Modified: Fri, 31 Mar 2017 19:16:11 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef24bb815a6d443eefe908600ce3e818bf18a94efbf858128d87580837309d9`  
		Last Modified: Fri, 31 Mar 2017 19:17:59 GMT  
		Size: 15.5 MB (15505554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f079bceae249abfc86c19a96863b7f18cdce73ba53f362730efe3141fdc8d34`  
		Last Modified: Fri, 31 Mar 2017 19:17:55 GMT  
		Size: 4.1 MB (4066206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:e8c7bae77df3961038e2c4006c2355bf1bb9d9bba178636efe0eb087b3fabcf5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266445262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816dfa22d0ab887eecfec90a2bbccd60f2ce9284ce098639f25fb30303ecd939`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 19:03:39 GMT
ENV REDMINE_VERSION=3.3.2
# Fri, 31 Mar 2017 19:03:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Fri, 31 Mar 2017 19:03:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:05:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:05:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:05:51 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:05:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:05:52 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:05:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 31 Mar 2017 19:05:53 GMT
ENV PASSENGER_VERSION=5.1.2
# Fri, 31 Mar 2017 19:06:06 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:06:08 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 31 Mar 2017 19:06:08 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9ac4be7e2b409016b9d2731edf1dc2d8d6ac628479b1582a538f0825be05da`  
		Last Modified: Fri, 31 Mar 2017 19:16:12 GMT  
		Size: 2.4 MB (2376992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f148171306b4690545e036685da75d05ec59c1b91ce761d4db63345df618af7`  
		Last Modified: Fri, 31 Mar 2017 19:16:27 GMT  
		Size: 76.0 MB (75968416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65e0439dadb9a1c737781eb69a32c675b6244bcba0b0af8302398dd0e30d63`  
		Last Modified: Fri, 31 Mar 2017 19:16:11 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef24bb815a6d443eefe908600ce3e818bf18a94efbf858128d87580837309d9`  
		Last Modified: Fri, 31 Mar 2017 19:17:59 GMT  
		Size: 15.5 MB (15505554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f079bceae249abfc86c19a96863b7f18cdce73ba53f362730efe3141fdc8d34`  
		Last Modified: Fri, 31 Mar 2017 19:17:55 GMT  
		Size: 4.1 MB (4066206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:e8c7bae77df3961038e2c4006c2355bf1bb9d9bba178636efe0eb087b3fabcf5
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266445262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816dfa22d0ab887eecfec90a2bbccd60f2ce9284ce098639f25fb30303ecd939`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 19:03:39 GMT
ENV REDMINE_VERSION=3.3.2
# Fri, 31 Mar 2017 19:03:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Fri, 31 Mar 2017 19:03:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:05:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:05:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:05:51 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:05:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:05:52 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:05:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 31 Mar 2017 19:05:53 GMT
ENV PASSENGER_VERSION=5.1.2
# Fri, 31 Mar 2017 19:06:06 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:06:08 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 31 Mar 2017 19:06:08 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9ac4be7e2b409016b9d2731edf1dc2d8d6ac628479b1582a538f0825be05da`  
		Last Modified: Fri, 31 Mar 2017 19:16:12 GMT  
		Size: 2.4 MB (2376992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f148171306b4690545e036685da75d05ec59c1b91ce761d4db63345df618af7`  
		Last Modified: Fri, 31 Mar 2017 19:16:27 GMT  
		Size: 76.0 MB (75968416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65e0439dadb9a1c737781eb69a32c675b6244bcba0b0af8302398dd0e30d63`  
		Last Modified: Fri, 31 Mar 2017 19:16:11 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef24bb815a6d443eefe908600ce3e818bf18a94efbf858128d87580837309d9`  
		Last Modified: Fri, 31 Mar 2017 19:17:59 GMT  
		Size: 15.5 MB (15505554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f079bceae249abfc86c19a96863b7f18cdce73ba53f362730efe3141fdc8d34`  
		Last Modified: Fri, 31 Mar 2017 19:17:55 GMT  
		Size: 4.1 MB (4066206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:e8c7bae77df3961038e2c4006c2355bf1bb9d9bba178636efe0eb087b3fabcf5
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266445262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816dfa22d0ab887eecfec90a2bbccd60f2ce9284ce098639f25fb30303ecd939`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Thu, 30 Mar 2017 22:17:13 GMT
ENV RUBY_VERSION=2.2.7
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Thu, 30 Mar 2017 22:17:14 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Thu, 30 Mar 2017 22:19:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 30 Mar 2017 22:19:58 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 30 Mar 2017 22:19:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 30 Mar 2017 22:20:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 30 Mar 2017 22:20:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:20:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 30 Mar 2017 22:20:03 GMT
CMD ["irb"]
# Fri, 31 Mar 2017 18:57:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 31 Mar 2017 18:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:57:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 31 Mar 2017 18:57:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 31 Mar 2017 18:57:42 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 31 Mar 2017 18:57:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 31 Mar 2017 18:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 31 Mar 2017 18:58:19 GMT
ENV RAILS_ENV=production
# Fri, 31 Mar 2017 18:58:20 GMT
WORKDIR /usr/src/redmine
# Fri, 31 Mar 2017 19:03:39 GMT
ENV REDMINE_VERSION=3.3.2
# Fri, 31 Mar 2017 19:03:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Fri, 31 Mar 2017 19:03:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 31 Mar 2017 19:05:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:05:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 31 Mar 2017 19:05:51 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 31 Mar 2017 19:05:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Mar 2017 19:05:52 GMT
EXPOSE 3000/tcp
# Fri, 31 Mar 2017 19:05:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 31 Mar 2017 19:05:53 GMT
ENV PASSENGER_VERSION=5.1.2
# Fri, 31 Mar 2017 19:06:06 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 31 Mar 2017 19:06:08 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 31 Mar 2017 19:06:08 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baaa861eca06eccca1585a886a3bb167238c67301fdef2c3d8ac1bf5ebbe1ee`  
		Last Modified: Thu, 30 Mar 2017 22:34:08 GMT  
		Size: 33.4 MB (33413919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5d0cf5277fc2b0edc7a98007ce84b22f222c2de5e079fc48e11d73fc6699bd`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12c808919d5fdf4bcdfa5953399b4b1f8ecfe0f67adb15d3d2b743cdd6f3246`  
		Last Modified: Thu, 30 Mar 2017 22:33:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d71cf7c81f5805dfcbd3df9a3baf68316798394e0e8334941adaa8f93438b`  
		Last Modified: Fri, 31 Mar 2017 19:12:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00232bd6ef0013da91d992d651110def5161f3fa83ae0a12a55830e29f1a33fe`  
		Last Modified: Fri, 31 Mar 2017 19:12:35 GMT  
		Size: 13.9 MB (13864043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba794aa571780e71b5dcd9f4eb131c56d00f34d1a108615be966d7817b54e145`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94146934ee831201a483bf0021d82ce6569ecb5b2b6bce56f6a3e52fef5a5969`  
		Last Modified: Fri, 31 Mar 2017 19:12:28 GMT  
		Size: 7.1 KB (7126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df5435ebcbf99313b25564ee93b030d8d366bfcfad1546730451ef6c05cda8`  
		Last Modified: Fri, 31 Mar 2017 19:12:50 GMT  
		Size: 58.3 MB (58287548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7243a64c4f6244c89fd24c9acb9f6fd8a0e1898d396b854e46eb2089798bb547`  
		Last Modified: Fri, 31 Mar 2017 19:12:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9ac4be7e2b409016b9d2731edf1dc2d8d6ac628479b1582a538f0825be05da`  
		Last Modified: Fri, 31 Mar 2017 19:16:12 GMT  
		Size: 2.4 MB (2376992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f148171306b4690545e036685da75d05ec59c1b91ce761d4db63345df618af7`  
		Last Modified: Fri, 31 Mar 2017 19:16:27 GMT  
		Size: 76.0 MB (75968416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65e0439dadb9a1c737781eb69a32c675b6244bcba0b0af8302398dd0e30d63`  
		Last Modified: Fri, 31 Mar 2017 19:16:11 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef24bb815a6d443eefe908600ce3e818bf18a94efbf858128d87580837309d9`  
		Last Modified: Fri, 31 Mar 2017 19:17:59 GMT  
		Size: 15.5 MB (15505554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f079bceae249abfc86c19a96863b7f18cdce73ba53f362730efe3141fdc8d34`  
		Last Modified: Fri, 31 Mar 2017 19:17:55 GMT  
		Size: 4.1 MB (4066206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
