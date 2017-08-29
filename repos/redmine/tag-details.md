<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3.4.2`](#redmine342)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3`](#redmine3)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:3.4.2-passenger`](#redmine342-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:passenger`](#redminepassenger)
-	[`redmine:3.3.4`](#redmine334)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.4-passenger`](#redmine334-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.2.7`](#redmine327)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.7-passenger`](#redmine327-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.1.7`](#redmine317)
-	[`redmine:3.1`](#redmine31)
-	[`redmine:3.1.7-passenger`](#redmine317-passenger)
-	[`redmine:3.1-passenger`](#redmine31-passenger)

## `redmine:3.4.2`

```console
$ docker pull redmine@sha256:9cfbc55c391f5c5e673984eb9dd62750c85eeddfd4db480081af8cae1de2080e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240416066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef813691531e4267d7a04ac97534b93c1ab75ea8ae85565e113feeebd7c37dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:40:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:40:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:40:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:40:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:40:38 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:40:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:41:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:41:24 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:41:24 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:41:24 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 29 Aug 2017 06:41:25 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 29 Aug 2017 06:41:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:44:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:44:11 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:44:11 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:44:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:44:12 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:44:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8f7546bce130aa0cfabaa2d6ce4244f4c850b3749f3caffac3e0e54e60102c`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f232182cb6d8a3a45645c179bd983158e97faa2f1752c4117d8150b2a0752ec`  
		Last Modified: Tue, 29 Aug 2017 07:01:46 GMT  
		Size: 14.4 MB (14422197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff1d2c56381fa0e96f76b2767d3708804214b2e651afa92eac98d536c45d97`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c580923faebd17f800fc02befb09ac1c1c8734b6d0812f3314fb33252d499a58`  
		Last Modified: Tue, 29 Aug 2017 07:01:40 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d038dfafb1dcf6240df197b7d13a36d8b8a2cc891ec777300aae1bc0903f79`  
		Last Modified: Tue, 29 Aug 2017 07:01:59 GMT  
		Size: 59.2 MB (59236685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9c940991a730a35ef955cd4778a09f11cd18c366f85b08fd2c4dc8efc03b56`  
		Last Modified: Tue, 29 Aug 2017 07:01:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cc35646dbdaacecf960c25c6a9b2c2c150de3fc604c9ed385ea9df3622e8d4`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.4 MB (2447802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a165a5a2d441771f34e783c1389254d11d318e9331634550615c04a02570b2e`  
		Last Modified: Tue, 29 Aug 2017 07:01:58 GMT  
		Size: 77.1 MB (77062330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d97dc7c87c924edd293f1b78f5f1b28e9ea0773a33653491907008a2dfedeb`  
		Last Modified: Tue, 29 Aug 2017 07:01:39 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:9cfbc55c391f5c5e673984eb9dd62750c85eeddfd4db480081af8cae1de2080e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240416066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef813691531e4267d7a04ac97534b93c1ab75ea8ae85565e113feeebd7c37dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:40:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:40:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:40:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:40:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:40:38 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:40:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:41:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:41:24 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:41:24 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:41:24 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 29 Aug 2017 06:41:25 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 29 Aug 2017 06:41:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:44:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:44:11 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:44:11 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:44:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:44:12 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:44:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8f7546bce130aa0cfabaa2d6ce4244f4c850b3749f3caffac3e0e54e60102c`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f232182cb6d8a3a45645c179bd983158e97faa2f1752c4117d8150b2a0752ec`  
		Last Modified: Tue, 29 Aug 2017 07:01:46 GMT  
		Size: 14.4 MB (14422197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff1d2c56381fa0e96f76b2767d3708804214b2e651afa92eac98d536c45d97`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c580923faebd17f800fc02befb09ac1c1c8734b6d0812f3314fb33252d499a58`  
		Last Modified: Tue, 29 Aug 2017 07:01:40 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d038dfafb1dcf6240df197b7d13a36d8b8a2cc891ec777300aae1bc0903f79`  
		Last Modified: Tue, 29 Aug 2017 07:01:59 GMT  
		Size: 59.2 MB (59236685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9c940991a730a35ef955cd4778a09f11cd18c366f85b08fd2c4dc8efc03b56`  
		Last Modified: Tue, 29 Aug 2017 07:01:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cc35646dbdaacecf960c25c6a9b2c2c150de3fc604c9ed385ea9df3622e8d4`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.4 MB (2447802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a165a5a2d441771f34e783c1389254d11d318e9331634550615c04a02570b2e`  
		Last Modified: Tue, 29 Aug 2017 07:01:58 GMT  
		Size: 77.1 MB (77062330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d97dc7c87c924edd293f1b78f5f1b28e9ea0773a33653491907008a2dfedeb`  
		Last Modified: Tue, 29 Aug 2017 07:01:39 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:9cfbc55c391f5c5e673984eb9dd62750c85eeddfd4db480081af8cae1de2080e
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240416066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef813691531e4267d7a04ac97534b93c1ab75ea8ae85565e113feeebd7c37dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:40:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:40:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:40:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:40:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:40:38 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:40:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:41:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:41:24 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:41:24 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:41:24 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 29 Aug 2017 06:41:25 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 29 Aug 2017 06:41:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:44:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:44:11 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:44:11 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:44:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:44:12 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:44:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8f7546bce130aa0cfabaa2d6ce4244f4c850b3749f3caffac3e0e54e60102c`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f232182cb6d8a3a45645c179bd983158e97faa2f1752c4117d8150b2a0752ec`  
		Last Modified: Tue, 29 Aug 2017 07:01:46 GMT  
		Size: 14.4 MB (14422197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff1d2c56381fa0e96f76b2767d3708804214b2e651afa92eac98d536c45d97`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c580923faebd17f800fc02befb09ac1c1c8734b6d0812f3314fb33252d499a58`  
		Last Modified: Tue, 29 Aug 2017 07:01:40 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d038dfafb1dcf6240df197b7d13a36d8b8a2cc891ec777300aae1bc0903f79`  
		Last Modified: Tue, 29 Aug 2017 07:01:59 GMT  
		Size: 59.2 MB (59236685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9c940991a730a35ef955cd4778a09f11cd18c366f85b08fd2c4dc8efc03b56`  
		Last Modified: Tue, 29 Aug 2017 07:01:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cc35646dbdaacecf960c25c6a9b2c2c150de3fc604c9ed385ea9df3622e8d4`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.4 MB (2447802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a165a5a2d441771f34e783c1389254d11d318e9331634550615c04a02570b2e`  
		Last Modified: Tue, 29 Aug 2017 07:01:58 GMT  
		Size: 77.1 MB (77062330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d97dc7c87c924edd293f1b78f5f1b28e9ea0773a33653491907008a2dfedeb`  
		Last Modified: Tue, 29 Aug 2017 07:01:39 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:9cfbc55c391f5c5e673984eb9dd62750c85eeddfd4db480081af8cae1de2080e
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240416066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef813691531e4267d7a04ac97534b93c1ab75ea8ae85565e113feeebd7c37dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:40:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:40:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:40:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:40:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:40:38 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:40:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:41:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:41:24 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:41:24 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:41:24 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 29 Aug 2017 06:41:25 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 29 Aug 2017 06:41:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:44:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:44:11 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:44:11 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:44:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:44:12 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:44:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8f7546bce130aa0cfabaa2d6ce4244f4c850b3749f3caffac3e0e54e60102c`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f232182cb6d8a3a45645c179bd983158e97faa2f1752c4117d8150b2a0752ec`  
		Last Modified: Tue, 29 Aug 2017 07:01:46 GMT  
		Size: 14.4 MB (14422197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff1d2c56381fa0e96f76b2767d3708804214b2e651afa92eac98d536c45d97`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c580923faebd17f800fc02befb09ac1c1c8734b6d0812f3314fb33252d499a58`  
		Last Modified: Tue, 29 Aug 2017 07:01:40 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d038dfafb1dcf6240df197b7d13a36d8b8a2cc891ec777300aae1bc0903f79`  
		Last Modified: Tue, 29 Aug 2017 07:01:59 GMT  
		Size: 59.2 MB (59236685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9c940991a730a35ef955cd4778a09f11cd18c366f85b08fd2c4dc8efc03b56`  
		Last Modified: Tue, 29 Aug 2017 07:01:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cc35646dbdaacecf960c25c6a9b2c2c150de3fc604c9ed385ea9df3622e8d4`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.4 MB (2447802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a165a5a2d441771f34e783c1389254d11d318e9331634550615c04a02570b2e`  
		Last Modified: Tue, 29 Aug 2017 07:01:58 GMT  
		Size: 77.1 MB (77062330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d97dc7c87c924edd293f1b78f5f1b28e9ea0773a33653491907008a2dfedeb`  
		Last Modified: Tue, 29 Aug 2017 07:01:39 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.2-passenger`

```console
$ docker pull redmine@sha256:140c41d03b43c78167b4f322f553b1d1c1b151f468b6d94c9c80ccec7bb373ca
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.2-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259295276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9473ebb8e5d13b7cc49a4e20913142ecb487b4191393d5d48263ea295406304f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:40:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:40:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:40:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:40:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:40:38 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:40:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:41:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:41:24 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:41:24 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:41:24 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 29 Aug 2017 06:41:25 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 29 Aug 2017 06:41:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:44:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:44:11 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:44:11 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:44:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:44:12 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:44:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 29 Aug 2017 06:44:17 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 29 Aug 2017 06:44:43 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:44:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 29 Aug 2017 06:44:44 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8f7546bce130aa0cfabaa2d6ce4244f4c850b3749f3caffac3e0e54e60102c`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f232182cb6d8a3a45645c179bd983158e97faa2f1752c4117d8150b2a0752ec`  
		Last Modified: Tue, 29 Aug 2017 07:01:46 GMT  
		Size: 14.4 MB (14422197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff1d2c56381fa0e96f76b2767d3708804214b2e651afa92eac98d536c45d97`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c580923faebd17f800fc02befb09ac1c1c8734b6d0812f3314fb33252d499a58`  
		Last Modified: Tue, 29 Aug 2017 07:01:40 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d038dfafb1dcf6240df197b7d13a36d8b8a2cc891ec777300aae1bc0903f79`  
		Last Modified: Tue, 29 Aug 2017 07:01:59 GMT  
		Size: 59.2 MB (59236685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9c940991a730a35ef955cd4778a09f11cd18c366f85b08fd2c4dc8efc03b56`  
		Last Modified: Tue, 29 Aug 2017 07:01:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cc35646dbdaacecf960c25c6a9b2c2c150de3fc604c9ed385ea9df3622e8d4`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.4 MB (2447802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a165a5a2d441771f34e783c1389254d11d318e9331634550615c04a02570b2e`  
		Last Modified: Tue, 29 Aug 2017 07:01:58 GMT  
		Size: 77.1 MB (77062330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d97dc7c87c924edd293f1b78f5f1b28e9ea0773a33653491907008a2dfedeb`  
		Last Modified: Tue, 29 Aug 2017 07:01:39 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5670876f73edd74a89f75e0f237257110c6cfcedf407207edde7fe95464745`  
		Last Modified: Tue, 29 Aug 2017 07:02:40 GMT  
		Size: 14.6 MB (14605302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e426fa05469993afc098f5eddbd5e79dad317bb3ecd2917e6b166b354da84516`  
		Last Modified: Tue, 29 Aug 2017 07:02:34 GMT  
		Size: 4.3 MB (4273908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:140c41d03b43c78167b4f322f553b1d1c1b151f468b6d94c9c80ccec7bb373ca
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259295276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9473ebb8e5d13b7cc49a4e20913142ecb487b4191393d5d48263ea295406304f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:40:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:40:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:40:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:40:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:40:38 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:40:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:41:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:41:24 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:41:24 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:41:24 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 29 Aug 2017 06:41:25 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 29 Aug 2017 06:41:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:44:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:44:11 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:44:11 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:44:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:44:12 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:44:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 29 Aug 2017 06:44:17 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 29 Aug 2017 06:44:43 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:44:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 29 Aug 2017 06:44:44 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8f7546bce130aa0cfabaa2d6ce4244f4c850b3749f3caffac3e0e54e60102c`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f232182cb6d8a3a45645c179bd983158e97faa2f1752c4117d8150b2a0752ec`  
		Last Modified: Tue, 29 Aug 2017 07:01:46 GMT  
		Size: 14.4 MB (14422197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff1d2c56381fa0e96f76b2767d3708804214b2e651afa92eac98d536c45d97`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c580923faebd17f800fc02befb09ac1c1c8734b6d0812f3314fb33252d499a58`  
		Last Modified: Tue, 29 Aug 2017 07:01:40 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d038dfafb1dcf6240df197b7d13a36d8b8a2cc891ec777300aae1bc0903f79`  
		Last Modified: Tue, 29 Aug 2017 07:01:59 GMT  
		Size: 59.2 MB (59236685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9c940991a730a35ef955cd4778a09f11cd18c366f85b08fd2c4dc8efc03b56`  
		Last Modified: Tue, 29 Aug 2017 07:01:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cc35646dbdaacecf960c25c6a9b2c2c150de3fc604c9ed385ea9df3622e8d4`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.4 MB (2447802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a165a5a2d441771f34e783c1389254d11d318e9331634550615c04a02570b2e`  
		Last Modified: Tue, 29 Aug 2017 07:01:58 GMT  
		Size: 77.1 MB (77062330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d97dc7c87c924edd293f1b78f5f1b28e9ea0773a33653491907008a2dfedeb`  
		Last Modified: Tue, 29 Aug 2017 07:01:39 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5670876f73edd74a89f75e0f237257110c6cfcedf407207edde7fe95464745`  
		Last Modified: Tue, 29 Aug 2017 07:02:40 GMT  
		Size: 14.6 MB (14605302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e426fa05469993afc098f5eddbd5e79dad317bb3ecd2917e6b166b354da84516`  
		Last Modified: Tue, 29 Aug 2017 07:02:34 GMT  
		Size: 4.3 MB (4273908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:140c41d03b43c78167b4f322f553b1d1c1b151f468b6d94c9c80ccec7bb373ca
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259295276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9473ebb8e5d13b7cc49a4e20913142ecb487b4191393d5d48263ea295406304f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:40:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:40:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:40:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:40:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:40:38 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:40:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:41:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:41:24 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:41:24 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:41:24 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 29 Aug 2017 06:41:25 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 29 Aug 2017 06:41:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:44:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:44:11 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:44:11 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:44:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:44:12 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:44:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 29 Aug 2017 06:44:17 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 29 Aug 2017 06:44:43 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:44:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 29 Aug 2017 06:44:44 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8f7546bce130aa0cfabaa2d6ce4244f4c850b3749f3caffac3e0e54e60102c`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f232182cb6d8a3a45645c179bd983158e97faa2f1752c4117d8150b2a0752ec`  
		Last Modified: Tue, 29 Aug 2017 07:01:46 GMT  
		Size: 14.4 MB (14422197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff1d2c56381fa0e96f76b2767d3708804214b2e651afa92eac98d536c45d97`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c580923faebd17f800fc02befb09ac1c1c8734b6d0812f3314fb33252d499a58`  
		Last Modified: Tue, 29 Aug 2017 07:01:40 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d038dfafb1dcf6240df197b7d13a36d8b8a2cc891ec777300aae1bc0903f79`  
		Last Modified: Tue, 29 Aug 2017 07:01:59 GMT  
		Size: 59.2 MB (59236685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9c940991a730a35ef955cd4778a09f11cd18c366f85b08fd2c4dc8efc03b56`  
		Last Modified: Tue, 29 Aug 2017 07:01:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cc35646dbdaacecf960c25c6a9b2c2c150de3fc604c9ed385ea9df3622e8d4`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.4 MB (2447802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a165a5a2d441771f34e783c1389254d11d318e9331634550615c04a02570b2e`  
		Last Modified: Tue, 29 Aug 2017 07:01:58 GMT  
		Size: 77.1 MB (77062330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d97dc7c87c924edd293f1b78f5f1b28e9ea0773a33653491907008a2dfedeb`  
		Last Modified: Tue, 29 Aug 2017 07:01:39 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5670876f73edd74a89f75e0f237257110c6cfcedf407207edde7fe95464745`  
		Last Modified: Tue, 29 Aug 2017 07:02:40 GMT  
		Size: 14.6 MB (14605302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e426fa05469993afc098f5eddbd5e79dad317bb3ecd2917e6b166b354da84516`  
		Last Modified: Tue, 29 Aug 2017 07:02:34 GMT  
		Size: 4.3 MB (4273908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:140c41d03b43c78167b4f322f553b1d1c1b151f468b6d94c9c80ccec7bb373ca
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259295276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9473ebb8e5d13b7cc49a4e20913142ecb487b4191393d5d48263ea295406304f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:40:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:40:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:40:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:40:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:40:38 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:40:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:41:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:41:24 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:41:24 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:41:24 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 29 Aug 2017 06:41:25 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 29 Aug 2017 06:41:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:44:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:44:11 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:44:11 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:44:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:44:12 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:44:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 29 Aug 2017 06:44:17 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 29 Aug 2017 06:44:43 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:44:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 29 Aug 2017 06:44:44 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8f7546bce130aa0cfabaa2d6ce4244f4c850b3749f3caffac3e0e54e60102c`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f232182cb6d8a3a45645c179bd983158e97faa2f1752c4117d8150b2a0752ec`  
		Last Modified: Tue, 29 Aug 2017 07:01:46 GMT  
		Size: 14.4 MB (14422197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff1d2c56381fa0e96f76b2767d3708804214b2e651afa92eac98d536c45d97`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c580923faebd17f800fc02befb09ac1c1c8734b6d0812f3314fb33252d499a58`  
		Last Modified: Tue, 29 Aug 2017 07:01:40 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d038dfafb1dcf6240df197b7d13a36d8b8a2cc891ec777300aae1bc0903f79`  
		Last Modified: Tue, 29 Aug 2017 07:01:59 GMT  
		Size: 59.2 MB (59236685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9c940991a730a35ef955cd4778a09f11cd18c366f85b08fd2c4dc8efc03b56`  
		Last Modified: Tue, 29 Aug 2017 07:01:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cc35646dbdaacecf960c25c6a9b2c2c150de3fc604c9ed385ea9df3622e8d4`  
		Last Modified: Tue, 29 Aug 2017 07:01:43 GMT  
		Size: 2.4 MB (2447802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a165a5a2d441771f34e783c1389254d11d318e9331634550615c04a02570b2e`  
		Last Modified: Tue, 29 Aug 2017 07:01:58 GMT  
		Size: 77.1 MB (77062330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d97dc7c87c924edd293f1b78f5f1b28e9ea0773a33653491907008a2dfedeb`  
		Last Modified: Tue, 29 Aug 2017 07:01:39 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5670876f73edd74a89f75e0f237257110c6cfcedf407207edde7fe95464745`  
		Last Modified: Tue, 29 Aug 2017 07:02:40 GMT  
		Size: 14.6 MB (14605302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e426fa05469993afc098f5eddbd5e79dad317bb3ecd2917e6b166b354da84516`  
		Last Modified: Tue, 29 Aug 2017 07:02:34 GMT  
		Size: 4.3 MB (4273908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4`

```console
$ docker pull redmine@sha256:91b1cb2a4bc5d9efc4544ad1945add708cb1d018ec0db0c806a12ee803fdb033
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251672937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798da64a51572b485f79d42355646bd8108326c974f28acced27c6a4c840b723`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:44:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:45:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:45:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:45:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:43 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:45:44 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:45:44 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 29 Aug 2017 06:45:44 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 29 Aug 2017 06:45:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:48:02 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:48:02 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:48:03 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:48:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:48:03 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:48:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc4c44b98b1f82fe5e250ba2536f6e8596bccf9cd336bc91817003a21dfc87`  
		Last Modified: Tue, 29 Aug 2017 07:03:15 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a76f05c667eb7a8c835266e61b2ba62fd682cf4e06fb6ef093f52603b6d5a50`  
		Last Modified: Tue, 29 Aug 2017 07:03:17 GMT  
		Size: 14.4 MB (14422232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3f4dc11088e690ed67ec345fde63123745fb749dcf3331edb66cfef1ab4e6d`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea62086b456d053de4d5b1feb79868454ad07b375e8703350b7cf0db7cc1946`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f1c1da36deec65f4c6fc97ad9ad87a2d6622d03a1c929be2b9fc451293a646`  
		Last Modified: Tue, 29 Aug 2017 07:03:32 GMT  
		Size: 59.2 MB (59236545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad73ad0bd496bd736f9fc31d118a934c5dc5386eb72be94d628af94ef39b301`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390c2ed2ea62ba55819e408ab64c2019db4e6687580c8b5fe32bae668e706c5f`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 2.4 MB (2390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1bde05ea840f9708030c05fcfee29e567c8a2e4e9876ac88810287496e6362`  
		Last Modified: Tue, 29 Aug 2017 07:03:30 GMT  
		Size: 77.7 MB (77740089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46eae9f1b72951671256565d2d11c261daf9c33c0ec45249908cf2433c277bc`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:91b1cb2a4bc5d9efc4544ad1945add708cb1d018ec0db0c806a12ee803fdb033
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251672937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798da64a51572b485f79d42355646bd8108326c974f28acced27c6a4c840b723`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:44:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:45:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:45:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:45:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:43 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:45:44 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:45:44 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 29 Aug 2017 06:45:44 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 29 Aug 2017 06:45:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:48:02 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:48:02 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:48:03 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:48:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:48:03 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:48:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc4c44b98b1f82fe5e250ba2536f6e8596bccf9cd336bc91817003a21dfc87`  
		Last Modified: Tue, 29 Aug 2017 07:03:15 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a76f05c667eb7a8c835266e61b2ba62fd682cf4e06fb6ef093f52603b6d5a50`  
		Last Modified: Tue, 29 Aug 2017 07:03:17 GMT  
		Size: 14.4 MB (14422232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3f4dc11088e690ed67ec345fde63123745fb749dcf3331edb66cfef1ab4e6d`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea62086b456d053de4d5b1feb79868454ad07b375e8703350b7cf0db7cc1946`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f1c1da36deec65f4c6fc97ad9ad87a2d6622d03a1c929be2b9fc451293a646`  
		Last Modified: Tue, 29 Aug 2017 07:03:32 GMT  
		Size: 59.2 MB (59236545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad73ad0bd496bd736f9fc31d118a934c5dc5386eb72be94d628af94ef39b301`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390c2ed2ea62ba55819e408ab64c2019db4e6687580c8b5fe32bae668e706c5f`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 2.4 MB (2390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1bde05ea840f9708030c05fcfee29e567c8a2e4e9876ac88810287496e6362`  
		Last Modified: Tue, 29 Aug 2017 07:03:30 GMT  
		Size: 77.7 MB (77740089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46eae9f1b72951671256565d2d11c261daf9c33c0ec45249908cf2433c277bc`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4-passenger`

```console
$ docker pull redmine@sha256:9440571a0cb9f63bff021f9e8b0f82d5c7a7f658c07b8e9961d9921afb60d0b5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270552101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477c18e183ecee458af1c9ce0cd1adaa8fc07ea7a629c5c39092f5fc7fd7c2db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:44:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:45:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:45:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:45:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:43 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:45:44 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:45:44 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 29 Aug 2017 06:45:44 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 29 Aug 2017 06:45:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:48:02 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:48:02 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:48:03 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:48:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:48:03 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:48:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 29 Aug 2017 06:53:23 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 29 Aug 2017 06:53:51 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:53:52 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 29 Aug 2017 06:53:53 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc4c44b98b1f82fe5e250ba2536f6e8596bccf9cd336bc91817003a21dfc87`  
		Last Modified: Tue, 29 Aug 2017 07:03:15 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a76f05c667eb7a8c835266e61b2ba62fd682cf4e06fb6ef093f52603b6d5a50`  
		Last Modified: Tue, 29 Aug 2017 07:03:17 GMT  
		Size: 14.4 MB (14422232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3f4dc11088e690ed67ec345fde63123745fb749dcf3331edb66cfef1ab4e6d`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea62086b456d053de4d5b1feb79868454ad07b375e8703350b7cf0db7cc1946`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f1c1da36deec65f4c6fc97ad9ad87a2d6622d03a1c929be2b9fc451293a646`  
		Last Modified: Tue, 29 Aug 2017 07:03:32 GMT  
		Size: 59.2 MB (59236545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad73ad0bd496bd736f9fc31d118a934c5dc5386eb72be94d628af94ef39b301`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390c2ed2ea62ba55819e408ab64c2019db4e6687580c8b5fe32bae668e706c5f`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 2.4 MB (2390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1bde05ea840f9708030c05fcfee29e567c8a2e4e9876ac88810287496e6362`  
		Last Modified: Tue, 29 Aug 2017 07:03:30 GMT  
		Size: 77.7 MB (77740089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46eae9f1b72951671256565d2d11c261daf9c33c0ec45249908cf2433c277bc`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d73f46806a4611ddb05d77911503eb0868fb1f076131074675647f1d071fe74`  
		Last Modified: Tue, 29 Aug 2017 07:03:57 GMT  
		Size: 14.6 MB (14605255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f1369eb01551cb8179f55b4e4b506d6336a4349582056d2e5fc175451bd691`  
		Last Modified: Tue, 29 Aug 2017 07:03:52 GMT  
		Size: 4.3 MB (4273909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:9440571a0cb9f63bff021f9e8b0f82d5c7a7f658c07b8e9961d9921afb60d0b5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270552101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477c18e183ecee458af1c9ce0cd1adaa8fc07ea7a629c5c39092f5fc7fd7c2db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:44:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:45:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:45:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:45:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:43 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:45:44 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:45:44 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 29 Aug 2017 06:45:44 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 29 Aug 2017 06:45:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:48:02 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:48:02 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:48:03 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:48:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:48:03 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:48:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 29 Aug 2017 06:53:23 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 29 Aug 2017 06:53:51 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:53:52 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 29 Aug 2017 06:53:53 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc4c44b98b1f82fe5e250ba2536f6e8596bccf9cd336bc91817003a21dfc87`  
		Last Modified: Tue, 29 Aug 2017 07:03:15 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a76f05c667eb7a8c835266e61b2ba62fd682cf4e06fb6ef093f52603b6d5a50`  
		Last Modified: Tue, 29 Aug 2017 07:03:17 GMT  
		Size: 14.4 MB (14422232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3f4dc11088e690ed67ec345fde63123745fb749dcf3331edb66cfef1ab4e6d`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea62086b456d053de4d5b1feb79868454ad07b375e8703350b7cf0db7cc1946`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f1c1da36deec65f4c6fc97ad9ad87a2d6622d03a1c929be2b9fc451293a646`  
		Last Modified: Tue, 29 Aug 2017 07:03:32 GMT  
		Size: 59.2 MB (59236545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad73ad0bd496bd736f9fc31d118a934c5dc5386eb72be94d628af94ef39b301`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390c2ed2ea62ba55819e408ab64c2019db4e6687580c8b5fe32bae668e706c5f`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 2.4 MB (2390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1bde05ea840f9708030c05fcfee29e567c8a2e4e9876ac88810287496e6362`  
		Last Modified: Tue, 29 Aug 2017 07:03:30 GMT  
		Size: 77.7 MB (77740089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46eae9f1b72951671256565d2d11c261daf9c33c0ec45249908cf2433c277bc`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d73f46806a4611ddb05d77911503eb0868fb1f076131074675647f1d071fe74`  
		Last Modified: Tue, 29 Aug 2017 07:03:57 GMT  
		Size: 14.6 MB (14605255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f1369eb01551cb8179f55b4e4b506d6336a4349582056d2e5fc175451bd691`  
		Last Modified: Tue, 29 Aug 2017 07:03:52 GMT  
		Size: 4.3 MB (4273909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7`

```console
$ docker pull redmine@sha256:5cdb4231386f9e5d7b6b8d31f52813aa9aa0fadfe71503fbc76e41825a81c416
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251630516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d427cc90cd1ff5717d9b38c7f8b209b56cef3fc5ec566f88311cc22ebae670cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:44:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:45:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:45:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:45:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:43 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:45:44 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:53:58 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 29 Aug 2017 06:53:58 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 29 Aug 2017 06:54:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:56:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:56:19 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:56:19 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:56:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:56:20 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:56:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc4c44b98b1f82fe5e250ba2536f6e8596bccf9cd336bc91817003a21dfc87`  
		Last Modified: Tue, 29 Aug 2017 07:03:15 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a76f05c667eb7a8c835266e61b2ba62fd682cf4e06fb6ef093f52603b6d5a50`  
		Last Modified: Tue, 29 Aug 2017 07:03:17 GMT  
		Size: 14.4 MB (14422232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3f4dc11088e690ed67ec345fde63123745fb749dcf3331edb66cfef1ab4e6d`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea62086b456d053de4d5b1feb79868454ad07b375e8703350b7cf0db7cc1946`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f1c1da36deec65f4c6fc97ad9ad87a2d6622d03a1c929be2b9fc451293a646`  
		Last Modified: Tue, 29 Aug 2017 07:03:32 GMT  
		Size: 59.2 MB (59236545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad73ad0bd496bd736f9fc31d118a934c5dc5386eb72be94d628af94ef39b301`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df7fdca82bffcb66f37f604f3c98395f12fb58511d9a6d17c42939587dc48c6`  
		Last Modified: Tue, 29 Aug 2017 07:04:18 GMT  
		Size: 2.3 MB (2346953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1a5f3abd0d92cae1ae9c2dee2d70482de4cda64106102820b0b704cd87ef0e`  
		Last Modified: Tue, 29 Aug 2017 07:04:33 GMT  
		Size: 77.7 MB (77740801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb45d706d9392f9e1cdceebf1cd1dea2ae4647ab7315b64162f462031419e5`  
		Last Modified: Tue, 29 Aug 2017 07:04:16 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:5cdb4231386f9e5d7b6b8d31f52813aa9aa0fadfe71503fbc76e41825a81c416
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251630516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d427cc90cd1ff5717d9b38c7f8b209b56cef3fc5ec566f88311cc22ebae670cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:44:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:45:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:45:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:45:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:43 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:45:44 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:53:58 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 29 Aug 2017 06:53:58 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 29 Aug 2017 06:54:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:56:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:56:19 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:56:19 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:56:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:56:20 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:56:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc4c44b98b1f82fe5e250ba2536f6e8596bccf9cd336bc91817003a21dfc87`  
		Last Modified: Tue, 29 Aug 2017 07:03:15 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a76f05c667eb7a8c835266e61b2ba62fd682cf4e06fb6ef093f52603b6d5a50`  
		Last Modified: Tue, 29 Aug 2017 07:03:17 GMT  
		Size: 14.4 MB (14422232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3f4dc11088e690ed67ec345fde63123745fb749dcf3331edb66cfef1ab4e6d`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea62086b456d053de4d5b1feb79868454ad07b375e8703350b7cf0db7cc1946`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f1c1da36deec65f4c6fc97ad9ad87a2d6622d03a1c929be2b9fc451293a646`  
		Last Modified: Tue, 29 Aug 2017 07:03:32 GMT  
		Size: 59.2 MB (59236545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad73ad0bd496bd736f9fc31d118a934c5dc5386eb72be94d628af94ef39b301`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df7fdca82bffcb66f37f604f3c98395f12fb58511d9a6d17c42939587dc48c6`  
		Last Modified: Tue, 29 Aug 2017 07:04:18 GMT  
		Size: 2.3 MB (2346953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1a5f3abd0d92cae1ae9c2dee2d70482de4cda64106102820b0b704cd87ef0e`  
		Last Modified: Tue, 29 Aug 2017 07:04:33 GMT  
		Size: 77.7 MB (77740801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb45d706d9392f9e1cdceebf1cd1dea2ae4647ab7315b64162f462031419e5`  
		Last Modified: Tue, 29 Aug 2017 07:04:16 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7-passenger`

```console
$ docker pull redmine@sha256:35d60a254ae14b8c2838cb1532c090b9165fbb773839394bde637a7d72d7d8fa
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270509604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c55e8466f4963a64fdc7aa6c2d9aa725252669dda06216911e1e4852503269`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:44:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:45:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:45:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:45:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:43 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:45:44 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:53:58 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 29 Aug 2017 06:53:58 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 29 Aug 2017 06:54:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:56:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:56:19 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:56:19 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:56:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:56:20 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:56:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 29 Aug 2017 06:56:25 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 29 Aug 2017 06:56:49 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:56:50 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 29 Aug 2017 06:56:51 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc4c44b98b1f82fe5e250ba2536f6e8596bccf9cd336bc91817003a21dfc87`  
		Last Modified: Tue, 29 Aug 2017 07:03:15 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a76f05c667eb7a8c835266e61b2ba62fd682cf4e06fb6ef093f52603b6d5a50`  
		Last Modified: Tue, 29 Aug 2017 07:03:17 GMT  
		Size: 14.4 MB (14422232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3f4dc11088e690ed67ec345fde63123745fb749dcf3331edb66cfef1ab4e6d`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea62086b456d053de4d5b1feb79868454ad07b375e8703350b7cf0db7cc1946`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f1c1da36deec65f4c6fc97ad9ad87a2d6622d03a1c929be2b9fc451293a646`  
		Last Modified: Tue, 29 Aug 2017 07:03:32 GMT  
		Size: 59.2 MB (59236545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad73ad0bd496bd736f9fc31d118a934c5dc5386eb72be94d628af94ef39b301`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df7fdca82bffcb66f37f604f3c98395f12fb58511d9a6d17c42939587dc48c6`  
		Last Modified: Tue, 29 Aug 2017 07:04:18 GMT  
		Size: 2.3 MB (2346953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1a5f3abd0d92cae1ae9c2dee2d70482de4cda64106102820b0b704cd87ef0e`  
		Last Modified: Tue, 29 Aug 2017 07:04:33 GMT  
		Size: 77.7 MB (77740801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb45d706d9392f9e1cdceebf1cd1dea2ae4647ab7315b64162f462031419e5`  
		Last Modified: Tue, 29 Aug 2017 07:04:16 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebf1e57782bab9df567320c693edbe42b7dfbc7f35c0d271fe289c7593c963e`  
		Last Modified: Tue, 29 Aug 2017 07:04:55 GMT  
		Size: 14.6 MB (14605182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf858d4eccc0db46b955c8f45f689163af9f8202c7dc800e1881ff0383ce461`  
		Last Modified: Tue, 29 Aug 2017 07:04:54 GMT  
		Size: 4.3 MB (4273906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:35d60a254ae14b8c2838cb1532c090b9165fbb773839394bde637a7d72d7d8fa
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270509604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c55e8466f4963a64fdc7aa6c2d9aa725252669dda06216911e1e4852503269`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:44:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:45:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:45:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:45:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:43 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:45:44 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:53:58 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 29 Aug 2017 06:53:58 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 29 Aug 2017 06:54:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:56:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:56:19 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:56:19 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:56:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:56:20 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:56:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 29 Aug 2017 06:56:25 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 29 Aug 2017 06:56:49 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:56:50 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 29 Aug 2017 06:56:51 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc4c44b98b1f82fe5e250ba2536f6e8596bccf9cd336bc91817003a21dfc87`  
		Last Modified: Tue, 29 Aug 2017 07:03:15 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a76f05c667eb7a8c835266e61b2ba62fd682cf4e06fb6ef093f52603b6d5a50`  
		Last Modified: Tue, 29 Aug 2017 07:03:17 GMT  
		Size: 14.4 MB (14422232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3f4dc11088e690ed67ec345fde63123745fb749dcf3331edb66cfef1ab4e6d`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea62086b456d053de4d5b1feb79868454ad07b375e8703350b7cf0db7cc1946`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f1c1da36deec65f4c6fc97ad9ad87a2d6622d03a1c929be2b9fc451293a646`  
		Last Modified: Tue, 29 Aug 2017 07:03:32 GMT  
		Size: 59.2 MB (59236545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad73ad0bd496bd736f9fc31d118a934c5dc5386eb72be94d628af94ef39b301`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df7fdca82bffcb66f37f604f3c98395f12fb58511d9a6d17c42939587dc48c6`  
		Last Modified: Tue, 29 Aug 2017 07:04:18 GMT  
		Size: 2.3 MB (2346953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1a5f3abd0d92cae1ae9c2dee2d70482de4cda64106102820b0b704cd87ef0e`  
		Last Modified: Tue, 29 Aug 2017 07:04:33 GMT  
		Size: 77.7 MB (77740801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb45d706d9392f9e1cdceebf1cd1dea2ae4647ab7315b64162f462031419e5`  
		Last Modified: Tue, 29 Aug 2017 07:04:16 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebf1e57782bab9df567320c693edbe42b7dfbc7f35c0d271fe289c7593c963e`  
		Last Modified: Tue, 29 Aug 2017 07:04:55 GMT  
		Size: 14.6 MB (14605182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf858d4eccc0db46b955c8f45f689163af9f8202c7dc800e1881ff0383ce461`  
		Last Modified: Tue, 29 Aug 2017 07:04:54 GMT  
		Size: 4.3 MB (4273906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:5cc1f3ff8a33593cf8840d3330d18f6787ec8c3b4d5c8fcfc946a6bc1c55e58a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.0 MB (242043680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a785d06acb9caf7b848403e7d6076509aee33d3ac8ed7c4f62e314680a88ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:44:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:45:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:45:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:45:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:43 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:45:44 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:56:56 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 29 Aug 2017 06:56:56 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 29 Aug 2017 06:57:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:59:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:59:09 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:59:10 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:59:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:59:10 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:59:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc4c44b98b1f82fe5e250ba2536f6e8596bccf9cd336bc91817003a21dfc87`  
		Last Modified: Tue, 29 Aug 2017 07:03:15 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a76f05c667eb7a8c835266e61b2ba62fd682cf4e06fb6ef093f52603b6d5a50`  
		Last Modified: Tue, 29 Aug 2017 07:03:17 GMT  
		Size: 14.4 MB (14422232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3f4dc11088e690ed67ec345fde63123745fb749dcf3331edb66cfef1ab4e6d`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea62086b456d053de4d5b1feb79868454ad07b375e8703350b7cf0db7cc1946`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f1c1da36deec65f4c6fc97ad9ad87a2d6622d03a1c929be2b9fc451293a646`  
		Last Modified: Tue, 29 Aug 2017 07:03:32 GMT  
		Size: 59.2 MB (59236545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad73ad0bd496bd736f9fc31d118a934c5dc5386eb72be94d628af94ef39b301`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb0cc18454594bb809c587ac9aa0be0e42a33b7df1d437119f8630ed051c1d5`  
		Last Modified: Tue, 29 Aug 2017 07:05:14 GMT  
		Size: 2.3 MB (2281369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8372c723752dbd6b90d0545d622820cacf31e1564dda155b704f9c1c6e80e972`  
		Last Modified: Tue, 29 Aug 2017 07:05:23 GMT  
		Size: 68.2 MB (68219549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d323996934a2c6c0b4b5dbb1ddefb04af06db304595071095baa8fc4e8c8ea`  
		Last Modified: Tue, 29 Aug 2017 07:05:14 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:5cc1f3ff8a33593cf8840d3330d18f6787ec8c3b4d5c8fcfc946a6bc1c55e58a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.0 MB (242043680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a785d06acb9caf7b848403e7d6076509aee33d3ac8ed7c4f62e314680a88ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:44:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:45:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:45:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:45:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:43 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:45:44 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:56:56 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 29 Aug 2017 06:56:56 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 29 Aug 2017 06:57:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:59:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:59:09 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:59:10 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:59:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:59:10 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:59:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc4c44b98b1f82fe5e250ba2536f6e8596bccf9cd336bc91817003a21dfc87`  
		Last Modified: Tue, 29 Aug 2017 07:03:15 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a76f05c667eb7a8c835266e61b2ba62fd682cf4e06fb6ef093f52603b6d5a50`  
		Last Modified: Tue, 29 Aug 2017 07:03:17 GMT  
		Size: 14.4 MB (14422232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3f4dc11088e690ed67ec345fde63123745fb749dcf3331edb66cfef1ab4e6d`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea62086b456d053de4d5b1feb79868454ad07b375e8703350b7cf0db7cc1946`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f1c1da36deec65f4c6fc97ad9ad87a2d6622d03a1c929be2b9fc451293a646`  
		Last Modified: Tue, 29 Aug 2017 07:03:32 GMT  
		Size: 59.2 MB (59236545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad73ad0bd496bd736f9fc31d118a934c5dc5386eb72be94d628af94ef39b301`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb0cc18454594bb809c587ac9aa0be0e42a33b7df1d437119f8630ed051c1d5`  
		Last Modified: Tue, 29 Aug 2017 07:05:14 GMT  
		Size: 2.3 MB (2281369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8372c723752dbd6b90d0545d622820cacf31e1564dda155b704f9c1c6e80e972`  
		Last Modified: Tue, 29 Aug 2017 07:05:23 GMT  
		Size: 68.2 MB (68219549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d323996934a2c6c0b4b5dbb1ddefb04af06db304595071095baa8fc4e8c8ea`  
		Last Modified: Tue, 29 Aug 2017 07:05:14 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:cd1b4ea41da00a8fa87c9d29e92527ec0fc5c4f8481fdfadf259ec5b34467626
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.9 MB (260922808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9153e03635c4e3105cad5f135dca9c9b86bd1b7ef0d148a10fe3a7047a2a797e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:44:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:45:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:45:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:45:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:43 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:45:44 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:56:56 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 29 Aug 2017 06:56:56 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 29 Aug 2017 06:57:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:59:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:59:09 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:59:10 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:59:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:59:10 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:59:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 29 Aug 2017 07:01:02 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 29 Aug 2017 07:01:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 07:01:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 29 Aug 2017 07:01:29 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc4c44b98b1f82fe5e250ba2536f6e8596bccf9cd336bc91817003a21dfc87`  
		Last Modified: Tue, 29 Aug 2017 07:03:15 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a76f05c667eb7a8c835266e61b2ba62fd682cf4e06fb6ef093f52603b6d5a50`  
		Last Modified: Tue, 29 Aug 2017 07:03:17 GMT  
		Size: 14.4 MB (14422232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3f4dc11088e690ed67ec345fde63123745fb749dcf3331edb66cfef1ab4e6d`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea62086b456d053de4d5b1feb79868454ad07b375e8703350b7cf0db7cc1946`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f1c1da36deec65f4c6fc97ad9ad87a2d6622d03a1c929be2b9fc451293a646`  
		Last Modified: Tue, 29 Aug 2017 07:03:32 GMT  
		Size: 59.2 MB (59236545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad73ad0bd496bd736f9fc31d118a934c5dc5386eb72be94d628af94ef39b301`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb0cc18454594bb809c587ac9aa0be0e42a33b7df1d437119f8630ed051c1d5`  
		Last Modified: Tue, 29 Aug 2017 07:05:14 GMT  
		Size: 2.3 MB (2281369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8372c723752dbd6b90d0545d622820cacf31e1564dda155b704f9c1c6e80e972`  
		Last Modified: Tue, 29 Aug 2017 07:05:23 GMT  
		Size: 68.2 MB (68219549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d323996934a2c6c0b4b5dbb1ddefb04af06db304595071095baa8fc4e8c8ea`  
		Last Modified: Tue, 29 Aug 2017 07:05:14 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064e7f80fda8df2f68b29268decfb0c7fb3f3927e21ebdf60b2e9f24e9352fca`  
		Last Modified: Tue, 29 Aug 2017 07:05:46 GMT  
		Size: 14.6 MB (14605217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3cc2630df5a678bd25a83d69200955e77eec91b20fa9d36e6931f52705aaa`  
		Last Modified: Tue, 29 Aug 2017 07:05:45 GMT  
		Size: 4.3 MB (4273911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:cd1b4ea41da00a8fa87c9d29e92527ec0fc5c4f8481fdfadf259ec5b34467626
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.9 MB (260922808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9153e03635c4e3105cad5f135dca9c9b86bd1b7ef0d148a10fe3a7047a2a797e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 06:44:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 29 Aug 2017 06:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 29 Aug 2017 06:45:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 29 Aug 2017 06:45:11 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 29 Aug 2017 06:45:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 29 Aug 2017 06:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:45:43 GMT
ENV RAILS_ENV=production
# Tue, 29 Aug 2017 06:45:44 GMT
WORKDIR /usr/src/redmine
# Tue, 29 Aug 2017 06:56:56 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 29 Aug 2017 06:56:56 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 29 Aug 2017 06:57:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 29 Aug 2017 06:59:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 06:59:09 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 29 Aug 2017 06:59:10 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 29 Aug 2017 06:59:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Aug 2017 06:59:10 GMT
EXPOSE 3000/tcp
# Tue, 29 Aug 2017 06:59:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 29 Aug 2017 07:01:02 GMT
ENV PASSENGER_VERSION=5.1.8
# Tue, 29 Aug 2017 07:01:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Aug 2017 07:01:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 29 Aug 2017 07:01:29 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc4c44b98b1f82fe5e250ba2536f6e8596bccf9cd336bc91817003a21dfc87`  
		Last Modified: Tue, 29 Aug 2017 07:03:15 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a76f05c667eb7a8c835266e61b2ba62fd682cf4e06fb6ef093f52603b6d5a50`  
		Last Modified: Tue, 29 Aug 2017 07:03:17 GMT  
		Size: 14.4 MB (14422232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3f4dc11088e690ed67ec345fde63123745fb749dcf3331edb66cfef1ab4e6d`  
		Last Modified: Tue, 29 Aug 2017 07:03:14 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea62086b456d053de4d5b1feb79868454ad07b375e8703350b7cf0db7cc1946`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f1c1da36deec65f4c6fc97ad9ad87a2d6622d03a1c929be2b9fc451293a646`  
		Last Modified: Tue, 29 Aug 2017 07:03:32 GMT  
		Size: 59.2 MB (59236545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad73ad0bd496bd736f9fc31d118a934c5dc5386eb72be94d628af94ef39b301`  
		Last Modified: Tue, 29 Aug 2017 07:03:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb0cc18454594bb809c587ac9aa0be0e42a33b7df1d437119f8630ed051c1d5`  
		Last Modified: Tue, 29 Aug 2017 07:05:14 GMT  
		Size: 2.3 MB (2281369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8372c723752dbd6b90d0545d622820cacf31e1564dda155b704f9c1c6e80e972`  
		Last Modified: Tue, 29 Aug 2017 07:05:23 GMT  
		Size: 68.2 MB (68219549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d323996934a2c6c0b4b5dbb1ddefb04af06db304595071095baa8fc4e8c8ea`  
		Last Modified: Tue, 29 Aug 2017 07:05:14 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064e7f80fda8df2f68b29268decfb0c7fb3f3927e21ebdf60b2e9f24e9352fca`  
		Last Modified: Tue, 29 Aug 2017 07:05:46 GMT  
		Size: 14.6 MB (14605217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3cc2630df5a678bd25a83d69200955e77eec91b20fa9d36e6931f52705aaa`  
		Last Modified: Tue, 29 Aug 2017 07:05:45 GMT  
		Size: 4.3 MB (4273911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
