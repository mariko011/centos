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
$ docker pull redmine@sha256:c021bce0cbcb5d7d6b1690befeb4f526d62323b71c4548b69bdff96c62cf52bf
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237373244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea8da09ca65188f1894a377ebe21c3c4b73f8d312eb736a5ff85915bd348e9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:17:50 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 18 Nov 2016 02:17:50 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 18 Nov 2016 02:17:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:20:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:20:02 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:06 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:07 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4ed4be414e28fc90c3ee00d50790abd4c1056e9d47cb4dc16dab109dad0381`  
		Last Modified: Fri, 18 Nov 2016 02:25:46 GMT  
		Size: 2.3 MB (2273000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f9f60089495621e1489de1e62b546a142fa6cad06480108568f5b10f6900f8`  
		Last Modified: Fri, 18 Nov 2016 02:26:02 GMT  
		Size: 66.5 MB (66486499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347679a1fc17eea90577e65c1ad4d71b443863fc9a0c722cb1265ac2bb8f8952`  
		Last Modified: Wed, 23 Nov 2016 21:56:25 GMT  
		Size: 1.5 KB (1457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:c021bce0cbcb5d7d6b1690befeb4f526d62323b71c4548b69bdff96c62cf52bf
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237373244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea8da09ca65188f1894a377ebe21c3c4b73f8d312eb736a5ff85915bd348e9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:17:50 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 18 Nov 2016 02:17:50 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 18 Nov 2016 02:17:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:20:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:20:02 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:06 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:07 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4ed4be414e28fc90c3ee00d50790abd4c1056e9d47cb4dc16dab109dad0381`  
		Last Modified: Fri, 18 Nov 2016 02:25:46 GMT  
		Size: 2.3 MB (2273000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f9f60089495621e1489de1e62b546a142fa6cad06480108568f5b10f6900f8`  
		Last Modified: Fri, 18 Nov 2016 02:26:02 GMT  
		Size: 66.5 MB (66486499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347679a1fc17eea90577e65c1ad4d71b443863fc9a0c722cb1265ac2bb8f8952`  
		Last Modified: Wed, 23 Nov 2016 21:56:25 GMT  
		Size: 1.5 KB (1457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:1144cd425ddd1653812d7ae975833e86685dbaad08b91c6a40ef521e6aa49b4a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269502216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd0db462b3697c371ee07b006b569fd59c856d0850d2020b75a807b042ac4f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:17:50 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 18 Nov 2016 02:17:50 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 18 Nov 2016 02:17:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:20:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:20:02 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:06 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:07 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 23 Nov 2016 21:55:08 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 23 Nov 2016 21:55:27 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Nov 2016 21:55:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 23 Nov 2016 21:55:29 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4ed4be414e28fc90c3ee00d50790abd4c1056e9d47cb4dc16dab109dad0381`  
		Last Modified: Fri, 18 Nov 2016 02:25:46 GMT  
		Size: 2.3 MB (2273000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f9f60089495621e1489de1e62b546a142fa6cad06480108568f5b10f6900f8`  
		Last Modified: Fri, 18 Nov 2016 02:26:02 GMT  
		Size: 66.5 MB (66486499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347679a1fc17eea90577e65c1ad4d71b443863fc9a0c722cb1265ac2bb8f8952`  
		Last Modified: Wed, 23 Nov 2016 21:56:25 GMT  
		Size: 1.5 KB (1457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cbb0749d4e012e25d5992bbdede5ff0bdfd9ccdc086598487ea40139d90493`  
		Last Modified: Wed, 23 Nov 2016 21:57:05 GMT  
		Size: 21.7 MB (21710217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d105272e47afc4160b0808fe0509015a6e63153874b9cc683f8843238cf4a72`  
		Last Modified: Wed, 23 Nov 2016 21:57:03 GMT  
		Size: 10.4 MB (10418755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:1144cd425ddd1653812d7ae975833e86685dbaad08b91c6a40ef521e6aa49b4a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269502216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd0db462b3697c371ee07b006b569fd59c856d0850d2020b75a807b042ac4f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:17:50 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 18 Nov 2016 02:17:50 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 18 Nov 2016 02:17:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:20:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:20:02 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:06 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:07 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 23 Nov 2016 21:55:08 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 23 Nov 2016 21:55:27 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Nov 2016 21:55:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 23 Nov 2016 21:55:29 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4ed4be414e28fc90c3ee00d50790abd4c1056e9d47cb4dc16dab109dad0381`  
		Last Modified: Fri, 18 Nov 2016 02:25:46 GMT  
		Size: 2.3 MB (2273000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f9f60089495621e1489de1e62b546a142fa6cad06480108568f5b10f6900f8`  
		Last Modified: Fri, 18 Nov 2016 02:26:02 GMT  
		Size: 66.5 MB (66486499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347679a1fc17eea90577e65c1ad4d71b443863fc9a0c722cb1265ac2bb8f8952`  
		Last Modified: Wed, 23 Nov 2016 21:56:25 GMT  
		Size: 1.5 KB (1457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cbb0749d4e012e25d5992bbdede5ff0bdfd9ccdc086598487ea40139d90493`  
		Last Modified: Wed, 23 Nov 2016 21:57:05 GMT  
		Size: 21.7 MB (21710217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d105272e47afc4160b0808fe0509015a6e63153874b9cc683f8843238cf4a72`  
		Last Modified: Wed, 23 Nov 2016 21:57:03 GMT  
		Size: 10.4 MB (10418755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.4`

```console
$ docker pull redmine@sha256:6ed4280bac37d6349147651f7fd6acfefb90ff3cddba6b8c7823a79a2fd32b1d
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246220828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c48980a2fc7f2bbfbd6ad30077381f36c1cfaac4d42b888b625993a90249f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:20:23 GMT
ENV REDMINE_VERSION=3.2.4
# Fri, 18 Nov 2016 02:20:23 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Fri, 18 Nov 2016 02:20:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:22:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:22:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:30 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:31 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2267bcba64e33f7863b3c38a95fc58a23167740f23deb35bd4a389ff0f7115b9`  
		Last Modified: Fri, 18 Nov 2016 02:27:29 GMT  
		Size: 2.3 MB (2330239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eca73999972cbd8d644dbff64f9a7703ae00d95a7179636de5d68b33dd44aed`  
		Last Modified: Fri, 18 Nov 2016 02:27:42 GMT  
		Size: 75.3 MB (75276842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe049013870b43a438557906db555a29b68d865ebcd34e736826d877e6bd3bf7`  
		Last Modified: Wed, 23 Nov 2016 21:57:44 GMT  
		Size: 1.5 KB (1459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:6ed4280bac37d6349147651f7fd6acfefb90ff3cddba6b8c7823a79a2fd32b1d
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246220828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c48980a2fc7f2bbfbd6ad30077381f36c1cfaac4d42b888b625993a90249f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:20:23 GMT
ENV REDMINE_VERSION=3.2.4
# Fri, 18 Nov 2016 02:20:23 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Fri, 18 Nov 2016 02:20:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:22:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:22:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:30 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:31 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2267bcba64e33f7863b3c38a95fc58a23167740f23deb35bd4a389ff0f7115b9`  
		Last Modified: Fri, 18 Nov 2016 02:27:29 GMT  
		Size: 2.3 MB (2330239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eca73999972cbd8d644dbff64f9a7703ae00d95a7179636de5d68b33dd44aed`  
		Last Modified: Fri, 18 Nov 2016 02:27:42 GMT  
		Size: 75.3 MB (75276842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe049013870b43a438557906db555a29b68d865ebcd34e736826d877e6bd3bf7`  
		Last Modified: Wed, 23 Nov 2016 21:57:44 GMT  
		Size: 1.5 KB (1459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.4-passenger`

```console
$ docker pull redmine@sha256:3f9e9c06de155986ccc55829aa08bda4db6f4160e91bd2a514582851c27fa7c1
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.4-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278350029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4abd6ba303b894c4f6f6d830ff4afbe828a5454ef61abfe49b1e6c9227f5b1a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:20:23 GMT
ENV REDMINE_VERSION=3.2.4
# Fri, 18 Nov 2016 02:20:23 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Fri, 18 Nov 2016 02:20:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:22:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:22:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:30 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:31 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 23 Nov 2016 21:55:32 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 23 Nov 2016 21:55:48 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Nov 2016 21:55:50 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 23 Nov 2016 21:55:51 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2267bcba64e33f7863b3c38a95fc58a23167740f23deb35bd4a389ff0f7115b9`  
		Last Modified: Fri, 18 Nov 2016 02:27:29 GMT  
		Size: 2.3 MB (2330239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eca73999972cbd8d644dbff64f9a7703ae00d95a7179636de5d68b33dd44aed`  
		Last Modified: Fri, 18 Nov 2016 02:27:42 GMT  
		Size: 75.3 MB (75276842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe049013870b43a438557906db555a29b68d865ebcd34e736826d877e6bd3bf7`  
		Last Modified: Wed, 23 Nov 2016 21:57:44 GMT  
		Size: 1.5 KB (1459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04cf9a4b90bb2c6e6bd246655b1d86a7dadeaa4778093cb0398f65894352f1d4`  
		Last Modified: Wed, 23 Nov 2016 21:58:24 GMT  
		Size: 21.7 MB (21710444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ab513bc4f12bf272cd8eb5213b97f2393ccf7976a922b0693a8ef1a9bf05cc`  
		Last Modified: Wed, 23 Nov 2016 21:58:23 GMT  
		Size: 10.4 MB (10418757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:3f9e9c06de155986ccc55829aa08bda4db6f4160e91bd2a514582851c27fa7c1
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278350029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4abd6ba303b894c4f6f6d830ff4afbe828a5454ef61abfe49b1e6c9227f5b1a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:20:23 GMT
ENV REDMINE_VERSION=3.2.4
# Fri, 18 Nov 2016 02:20:23 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Fri, 18 Nov 2016 02:20:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:22:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:22:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:30 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:31 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 23 Nov 2016 21:55:32 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 23 Nov 2016 21:55:48 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Nov 2016 21:55:50 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 23 Nov 2016 21:55:51 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2267bcba64e33f7863b3c38a95fc58a23167740f23deb35bd4a389ff0f7115b9`  
		Last Modified: Fri, 18 Nov 2016 02:27:29 GMT  
		Size: 2.3 MB (2330239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eca73999972cbd8d644dbff64f9a7703ae00d95a7179636de5d68b33dd44aed`  
		Last Modified: Fri, 18 Nov 2016 02:27:42 GMT  
		Size: 75.3 MB (75276842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe049013870b43a438557906db555a29b68d865ebcd34e736826d877e6bd3bf7`  
		Last Modified: Wed, 23 Nov 2016 21:57:44 GMT  
		Size: 1.5 KB (1459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04cf9a4b90bb2c6e6bd246655b1d86a7dadeaa4778093cb0398f65894352f1d4`  
		Last Modified: Wed, 23 Nov 2016 21:58:24 GMT  
		Size: 21.7 MB (21710444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ab513bc4f12bf272cd8eb5213b97f2393ccf7976a922b0693a8ef1a9bf05cc`  
		Last Modified: Wed, 23 Nov 2016 21:58:23 GMT  
		Size: 10.4 MB (10418757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.1`

```console
$ docker pull redmine@sha256:f55307b254f9dcb06a3965a67f80aa612cd6f8b7828524b5b15f2601a0faf0a5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.3 MB (246263418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89fc2d7c4626137ecf42d734ea09af6624a86bd787a6bfbc7b24a94e03048388`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:22:58 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 18 Nov 2016 02:22:59 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 18 Nov 2016 02:23:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:25:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:25:12 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:52 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:52 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33a44d3ac3929dee4bbf839092000e08243627a1f1bda61f8015b83295b9127`  
		Last Modified: Fri, 18 Nov 2016 02:28:57 GMT  
		Size: 2.4 MB (2372937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e825360c1433dc2af58cfbc1d3fba485144ccee4d51c0be7ba182b7935036922`  
		Last Modified: Fri, 18 Nov 2016 02:29:11 GMT  
		Size: 75.3 MB (75276735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e2635855896173fc84af26aaf1cc6e1a81a3141f8f3f068a683153d1937e79`  
		Last Modified: Wed, 23 Nov 2016 21:59:01 GMT  
		Size: 1.5 KB (1458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:f55307b254f9dcb06a3965a67f80aa612cd6f8b7828524b5b15f2601a0faf0a5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.3 MB (246263418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89fc2d7c4626137ecf42d734ea09af6624a86bd787a6bfbc7b24a94e03048388`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:22:58 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 18 Nov 2016 02:22:59 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 18 Nov 2016 02:23:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:25:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:25:12 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:52 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:52 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33a44d3ac3929dee4bbf839092000e08243627a1f1bda61f8015b83295b9127`  
		Last Modified: Fri, 18 Nov 2016 02:28:57 GMT  
		Size: 2.4 MB (2372937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e825360c1433dc2af58cfbc1d3fba485144ccee4d51c0be7ba182b7935036922`  
		Last Modified: Fri, 18 Nov 2016 02:29:11 GMT  
		Size: 75.3 MB (75276735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e2635855896173fc84af26aaf1cc6e1a81a3141f8f3f068a683153d1937e79`  
		Last Modified: Wed, 23 Nov 2016 21:59:01 GMT  
		Size: 1.5 KB (1458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:f55307b254f9dcb06a3965a67f80aa612cd6f8b7828524b5b15f2601a0faf0a5
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.3 MB (246263418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89fc2d7c4626137ecf42d734ea09af6624a86bd787a6bfbc7b24a94e03048388`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:22:58 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 18 Nov 2016 02:22:59 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 18 Nov 2016 02:23:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:25:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:25:12 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:52 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:52 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33a44d3ac3929dee4bbf839092000e08243627a1f1bda61f8015b83295b9127`  
		Last Modified: Fri, 18 Nov 2016 02:28:57 GMT  
		Size: 2.4 MB (2372937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e825360c1433dc2af58cfbc1d3fba485144ccee4d51c0be7ba182b7935036922`  
		Last Modified: Fri, 18 Nov 2016 02:29:11 GMT  
		Size: 75.3 MB (75276735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e2635855896173fc84af26aaf1cc6e1a81a3141f8f3f068a683153d1937e79`  
		Last Modified: Wed, 23 Nov 2016 21:59:01 GMT  
		Size: 1.5 KB (1458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:f55307b254f9dcb06a3965a67f80aa612cd6f8b7828524b5b15f2601a0faf0a5
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.3 MB (246263418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89fc2d7c4626137ecf42d734ea09af6624a86bd787a6bfbc7b24a94e03048388`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:22:58 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 18 Nov 2016 02:22:59 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 18 Nov 2016 02:23:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:25:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:25:12 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:52 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:52 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33a44d3ac3929dee4bbf839092000e08243627a1f1bda61f8015b83295b9127`  
		Last Modified: Fri, 18 Nov 2016 02:28:57 GMT  
		Size: 2.4 MB (2372937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e825360c1433dc2af58cfbc1d3fba485144ccee4d51c0be7ba182b7935036922`  
		Last Modified: Fri, 18 Nov 2016 02:29:11 GMT  
		Size: 75.3 MB (75276735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e2635855896173fc84af26aaf1cc6e1a81a3141f8f3f068a683153d1937e79`  
		Last Modified: Wed, 23 Nov 2016 21:59:01 GMT  
		Size: 1.5 KB (1458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.1-passenger`

```console
$ docker pull redmine@sha256:1e4f19003fda101879e190d3db10dad86b31ffd4629ffa472223de0e1eb0a7df
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.1-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278392520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caf8948b9062b7a50c0a59c5dd9a607224c6ff05a63dceb0242e9546656d745a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:22:58 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 18 Nov 2016 02:22:59 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 18 Nov 2016 02:23:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:25:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:25:12 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:52 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:52 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 23 Nov 2016 21:55:54 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 23 Nov 2016 21:56:10 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Nov 2016 21:56:11 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 23 Nov 2016 21:56:12 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33a44d3ac3929dee4bbf839092000e08243627a1f1bda61f8015b83295b9127`  
		Last Modified: Fri, 18 Nov 2016 02:28:57 GMT  
		Size: 2.4 MB (2372937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e825360c1433dc2af58cfbc1d3fba485144ccee4d51c0be7ba182b7935036922`  
		Last Modified: Fri, 18 Nov 2016 02:29:11 GMT  
		Size: 75.3 MB (75276735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e2635855896173fc84af26aaf1cc6e1a81a3141f8f3f068a683153d1937e79`  
		Last Modified: Wed, 23 Nov 2016 21:59:01 GMT  
		Size: 1.5 KB (1458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fea4169092a40e8b728dd808b348fdc68296fed9961ed8f5db22e0775e7f8eb`  
		Last Modified: Wed, 23 Nov 2016 22:00:08 GMT  
		Size: 21.7 MB (21710335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cbaabb39a274a38fe67e4537a929738fe3db8d34f58090bafd292844342435`  
		Last Modified: Wed, 23 Nov 2016 22:00:06 GMT  
		Size: 10.4 MB (10418767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:1e4f19003fda101879e190d3db10dad86b31ffd4629ffa472223de0e1eb0a7df
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278392520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caf8948b9062b7a50c0a59c5dd9a607224c6ff05a63dceb0242e9546656d745a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:22:58 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 18 Nov 2016 02:22:59 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 18 Nov 2016 02:23:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:25:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:25:12 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:52 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:52 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 23 Nov 2016 21:55:54 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 23 Nov 2016 21:56:10 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Nov 2016 21:56:11 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 23 Nov 2016 21:56:12 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33a44d3ac3929dee4bbf839092000e08243627a1f1bda61f8015b83295b9127`  
		Last Modified: Fri, 18 Nov 2016 02:28:57 GMT  
		Size: 2.4 MB (2372937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e825360c1433dc2af58cfbc1d3fba485144ccee4d51c0be7ba182b7935036922`  
		Last Modified: Fri, 18 Nov 2016 02:29:11 GMT  
		Size: 75.3 MB (75276735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e2635855896173fc84af26aaf1cc6e1a81a3141f8f3f068a683153d1937e79`  
		Last Modified: Wed, 23 Nov 2016 21:59:01 GMT  
		Size: 1.5 KB (1458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fea4169092a40e8b728dd808b348fdc68296fed9961ed8f5db22e0775e7f8eb`  
		Last Modified: Wed, 23 Nov 2016 22:00:08 GMT  
		Size: 21.7 MB (21710335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cbaabb39a274a38fe67e4537a929738fe3db8d34f58090bafd292844342435`  
		Last Modified: Wed, 23 Nov 2016 22:00:06 GMT  
		Size: 10.4 MB (10418767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:1e4f19003fda101879e190d3db10dad86b31ffd4629ffa472223de0e1eb0a7df
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278392520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caf8948b9062b7a50c0a59c5dd9a607224c6ff05a63dceb0242e9546656d745a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:22:58 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 18 Nov 2016 02:22:59 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 18 Nov 2016 02:23:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:25:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:25:12 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:52 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:52 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 23 Nov 2016 21:55:54 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 23 Nov 2016 21:56:10 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Nov 2016 21:56:11 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 23 Nov 2016 21:56:12 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33a44d3ac3929dee4bbf839092000e08243627a1f1bda61f8015b83295b9127`  
		Last Modified: Fri, 18 Nov 2016 02:28:57 GMT  
		Size: 2.4 MB (2372937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e825360c1433dc2af58cfbc1d3fba485144ccee4d51c0be7ba182b7935036922`  
		Last Modified: Fri, 18 Nov 2016 02:29:11 GMT  
		Size: 75.3 MB (75276735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e2635855896173fc84af26aaf1cc6e1a81a3141f8f3f068a683153d1937e79`  
		Last Modified: Wed, 23 Nov 2016 21:59:01 GMT  
		Size: 1.5 KB (1458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fea4169092a40e8b728dd808b348fdc68296fed9961ed8f5db22e0775e7f8eb`  
		Last Modified: Wed, 23 Nov 2016 22:00:08 GMT  
		Size: 21.7 MB (21710335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cbaabb39a274a38fe67e4537a929738fe3db8d34f58090bafd292844342435`  
		Last Modified: Wed, 23 Nov 2016 22:00:06 GMT  
		Size: 10.4 MB (10418767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:1e4f19003fda101879e190d3db10dad86b31ffd4629ffa472223de0e1eb0a7df
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278392520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caf8948b9062b7a50c0a59c5dd9a607224c6ff05a63dceb0242e9546656d745a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:15:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:15:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 09 Nov 2016 01:22:47 GMT
ENV RUBY_MAJOR=2.2
# Thu, 17 Nov 2016 23:14:26 GMT
ENV RUBY_VERSION=2.2.6
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Thu, 17 Nov 2016 23:14:27 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 17 Nov 2016 23:17:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 17 Nov 2016 23:17:04 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 17 Nov 2016 23:17:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 17 Nov 2016 23:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Nov 2016 23:17:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Nov 2016 23:17:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 17 Nov 2016 23:17:08 GMT
CMD ["irb"]
# Fri, 18 Nov 2016 02:17:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 18 Nov 2016 02:17:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Nov 2016 02:17:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Nov 2016 02:17:21 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 18 Nov 2016 02:17:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 18 Nov 2016 02:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:17:49 GMT
ENV RAILS_ENV=production
# Fri, 18 Nov 2016 02:17:49 GMT
WORKDIR /usr/src/redmine
# Fri, 18 Nov 2016 02:22:58 GMT
ENV REDMINE_VERSION=3.3.1
# Fri, 18 Nov 2016 02:22:59 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Fri, 18 Nov 2016 02:23:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 18 Nov 2016 02:25:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Nov 2016 02:25:12 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 23 Nov 2016 21:55:52 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 23 Nov 2016 21:55:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:55:52 GMT
EXPOSE 3000/tcp
# Wed, 23 Nov 2016 21:55:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 23 Nov 2016 21:55:54 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 23 Nov 2016 21:56:10 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Nov 2016 21:56:11 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 23 Nov 2016 21:56:12 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2a19adcb601ac582ae2b2cec63a8fead8b8eff63c7c73ec8e1c34084b0b971`  
		Last Modified: Wed, 09 Nov 2016 01:18:32 GMT  
		Size: 10.0 MB (9980683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37dcb8e3fe13596bfd392dd2619f6dc9b79fd00aad288ee04f23a2f5a14ffee`  
		Last Modified: Wed, 09 Nov 2016 01:18:29 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447cde476dff956e679e878affd6285f9b467251f1a2a08d67513fc3399afd82`  
		Last Modified: Thu, 17 Nov 2016 23:30:01 GMT  
		Size: 33.8 MB (33790722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f5796ed817e662a8def1609a8c264027abf6bc1b5dd681c3802792a8bb6e5`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 612.6 KB (612575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1676b063f01ebb61bf28e3ab4202ebdd82b04d83a024c63141bcfaacf86f0d9`  
		Last Modified: Thu, 17 Nov 2016 23:29:48 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a395802def1c8f0f38519bf00e3b7535020a07998661ddc3e7a2ca9408af0b`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046bd6dad0b174866d4b7f97be7ac494d9aabf203e694823436ef7ea9668d100`  
		Last Modified: Fri, 18 Nov 2016 02:25:54 GMT  
		Size: 13.9 MB (13862387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46a8c6c449c2f99257d162bca7bafd21ad4cc4b6283a14e18ed8ca6c0ab9103`  
		Last Modified: Fri, 18 Nov 2016 02:25:50 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7653d47f5e9089e5f49f43a3c84fed021b66ff99b18b55130de7ce862e5fce`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f87bc33621d425cc0acbf78080d8686d9a1eb8d39b6a0a0f54976728099045`  
		Last Modified: Fri, 18 Nov 2016 02:26:06 GMT  
		Size: 58.2 MB (58191339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ff357b960c73fcf591aec8521724ee839d8a17d97e396181bc9d1cad864051`  
		Last Modified: Fri, 18 Nov 2016 02:25:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33a44d3ac3929dee4bbf839092000e08243627a1f1bda61f8015b83295b9127`  
		Last Modified: Fri, 18 Nov 2016 02:28:57 GMT  
		Size: 2.4 MB (2372937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e825360c1433dc2af58cfbc1d3fba485144ccee4d51c0be7ba182b7935036922`  
		Last Modified: Fri, 18 Nov 2016 02:29:11 GMT  
		Size: 75.3 MB (75276735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e2635855896173fc84af26aaf1cc6e1a81a3141f8f3f068a683153d1937e79`  
		Last Modified: Wed, 23 Nov 2016 21:59:01 GMT  
		Size: 1.5 KB (1458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fea4169092a40e8b728dd808b348fdc68296fed9961ed8f5db22e0775e7f8eb`  
		Last Modified: Wed, 23 Nov 2016 22:00:08 GMT  
		Size: 21.7 MB (21710335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cbaabb39a274a38fe67e4537a929738fe3db8d34f58090bafd292844342435`  
		Last Modified: Wed, 23 Nov 2016 22:00:06 GMT  
		Size: 10.4 MB (10418767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
