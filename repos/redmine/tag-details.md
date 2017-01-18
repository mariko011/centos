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
$ docker pull redmine@sha256:2aaf234433a2aab981d5304d1d684a884655aa6b656ef4cece4c9887659a79da
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237325993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:701be8b754849384da9009050406077b8eda566f3ce7c8ddd1479d319a1f6b66`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:12:35 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 18 Jan 2017 03:12:35 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 18 Jan 2017 03:12:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:15:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:15:12 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:15:13 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:15:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:15:13 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:15:14 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6333f8c1e1bca7e8973d86b50620dada284195c26631a442b834dd76e8bbc558`  
		Last Modified: Wed, 18 Jan 2017 09:03:46 GMT  
		Size: 2.3 MB (2273012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c07e3bb6da339d834df939dc677bfed513c19dddb9612e7fd8869b5cd4c3764`  
		Last Modified: Wed, 18 Jan 2017 09:04:04 GMT  
		Size: 66.9 MB (66909786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cefc5e819314871e29b289a12294262ccf86a80bbf374c5ccc06091ec4f621`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:2aaf234433a2aab981d5304d1d684a884655aa6b656ef4cece4c9887659a79da
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237325993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:701be8b754849384da9009050406077b8eda566f3ce7c8ddd1479d319a1f6b66`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:12:35 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 18 Jan 2017 03:12:35 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 18 Jan 2017 03:12:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:15:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:15:12 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:15:13 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:15:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:15:13 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:15:14 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6333f8c1e1bca7e8973d86b50620dada284195c26631a442b834dd76e8bbc558`  
		Last Modified: Wed, 18 Jan 2017 09:03:46 GMT  
		Size: 2.3 MB (2273012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c07e3bb6da339d834df939dc677bfed513c19dddb9612e7fd8869b5cd4c3764`  
		Last Modified: Wed, 18 Jan 2017 09:04:04 GMT  
		Size: 66.9 MB (66909786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cefc5e819314871e29b289a12294262ccf86a80bbf374c5ccc06091ec4f621`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:fe7f8ce518277ebba3421d82d30b3f8dbf413a55f66b63b56dea8017839818e6
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256890835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd544e61774d8b5b2581d58ad0e44edb16f5eb903c88378cd7648b1b0e31032f`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:12:35 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 18 Jan 2017 03:12:35 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 18 Jan 2017 03:12:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:15:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:15:12 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:15:13 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:15:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:15:13 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:15:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 18 Jan 2017 03:15:27 GMT
ENV PASSENGER_VERSION=5.1.1
# Wed, 18 Jan 2017 03:15:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:15:50 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 18 Jan 2017 03:15:50 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6333f8c1e1bca7e8973d86b50620dada284195c26631a442b834dd76e8bbc558`  
		Last Modified: Wed, 18 Jan 2017 09:03:46 GMT  
		Size: 2.3 MB (2273012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c07e3bb6da339d834df939dc677bfed513c19dddb9612e7fd8869b5cd4c3764`  
		Last Modified: Wed, 18 Jan 2017 09:04:04 GMT  
		Size: 66.9 MB (66909786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cefc5e819314871e29b289a12294262ccf86a80bbf374c5ccc06091ec4f621`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec23d32c9aa59cb794c9b01c9b680c16747e77df6f1a1b092d99b0610c988aba`  
		Last Modified: Wed, 18 Jan 2017 09:04:49 GMT  
		Size: 15.5 MB (15498837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddde0e6b612b6bf35b3106ad273bd43d5fc9c831d884a35b0c3c68ebadcf6ca`  
		Last Modified: Wed, 18 Jan 2017 09:04:46 GMT  
		Size: 4.1 MB (4066005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:fe7f8ce518277ebba3421d82d30b3f8dbf413a55f66b63b56dea8017839818e6
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256890835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd544e61774d8b5b2581d58ad0e44edb16f5eb903c88378cd7648b1b0e31032f`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:12:35 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 18 Jan 2017 03:12:35 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 18 Jan 2017 03:12:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:15:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:15:12 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:15:13 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:15:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:15:13 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:15:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 18 Jan 2017 03:15:27 GMT
ENV PASSENGER_VERSION=5.1.1
# Wed, 18 Jan 2017 03:15:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:15:50 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 18 Jan 2017 03:15:50 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6333f8c1e1bca7e8973d86b50620dada284195c26631a442b834dd76e8bbc558`  
		Last Modified: Wed, 18 Jan 2017 09:03:46 GMT  
		Size: 2.3 MB (2273012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c07e3bb6da339d834df939dc677bfed513c19dddb9612e7fd8869b5cd4c3764`  
		Last Modified: Wed, 18 Jan 2017 09:04:04 GMT  
		Size: 66.9 MB (66909786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cefc5e819314871e29b289a12294262ccf86a80bbf374c5ccc06091ec4f621`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec23d32c9aa59cb794c9b01c9b680c16747e77df6f1a1b092d99b0610c988aba`  
		Last Modified: Wed, 18 Jan 2017 09:04:49 GMT  
		Size: 15.5 MB (15498837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddde0e6b612b6bf35b3106ad273bd43d5fc9c831d884a35b0c3c68ebadcf6ca`  
		Last Modified: Wed, 18 Jan 2017 09:04:46 GMT  
		Size: 4.1 MB (4066005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.5`

```console
$ docker pull redmine@sha256:6a6835dfcb29d4d6e147cd7b37a6d4995ace80997973a3d8cb6b371168bf03ca
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246175895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b817147350121d264639081e21fa08f52ac15becde01e1b1f7f59f6f38f3c31`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:15:51 GMT
ENV REDMINE_VERSION=3.2.5
# Wed, 18 Jan 2017 03:16:03 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Wed, 18 Jan 2017 03:16:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:18:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:18:39 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:18:40 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:18:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:18:41 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:18:42 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3020e81f115063f0079333d255a9f293365ef9a0d2a32c4763c7f2216c0974f8`  
		Last Modified: Wed, 18 Jan 2017 09:05:25 GMT  
		Size: 2.3 MB (2334507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c827a011c93c301a411d2f575d237f6f587779595aa98ffefc6f2f20efbecb8`  
		Last Modified: Wed, 18 Jan 2017 09:05:43 GMT  
		Size: 75.7 MB (75698192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece22db27fcfff7e4f10a8c5c1f544dd32d996d8913d0b89ef237a384d41cc39`  
		Last Modified: Wed, 18 Jan 2017 09:05:23 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:6a6835dfcb29d4d6e147cd7b37a6d4995ace80997973a3d8cb6b371168bf03ca
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246175895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b817147350121d264639081e21fa08f52ac15becde01e1b1f7f59f6f38f3c31`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:15:51 GMT
ENV REDMINE_VERSION=3.2.5
# Wed, 18 Jan 2017 03:16:03 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Wed, 18 Jan 2017 03:16:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:18:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:18:39 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:18:40 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:18:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:18:41 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:18:42 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3020e81f115063f0079333d255a9f293365ef9a0d2a32c4763c7f2216c0974f8`  
		Last Modified: Wed, 18 Jan 2017 09:05:25 GMT  
		Size: 2.3 MB (2334507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c827a011c93c301a411d2f575d237f6f587779595aa98ffefc6f2f20efbecb8`  
		Last Modified: Wed, 18 Jan 2017 09:05:43 GMT  
		Size: 75.7 MB (75698192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece22db27fcfff7e4f10a8c5c1f544dd32d996d8913d0b89ef237a384d41cc39`  
		Last Modified: Wed, 18 Jan 2017 09:05:23 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.5-passenger`

```console
$ docker pull redmine@sha256:b329795a4aad01004c64b09c1f32fcdfc3951dca8343bda4f6e9c784b2cb4408
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.5-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265740830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c99d8439b9c22637e4735ea1a34c5bbd45cf14ab6808107de84f0dbadba2e056`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:15:51 GMT
ENV REDMINE_VERSION=3.2.5
# Wed, 18 Jan 2017 03:16:03 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Wed, 18 Jan 2017 03:16:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:18:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:18:39 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:18:40 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:18:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:18:41 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:18:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 18 Jan 2017 03:18:54 GMT
ENV PASSENGER_VERSION=5.1.1
# Wed, 18 Jan 2017 03:19:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:19:19 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 18 Jan 2017 03:19:20 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3020e81f115063f0079333d255a9f293365ef9a0d2a32c4763c7f2216c0974f8`  
		Last Modified: Wed, 18 Jan 2017 09:05:25 GMT  
		Size: 2.3 MB (2334507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c827a011c93c301a411d2f575d237f6f587779595aa98ffefc6f2f20efbecb8`  
		Last Modified: Wed, 18 Jan 2017 09:05:43 GMT  
		Size: 75.7 MB (75698192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece22db27fcfff7e4f10a8c5c1f544dd32d996d8913d0b89ef237a384d41cc39`  
		Last Modified: Wed, 18 Jan 2017 09:05:23 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce645839f7327cbf418785890b42e75733941ff47078caa28486b5fc9713666`  
		Last Modified: Wed, 18 Jan 2017 09:06:27 GMT  
		Size: 15.5 MB (15498923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97ef1d119410d2dca0edd485b5110424d4e67e017666ae1dbb5501b83e4728b`  
		Last Modified: Wed, 18 Jan 2017 09:06:21 GMT  
		Size: 4.1 MB (4066012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:b329795a4aad01004c64b09c1f32fcdfc3951dca8343bda4f6e9c784b2cb4408
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265740830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c99d8439b9c22637e4735ea1a34c5bbd45cf14ab6808107de84f0dbadba2e056`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:15:51 GMT
ENV REDMINE_VERSION=3.2.5
# Wed, 18 Jan 2017 03:16:03 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Wed, 18 Jan 2017 03:16:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:18:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:18:39 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:18:40 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:18:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:18:41 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:18:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 18 Jan 2017 03:18:54 GMT
ENV PASSENGER_VERSION=5.1.1
# Wed, 18 Jan 2017 03:19:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:19:19 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 18 Jan 2017 03:19:20 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3020e81f115063f0079333d255a9f293365ef9a0d2a32c4763c7f2216c0974f8`  
		Last Modified: Wed, 18 Jan 2017 09:05:25 GMT  
		Size: 2.3 MB (2334507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c827a011c93c301a411d2f575d237f6f587779595aa98ffefc6f2f20efbecb8`  
		Last Modified: Wed, 18 Jan 2017 09:05:43 GMT  
		Size: 75.7 MB (75698192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece22db27fcfff7e4f10a8c5c1f544dd32d996d8913d0b89ef237a384d41cc39`  
		Last Modified: Wed, 18 Jan 2017 09:05:23 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce645839f7327cbf418785890b42e75733941ff47078caa28486b5fc9713666`  
		Last Modified: Wed, 18 Jan 2017 09:06:27 GMT  
		Size: 15.5 MB (15498923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97ef1d119410d2dca0edd485b5110424d4e67e017666ae1dbb5501b83e4728b`  
		Last Modified: Wed, 18 Jan 2017 09:06:21 GMT  
		Size: 4.1 MB (4066012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.2`

```console
$ docker pull redmine@sha256:789b15327a578f0ceca5ccc099ef686700ae20cad07b4b82e6690b997c1c7692
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246218594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd1c8fdfc15c98b13cdb74b162fccaf94a36e3d413e820e9a4fdc2a0ed0564f`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 18 Jan 2017 03:09:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:12:06 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:12:06 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:12:07 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:12:08 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf630b72130ef0bb98803d2aa58deb03c2dae93caafb0aac8e9e6573c30f110c`  
		Last Modified: Wed, 18 Jan 2017 09:07:03 GMT  
		Size: 2.4 MB (2377000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a8948cdd8e3927ee76247d96cdea304178a232dc0e824bb73b030e7143310d`  
		Last Modified: Wed, 18 Jan 2017 09:07:24 GMT  
		Size: 75.7 MB (75698400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd9aa7247ead547b8c93e979bd7406d988eca3d51b04ec0d92e8b2b5bf97a3b`  
		Last Modified: Wed, 18 Jan 2017 09:07:01 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:789b15327a578f0ceca5ccc099ef686700ae20cad07b4b82e6690b997c1c7692
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246218594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd1c8fdfc15c98b13cdb74b162fccaf94a36e3d413e820e9a4fdc2a0ed0564f`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 18 Jan 2017 03:09:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:12:06 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:12:06 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:12:07 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:12:08 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf630b72130ef0bb98803d2aa58deb03c2dae93caafb0aac8e9e6573c30f110c`  
		Last Modified: Wed, 18 Jan 2017 09:07:03 GMT  
		Size: 2.4 MB (2377000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a8948cdd8e3927ee76247d96cdea304178a232dc0e824bb73b030e7143310d`  
		Last Modified: Wed, 18 Jan 2017 09:07:24 GMT  
		Size: 75.7 MB (75698400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd9aa7247ead547b8c93e979bd7406d988eca3d51b04ec0d92e8b2b5bf97a3b`  
		Last Modified: Wed, 18 Jan 2017 09:07:01 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:789b15327a578f0ceca5ccc099ef686700ae20cad07b4b82e6690b997c1c7692
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246218594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd1c8fdfc15c98b13cdb74b162fccaf94a36e3d413e820e9a4fdc2a0ed0564f`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 18 Jan 2017 03:09:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:12:06 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:12:06 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:12:07 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:12:08 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf630b72130ef0bb98803d2aa58deb03c2dae93caafb0aac8e9e6573c30f110c`  
		Last Modified: Wed, 18 Jan 2017 09:07:03 GMT  
		Size: 2.4 MB (2377000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a8948cdd8e3927ee76247d96cdea304178a232dc0e824bb73b030e7143310d`  
		Last Modified: Wed, 18 Jan 2017 09:07:24 GMT  
		Size: 75.7 MB (75698400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd9aa7247ead547b8c93e979bd7406d988eca3d51b04ec0d92e8b2b5bf97a3b`  
		Last Modified: Wed, 18 Jan 2017 09:07:01 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:789b15327a578f0ceca5ccc099ef686700ae20cad07b4b82e6690b997c1c7692
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246218594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd1c8fdfc15c98b13cdb74b162fccaf94a36e3d413e820e9a4fdc2a0ed0564f`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 18 Jan 2017 03:09:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:12:06 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:12:06 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:12:07 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:12:08 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf630b72130ef0bb98803d2aa58deb03c2dae93caafb0aac8e9e6573c30f110c`  
		Last Modified: Wed, 18 Jan 2017 09:07:03 GMT  
		Size: 2.4 MB (2377000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a8948cdd8e3927ee76247d96cdea304178a232dc0e824bb73b030e7143310d`  
		Last Modified: Wed, 18 Jan 2017 09:07:24 GMT  
		Size: 75.7 MB (75698400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd9aa7247ead547b8c93e979bd7406d988eca3d51b04ec0d92e8b2b5bf97a3b`  
		Last Modified: Wed, 18 Jan 2017 09:07:01 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.2-passenger`

```console
$ docker pull redmine@sha256:39e811918c53b433f710af49d1d630cf49474f209e2de9584d180d791de323a5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.2-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265783617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0ca3675e89262a2f116cb8c3273b5123ecc1f6d783c377938d8f4a9153b02b`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 18 Jan 2017 03:09:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:12:06 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:12:06 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:12:07 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:12:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 18 Jan 2017 03:12:09 GMT
ENV PASSENGER_VERSION=5.1.1
# Wed, 18 Jan 2017 03:12:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:12:34 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 18 Jan 2017 03:12:34 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf630b72130ef0bb98803d2aa58deb03c2dae93caafb0aac8e9e6573c30f110c`  
		Last Modified: Wed, 18 Jan 2017 09:07:03 GMT  
		Size: 2.4 MB (2377000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a8948cdd8e3927ee76247d96cdea304178a232dc0e824bb73b030e7143310d`  
		Last Modified: Wed, 18 Jan 2017 09:07:24 GMT  
		Size: 75.7 MB (75698400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd9aa7247ead547b8c93e979bd7406d988eca3d51b04ec0d92e8b2b5bf97a3b`  
		Last Modified: Wed, 18 Jan 2017 09:07:01 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7744ee4eb9f2129dcbd3ab553793455fb6215ab57af15e8897bc9e0b3a39b54`  
		Last Modified: Wed, 18 Jan 2017 09:08:35 GMT  
		Size: 15.5 MB (15499024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5585b1aac3fadcbf000bb976bef97d62b941d075af5e4d02a5919bdc67e13e21`  
		Last Modified: Wed, 18 Jan 2017 09:08:31 GMT  
		Size: 4.1 MB (4065999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:39e811918c53b433f710af49d1d630cf49474f209e2de9584d180d791de323a5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265783617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0ca3675e89262a2f116cb8c3273b5123ecc1f6d783c377938d8f4a9153b02b`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 18 Jan 2017 03:09:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:12:06 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:12:06 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:12:07 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:12:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 18 Jan 2017 03:12:09 GMT
ENV PASSENGER_VERSION=5.1.1
# Wed, 18 Jan 2017 03:12:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:12:34 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 18 Jan 2017 03:12:34 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf630b72130ef0bb98803d2aa58deb03c2dae93caafb0aac8e9e6573c30f110c`  
		Last Modified: Wed, 18 Jan 2017 09:07:03 GMT  
		Size: 2.4 MB (2377000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a8948cdd8e3927ee76247d96cdea304178a232dc0e824bb73b030e7143310d`  
		Last Modified: Wed, 18 Jan 2017 09:07:24 GMT  
		Size: 75.7 MB (75698400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd9aa7247ead547b8c93e979bd7406d988eca3d51b04ec0d92e8b2b5bf97a3b`  
		Last Modified: Wed, 18 Jan 2017 09:07:01 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7744ee4eb9f2129dcbd3ab553793455fb6215ab57af15e8897bc9e0b3a39b54`  
		Last Modified: Wed, 18 Jan 2017 09:08:35 GMT  
		Size: 15.5 MB (15499024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5585b1aac3fadcbf000bb976bef97d62b941d075af5e4d02a5919bdc67e13e21`  
		Last Modified: Wed, 18 Jan 2017 09:08:31 GMT  
		Size: 4.1 MB (4065999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:39e811918c53b433f710af49d1d630cf49474f209e2de9584d180d791de323a5
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265783617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0ca3675e89262a2f116cb8c3273b5123ecc1f6d783c377938d8f4a9153b02b`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 18 Jan 2017 03:09:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:12:06 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:12:06 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:12:07 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:12:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 18 Jan 2017 03:12:09 GMT
ENV PASSENGER_VERSION=5.1.1
# Wed, 18 Jan 2017 03:12:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:12:34 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 18 Jan 2017 03:12:34 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf630b72130ef0bb98803d2aa58deb03c2dae93caafb0aac8e9e6573c30f110c`  
		Last Modified: Wed, 18 Jan 2017 09:07:03 GMT  
		Size: 2.4 MB (2377000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a8948cdd8e3927ee76247d96cdea304178a232dc0e824bb73b030e7143310d`  
		Last Modified: Wed, 18 Jan 2017 09:07:24 GMT  
		Size: 75.7 MB (75698400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd9aa7247ead547b8c93e979bd7406d988eca3d51b04ec0d92e8b2b5bf97a3b`  
		Last Modified: Wed, 18 Jan 2017 09:07:01 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7744ee4eb9f2129dcbd3ab553793455fb6215ab57af15e8897bc9e0b3a39b54`  
		Last Modified: Wed, 18 Jan 2017 09:08:35 GMT  
		Size: 15.5 MB (15499024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5585b1aac3fadcbf000bb976bef97d62b941d075af5e4d02a5919bdc67e13e21`  
		Last Modified: Wed, 18 Jan 2017 09:08:31 GMT  
		Size: 4.1 MB (4065999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:39e811918c53b433f710af49d1d630cf49474f209e2de9584d180d791de323a5
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265783617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0ca3675e89262a2f116cb8c3273b5123ecc1f6d783c377938d8f4a9153b02b`
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
# Tue, 17 Jan 2017 20:17:56 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 17 Jan 2017 20:20:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 17 Jan 2017 20:20:31 GMT
ENV BUNDLER_VERSION=1.13.7
# Tue, 17 Jan 2017 20:20:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 17 Jan 2017 20:20:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 20:20:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:20:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 20:20:34 GMT
CMD ["irb"]
# Wed, 18 Jan 2017 03:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jan 2017 03:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:08:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 18 Jan 2017 03:08:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 18 Jan 2017 03:08:41 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 18 Jan 2017 03:08:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 18 Jan 2017 03:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:09:33 GMT
ENV RAILS_ENV=production
# Wed, 18 Jan 2017 03:09:34 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 18 Jan 2017 03:09:34 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 18 Jan 2017 03:09:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jan 2017 03:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:12:06 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jan 2017 03:12:06 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 18 Jan 2017 03:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 03:12:07 GMT
EXPOSE 3000/tcp
# Wed, 18 Jan 2017 03:12:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 18 Jan 2017 03:12:09 GMT
ENV PASSENGER_VERSION=5.1.1
# Wed, 18 Jan 2017 03:12:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Jan 2017 03:12:34 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 18 Jan 2017 03:12:34 GMT
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
	-	`sha256:d4e4fe1f26bf3d150b8c3052783cfa2ee94e7c30b42f126f35e6e13d1e3a091c`  
		Last Modified: Wed, 18 Jan 2017 07:27:55 GMT  
		Size: 33.3 MB (33291034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85941b2b500c731a1e20049c6a917cda138b8547b0e9b1e89fe5e886f7e697d`  
		Last Modified: Wed, 18 Jan 2017 07:27:44 GMT  
		Size: 612.9 KB (612874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa593a868c419a82105e83708f0c77f333c3c94c7d817545addcad5ea1173894`  
		Last Modified: Wed, 18 Jan 2017 07:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4fb1d5e34e02cb95c2fb69f269c5239a20e107fbe9984165ba83cd59a2c486`  
		Last Modified: Wed, 18 Jan 2017 09:03:48 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9bae14f62200fbdb7e31e24c8e4cfc189dca6d2b87277016c50273c3f95e14`  
		Last Modified: Wed, 18 Jan 2017 09:03:52 GMT  
		Size: 13.9 MB (13863649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f80543ccc5c6511af360b570659cf655ea171e39f711ba3ace8d0f2a7c749`  
		Last Modified: Wed, 18 Jan 2017 09:03:44 GMT  
		Size: 807.9 KB (807924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fc234eb11037000662e03074726e3d995ceef5cb0a1edf50d46028524557`  
		Last Modified: Wed, 18 Jan 2017 09:03:43 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecd442124e63a387eb2530a8c766307c7527b6c1c2a9b002b09db014a471df`  
		Last Modified: Wed, 18 Jan 2017 09:04:07 GMT  
		Size: 58.2 MB (58201079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b8d8e1c42bd37300a1008e6fa3bab3c71257299f78e418fce044dc60531a06`  
		Last Modified: Wed, 18 Jan 2017 09:03:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf630b72130ef0bb98803d2aa58deb03c2dae93caafb0aac8e9e6573c30f110c`  
		Last Modified: Wed, 18 Jan 2017 09:07:03 GMT  
		Size: 2.4 MB (2377000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a8948cdd8e3927ee76247d96cdea304178a232dc0e824bb73b030e7143310d`  
		Last Modified: Wed, 18 Jan 2017 09:07:24 GMT  
		Size: 75.7 MB (75698400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd9aa7247ead547b8c93e979bd7406d988eca3d51b04ec0d92e8b2b5bf97a3b`  
		Last Modified: Wed, 18 Jan 2017 09:07:01 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7744ee4eb9f2129dcbd3ab553793455fb6215ab57af15e8897bc9e0b3a39b54`  
		Last Modified: Wed, 18 Jan 2017 09:08:35 GMT  
		Size: 15.5 MB (15499024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5585b1aac3fadcbf000bb976bef97d62b941d075af5e4d02a5919bdc67e13e21`  
		Last Modified: Wed, 18 Jan 2017 09:08:31 GMT  
		Size: 4.1 MB (4065999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
