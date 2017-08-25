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
$ docker pull redmine@sha256:16274c1f7f7320b248d64163325812d2c53573e03e9d5eb501b603c4e49f69db
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240650709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29755c24e5115cabc186eb32f85dbc21d89544801f89890f17268036efff01d3`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:05:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:05:12 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:05:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:05:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:57 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:05:57 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 22 Aug 2017 23:06:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:08:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:08:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:08:43 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:08:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:08:43 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:08:44 GMT
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
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589d9207beacee51800a3d90a3e3b4ff763d2f58a7d6b0dd05bed1f0f0fa15f7`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da70c880cc4a31134af2e63e1980142c8ba0ac973b1d645e5a6befaeaa6dd2a7`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd60984e1ddf650336acda4051d5e7c1bd155387da1300c1641bad33bcafe33f`  
		Last Modified: Tue, 22 Aug 2017 23:20:38 GMT  
		Size: 59.2 MB (59237938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3151ed65d7570698d38d901c0d58303fc17fdbce8e0067a29c6d385d8c1e370`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b54b2a203c21d2847e6ba22b23d81b9a4358e0cf6f5c9bf293ec33262d0ddc0`  
		Last Modified: Tue, 22 Aug 2017 23:20:27 GMT  
		Size: 2.4 MB (2447800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bd27069dc053ee6d66be7afb117e526ed95a83be40341f77884ef351889c72`  
		Last Modified: Tue, 22 Aug 2017 23:20:37 GMT  
		Size: 77.0 MB (77006162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107ae96639f063c2f5f19f3e313757281fa85d403e9b4363b9ed322e5d975515`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:16274c1f7f7320b248d64163325812d2c53573e03e9d5eb501b603c4e49f69db
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240650709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29755c24e5115cabc186eb32f85dbc21d89544801f89890f17268036efff01d3`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:05:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:05:12 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:05:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:05:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:57 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:05:57 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 22 Aug 2017 23:06:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:08:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:08:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:08:43 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:08:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:08:43 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:08:44 GMT
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
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589d9207beacee51800a3d90a3e3b4ff763d2f58a7d6b0dd05bed1f0f0fa15f7`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da70c880cc4a31134af2e63e1980142c8ba0ac973b1d645e5a6befaeaa6dd2a7`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd60984e1ddf650336acda4051d5e7c1bd155387da1300c1641bad33bcafe33f`  
		Last Modified: Tue, 22 Aug 2017 23:20:38 GMT  
		Size: 59.2 MB (59237938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3151ed65d7570698d38d901c0d58303fc17fdbce8e0067a29c6d385d8c1e370`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b54b2a203c21d2847e6ba22b23d81b9a4358e0cf6f5c9bf293ec33262d0ddc0`  
		Last Modified: Tue, 22 Aug 2017 23:20:27 GMT  
		Size: 2.4 MB (2447800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bd27069dc053ee6d66be7afb117e526ed95a83be40341f77884ef351889c72`  
		Last Modified: Tue, 22 Aug 2017 23:20:37 GMT  
		Size: 77.0 MB (77006162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107ae96639f063c2f5f19f3e313757281fa85d403e9b4363b9ed322e5d975515`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:16274c1f7f7320b248d64163325812d2c53573e03e9d5eb501b603c4e49f69db
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240650709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29755c24e5115cabc186eb32f85dbc21d89544801f89890f17268036efff01d3`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:05:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:05:12 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:05:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:05:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:57 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:05:57 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 22 Aug 2017 23:06:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:08:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:08:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:08:43 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:08:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:08:43 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:08:44 GMT
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
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589d9207beacee51800a3d90a3e3b4ff763d2f58a7d6b0dd05bed1f0f0fa15f7`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da70c880cc4a31134af2e63e1980142c8ba0ac973b1d645e5a6befaeaa6dd2a7`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd60984e1ddf650336acda4051d5e7c1bd155387da1300c1641bad33bcafe33f`  
		Last Modified: Tue, 22 Aug 2017 23:20:38 GMT  
		Size: 59.2 MB (59237938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3151ed65d7570698d38d901c0d58303fc17fdbce8e0067a29c6d385d8c1e370`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b54b2a203c21d2847e6ba22b23d81b9a4358e0cf6f5c9bf293ec33262d0ddc0`  
		Last Modified: Tue, 22 Aug 2017 23:20:27 GMT  
		Size: 2.4 MB (2447800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bd27069dc053ee6d66be7afb117e526ed95a83be40341f77884ef351889c72`  
		Last Modified: Tue, 22 Aug 2017 23:20:37 GMT  
		Size: 77.0 MB (77006162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107ae96639f063c2f5f19f3e313757281fa85d403e9b4363b9ed322e5d975515`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:16274c1f7f7320b248d64163325812d2c53573e03e9d5eb501b603c4e49f69db
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240650709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29755c24e5115cabc186eb32f85dbc21d89544801f89890f17268036efff01d3`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:05:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:05:12 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:05:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:05:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:57 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:05:57 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 22 Aug 2017 23:06:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:08:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:08:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:08:43 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:08:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:08:43 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:08:44 GMT
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
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589d9207beacee51800a3d90a3e3b4ff763d2f58a7d6b0dd05bed1f0f0fa15f7`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da70c880cc4a31134af2e63e1980142c8ba0ac973b1d645e5a6befaeaa6dd2a7`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd60984e1ddf650336acda4051d5e7c1bd155387da1300c1641bad33bcafe33f`  
		Last Modified: Tue, 22 Aug 2017 23:20:38 GMT  
		Size: 59.2 MB (59237938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3151ed65d7570698d38d901c0d58303fc17fdbce8e0067a29c6d385d8c1e370`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b54b2a203c21d2847e6ba22b23d81b9a4358e0cf6f5c9bf293ec33262d0ddc0`  
		Last Modified: Tue, 22 Aug 2017 23:20:27 GMT  
		Size: 2.4 MB (2447800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bd27069dc053ee6d66be7afb117e526ed95a83be40341f77884ef351889c72`  
		Last Modified: Tue, 22 Aug 2017 23:20:37 GMT  
		Size: 77.0 MB (77006162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107ae96639f063c2f5f19f3e313757281fa85d403e9b4363b9ed322e5d975515`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.2-passenger`

```console
$ docker pull redmine@sha256:5370cf138a88788e0ef54be4b27bf1a91cdad1d4badfb2e97d93fa3221cf1119
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.2-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259529378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd058ca08d8394ef362d002d910481906ec2a0dfe5b00cc1861b72e20f5a4b0`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:05:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:05:12 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:05:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:05:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:57 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:05:57 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 22 Aug 2017 23:06:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:08:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:08:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:08:43 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:08:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:08:43 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:08:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 15:12:44 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 15:13:16 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 15:13:17 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 15:13:18 GMT
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
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589d9207beacee51800a3d90a3e3b4ff763d2f58a7d6b0dd05bed1f0f0fa15f7`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da70c880cc4a31134af2e63e1980142c8ba0ac973b1d645e5a6befaeaa6dd2a7`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd60984e1ddf650336acda4051d5e7c1bd155387da1300c1641bad33bcafe33f`  
		Last Modified: Tue, 22 Aug 2017 23:20:38 GMT  
		Size: 59.2 MB (59237938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3151ed65d7570698d38d901c0d58303fc17fdbce8e0067a29c6d385d8c1e370`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b54b2a203c21d2847e6ba22b23d81b9a4358e0cf6f5c9bf293ec33262d0ddc0`  
		Last Modified: Tue, 22 Aug 2017 23:20:27 GMT  
		Size: 2.4 MB (2447800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bd27069dc053ee6d66be7afb117e526ed95a83be40341f77884ef351889c72`  
		Last Modified: Tue, 22 Aug 2017 23:20:37 GMT  
		Size: 77.0 MB (77006162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107ae96639f063c2f5f19f3e313757281fa85d403e9b4363b9ed322e5d975515`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e33dca79a8ed50e659435e7728b63bcdee70f4f466e4c187140aed5e1ec4554`  
		Last Modified: Fri, 25 Aug 2017 15:15:43 GMT  
		Size: 14.6 MB (14604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2beac41e06153407520717d233bdb642e0d719640704d26246bb761e1d2936e`  
		Last Modified: Fri, 25 Aug 2017 15:15:41 GMT  
		Size: 4.3 MB (4273906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:5370cf138a88788e0ef54be4b27bf1a91cdad1d4badfb2e97d93fa3221cf1119
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259529378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd058ca08d8394ef362d002d910481906ec2a0dfe5b00cc1861b72e20f5a4b0`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:05:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:05:12 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:05:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:05:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:57 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:05:57 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 22 Aug 2017 23:06:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:08:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:08:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:08:43 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:08:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:08:43 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:08:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 15:12:44 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 15:13:16 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 15:13:17 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 15:13:18 GMT
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
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589d9207beacee51800a3d90a3e3b4ff763d2f58a7d6b0dd05bed1f0f0fa15f7`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da70c880cc4a31134af2e63e1980142c8ba0ac973b1d645e5a6befaeaa6dd2a7`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd60984e1ddf650336acda4051d5e7c1bd155387da1300c1641bad33bcafe33f`  
		Last Modified: Tue, 22 Aug 2017 23:20:38 GMT  
		Size: 59.2 MB (59237938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3151ed65d7570698d38d901c0d58303fc17fdbce8e0067a29c6d385d8c1e370`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b54b2a203c21d2847e6ba22b23d81b9a4358e0cf6f5c9bf293ec33262d0ddc0`  
		Last Modified: Tue, 22 Aug 2017 23:20:27 GMT  
		Size: 2.4 MB (2447800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bd27069dc053ee6d66be7afb117e526ed95a83be40341f77884ef351889c72`  
		Last Modified: Tue, 22 Aug 2017 23:20:37 GMT  
		Size: 77.0 MB (77006162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107ae96639f063c2f5f19f3e313757281fa85d403e9b4363b9ed322e5d975515`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e33dca79a8ed50e659435e7728b63bcdee70f4f466e4c187140aed5e1ec4554`  
		Last Modified: Fri, 25 Aug 2017 15:15:43 GMT  
		Size: 14.6 MB (14604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2beac41e06153407520717d233bdb642e0d719640704d26246bb761e1d2936e`  
		Last Modified: Fri, 25 Aug 2017 15:15:41 GMT  
		Size: 4.3 MB (4273906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:5370cf138a88788e0ef54be4b27bf1a91cdad1d4badfb2e97d93fa3221cf1119
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259529378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd058ca08d8394ef362d002d910481906ec2a0dfe5b00cc1861b72e20f5a4b0`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:05:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:05:12 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:05:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:05:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:57 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:05:57 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 22 Aug 2017 23:06:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:08:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:08:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:08:43 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:08:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:08:43 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:08:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 15:12:44 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 15:13:16 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 15:13:17 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 15:13:18 GMT
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
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589d9207beacee51800a3d90a3e3b4ff763d2f58a7d6b0dd05bed1f0f0fa15f7`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da70c880cc4a31134af2e63e1980142c8ba0ac973b1d645e5a6befaeaa6dd2a7`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd60984e1ddf650336acda4051d5e7c1bd155387da1300c1641bad33bcafe33f`  
		Last Modified: Tue, 22 Aug 2017 23:20:38 GMT  
		Size: 59.2 MB (59237938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3151ed65d7570698d38d901c0d58303fc17fdbce8e0067a29c6d385d8c1e370`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b54b2a203c21d2847e6ba22b23d81b9a4358e0cf6f5c9bf293ec33262d0ddc0`  
		Last Modified: Tue, 22 Aug 2017 23:20:27 GMT  
		Size: 2.4 MB (2447800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bd27069dc053ee6d66be7afb117e526ed95a83be40341f77884ef351889c72`  
		Last Modified: Tue, 22 Aug 2017 23:20:37 GMT  
		Size: 77.0 MB (77006162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107ae96639f063c2f5f19f3e313757281fa85d403e9b4363b9ed322e5d975515`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e33dca79a8ed50e659435e7728b63bcdee70f4f466e4c187140aed5e1ec4554`  
		Last Modified: Fri, 25 Aug 2017 15:15:43 GMT  
		Size: 14.6 MB (14604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2beac41e06153407520717d233bdb642e0d719640704d26246bb761e1d2936e`  
		Last Modified: Fri, 25 Aug 2017 15:15:41 GMT  
		Size: 4.3 MB (4273906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:5370cf138a88788e0ef54be4b27bf1a91cdad1d4badfb2e97d93fa3221cf1119
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259529378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd058ca08d8394ef362d002d910481906ec2a0dfe5b00cc1861b72e20f5a4b0`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:05:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:05:12 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:05:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:05:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:05:57 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:05:57 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 22 Aug 2017 23:05:58 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 22 Aug 2017 23:06:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:08:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:08:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:08:43 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:08:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:08:43 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:08:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 15:12:44 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 15:13:16 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 15:13:17 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 15:13:18 GMT
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
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589d9207beacee51800a3d90a3e3b4ff763d2f58a7d6b0dd05bed1f0f0fa15f7`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da70c880cc4a31134af2e63e1980142c8ba0ac973b1d645e5a6befaeaa6dd2a7`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd60984e1ddf650336acda4051d5e7c1bd155387da1300c1641bad33bcafe33f`  
		Last Modified: Tue, 22 Aug 2017 23:20:38 GMT  
		Size: 59.2 MB (59237938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3151ed65d7570698d38d901c0d58303fc17fdbce8e0067a29c6d385d8c1e370`  
		Last Modified: Tue, 22 Aug 2017 23:20:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b54b2a203c21d2847e6ba22b23d81b9a4358e0cf6f5c9bf293ec33262d0ddc0`  
		Last Modified: Tue, 22 Aug 2017 23:20:27 GMT  
		Size: 2.4 MB (2447800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bd27069dc053ee6d66be7afb117e526ed95a83be40341f77884ef351889c72`  
		Last Modified: Tue, 22 Aug 2017 23:20:37 GMT  
		Size: 77.0 MB (77006162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107ae96639f063c2f5f19f3e313757281fa85d403e9b4363b9ed322e5d975515`  
		Last Modified: Tue, 22 Aug 2017 23:20:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e33dca79a8ed50e659435e7728b63bcdee70f4f466e4c187140aed5e1ec4554`  
		Last Modified: Fri, 25 Aug 2017 15:15:43 GMT  
		Size: 14.6 MB (14604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2beac41e06153407520717d233bdb642e0d719640704d26246bb761e1d2936e`  
		Last Modified: Fri, 25 Aug 2017 15:15:41 GMT  
		Size: 4.3 MB (4273906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4`

```console
$ docker pull redmine@sha256:01de34602f774bfe1f0c315396aaebf7fb65c154c45d47ca471fa8c29493c022
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251891195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9892515a42747873789a0e6534ffe66a669dfb3bc8348329c028bd2ae3fcca`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:09:38 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:09:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:09:42 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:09:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:10:24 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:10:24 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:10:25 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 22 Aug 2017 23:10:25 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 22 Aug 2017 23:10:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:13:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:13:07 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:13:07 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:13:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:13:08 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:13:08 GMT
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
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006e3b45280811c981f8ce0b00d494aef498904eec59e8773cc06252742397f7`  
		Last Modified: Tue, 22 Aug 2017 23:21:52 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59ca937651b17feceefecde90b0757cfa3a3069d3faffa062dd5abe2f1da62`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ca5697a7b75aca575442120c5f1c6448c794c50d2a8af5ff3a20501d78398b`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 59.2 MB (59237461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88db2fa45f2d6dd8bf03ed03f7ba0137c8709974e18ffad6721a47622d2fbab`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b463615a11b88fbc672e1aabccc9564414b76af3e30dc92a40d0537ede5674`  
		Last Modified: Tue, 22 Aug 2017 23:21:50 GMT  
		Size: 2.4 MB (2390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc8dd421589bbee6798ee7c496c91d4b87f9a5cd64d4d3218c299ab4bb73f7a`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 77.7 MB (77673080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1e3944a7f94719e7e73892203fd5e331e53e167b9961db224e50194f317c48`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:01de34602f774bfe1f0c315396aaebf7fb65c154c45d47ca471fa8c29493c022
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251891195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9892515a42747873789a0e6534ffe66a669dfb3bc8348329c028bd2ae3fcca`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:09:38 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:09:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:09:42 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:09:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:10:24 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:10:24 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:10:25 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 22 Aug 2017 23:10:25 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 22 Aug 2017 23:10:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:13:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:13:07 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:13:07 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:13:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:13:08 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:13:08 GMT
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
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006e3b45280811c981f8ce0b00d494aef498904eec59e8773cc06252742397f7`  
		Last Modified: Tue, 22 Aug 2017 23:21:52 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59ca937651b17feceefecde90b0757cfa3a3069d3faffa062dd5abe2f1da62`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ca5697a7b75aca575442120c5f1c6448c794c50d2a8af5ff3a20501d78398b`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 59.2 MB (59237461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88db2fa45f2d6dd8bf03ed03f7ba0137c8709974e18ffad6721a47622d2fbab`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b463615a11b88fbc672e1aabccc9564414b76af3e30dc92a40d0537ede5674`  
		Last Modified: Tue, 22 Aug 2017 23:21:50 GMT  
		Size: 2.4 MB (2390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc8dd421589bbee6798ee7c496c91d4b87f9a5cd64d4d3218c299ab4bb73f7a`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 77.7 MB (77673080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1e3944a7f94719e7e73892203fd5e331e53e167b9961db224e50194f317c48`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4-passenger`

```console
$ docker pull redmine@sha256:37643c87f8be309c43f4ac31f3a9ec48ecac2ca23bb6b2d714a9da6d0f4f3fbb
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270770406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce03ba679d0857ccbcf0e1ebbf7cdc924984c5d908a8451cb3baaf7968ce956`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:09:38 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:09:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:09:42 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:09:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:10:24 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:10:24 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:10:25 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 22 Aug 2017 23:10:25 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 22 Aug 2017 23:10:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:13:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:13:07 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:13:07 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:13:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:13:08 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:13:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 15:13:23 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 15:13:55 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 15:13:56 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 15:13:57 GMT
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
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006e3b45280811c981f8ce0b00d494aef498904eec59e8773cc06252742397f7`  
		Last Modified: Tue, 22 Aug 2017 23:21:52 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59ca937651b17feceefecde90b0757cfa3a3069d3faffa062dd5abe2f1da62`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ca5697a7b75aca575442120c5f1c6448c794c50d2a8af5ff3a20501d78398b`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 59.2 MB (59237461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88db2fa45f2d6dd8bf03ed03f7ba0137c8709974e18ffad6721a47622d2fbab`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b463615a11b88fbc672e1aabccc9564414b76af3e30dc92a40d0537ede5674`  
		Last Modified: Tue, 22 Aug 2017 23:21:50 GMT  
		Size: 2.4 MB (2390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc8dd421589bbee6798ee7c496c91d4b87f9a5cd64d4d3218c299ab4bb73f7a`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 77.7 MB (77673080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1e3944a7f94719e7e73892203fd5e331e53e167b9961db224e50194f317c48`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d840952c1d907c21c474a3544df4faa41eda2530047e1e4678da592cc1d4c76f`  
		Last Modified: Fri, 25 Aug 2017 15:16:31 GMT  
		Size: 14.6 MB (14605312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebcbdb2a817e3e98d438a0bd44ea7e09af6ddbd32e78f4ada1623d5c19cb943`  
		Last Modified: Fri, 25 Aug 2017 15:16:29 GMT  
		Size: 4.3 MB (4273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:37643c87f8be309c43f4ac31f3a9ec48ecac2ca23bb6b2d714a9da6d0f4f3fbb
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270770406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce03ba679d0857ccbcf0e1ebbf7cdc924984c5d908a8451cb3baaf7968ce956`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:09:38 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:09:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:09:42 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:09:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:10:24 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:10:24 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:10:25 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 22 Aug 2017 23:10:25 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 22 Aug 2017 23:10:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:13:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:13:07 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:13:07 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:13:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:13:08 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:13:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 15:13:23 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 15:13:55 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 15:13:56 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 15:13:57 GMT
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
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006e3b45280811c981f8ce0b00d494aef498904eec59e8773cc06252742397f7`  
		Last Modified: Tue, 22 Aug 2017 23:21:52 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59ca937651b17feceefecde90b0757cfa3a3069d3faffa062dd5abe2f1da62`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ca5697a7b75aca575442120c5f1c6448c794c50d2a8af5ff3a20501d78398b`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 59.2 MB (59237461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88db2fa45f2d6dd8bf03ed03f7ba0137c8709974e18ffad6721a47622d2fbab`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b463615a11b88fbc672e1aabccc9564414b76af3e30dc92a40d0537ede5674`  
		Last Modified: Tue, 22 Aug 2017 23:21:50 GMT  
		Size: 2.4 MB (2390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc8dd421589bbee6798ee7c496c91d4b87f9a5cd64d4d3218c299ab4bb73f7a`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 77.7 MB (77673080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1e3944a7f94719e7e73892203fd5e331e53e167b9961db224e50194f317c48`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d840952c1d907c21c474a3544df4faa41eda2530047e1e4678da592cc1d4c76f`  
		Last Modified: Fri, 25 Aug 2017 15:16:31 GMT  
		Size: 14.6 MB (14605312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebcbdb2a817e3e98d438a0bd44ea7e09af6ddbd32e78f4ada1623d5c19cb943`  
		Last Modified: Fri, 25 Aug 2017 15:16:29 GMT  
		Size: 4.3 MB (4273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7`

```console
$ docker pull redmine@sha256:31b9360b4e60386390904c40400c71c75ee85733dbb9003d9b98b89c84e9eeb7
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251847658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef88ca68beb9b41195b1c41eb71ecfd03bbff3235aab1458a14f935c2d44aed0`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:09:38 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:09:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:09:42 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:09:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:10:24 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:10:24 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:13:44 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 22 Aug 2017 23:13:44 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 22 Aug 2017 23:13:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:16:21 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:16:22 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:16:22 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:16:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:16:23 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:16:23 GMT
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
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006e3b45280811c981f8ce0b00d494aef498904eec59e8773cc06252742397f7`  
		Last Modified: Tue, 22 Aug 2017 23:21:52 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59ca937651b17feceefecde90b0757cfa3a3069d3faffa062dd5abe2f1da62`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ca5697a7b75aca575442120c5f1c6448c794c50d2a8af5ff3a20501d78398b`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 59.2 MB (59237461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88db2fa45f2d6dd8bf03ed03f7ba0137c8709974e18ffad6721a47622d2fbab`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2915ed87a769b15f1667c12308c0e1bee392917b6e4f56416c644cd918ed6e5c`  
		Last Modified: Tue, 22 Aug 2017 23:22:42 GMT  
		Size: 2.3 MB (2346951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51007278687cd2c32dc2ff51aff8f19e72bb729faf8aa14928d504e96819b45`  
		Last Modified: Tue, 22 Aug 2017 23:22:50 GMT  
		Size: 77.7 MB (77672679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e395edb62191c88e313347752e1b8b6224aa140aad262f660f39214bdf437dcb`  
		Last Modified: Tue, 22 Aug 2017 23:22:40 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:31b9360b4e60386390904c40400c71c75ee85733dbb9003d9b98b89c84e9eeb7
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251847658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef88ca68beb9b41195b1c41eb71ecfd03bbff3235aab1458a14f935c2d44aed0`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:09:38 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:09:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:09:42 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:09:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:10:24 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:10:24 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:13:44 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 22 Aug 2017 23:13:44 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 22 Aug 2017 23:13:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:16:21 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:16:22 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:16:22 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:16:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:16:23 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:16:23 GMT
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
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006e3b45280811c981f8ce0b00d494aef498904eec59e8773cc06252742397f7`  
		Last Modified: Tue, 22 Aug 2017 23:21:52 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59ca937651b17feceefecde90b0757cfa3a3069d3faffa062dd5abe2f1da62`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ca5697a7b75aca575442120c5f1c6448c794c50d2a8af5ff3a20501d78398b`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 59.2 MB (59237461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88db2fa45f2d6dd8bf03ed03f7ba0137c8709974e18ffad6721a47622d2fbab`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2915ed87a769b15f1667c12308c0e1bee392917b6e4f56416c644cd918ed6e5c`  
		Last Modified: Tue, 22 Aug 2017 23:22:42 GMT  
		Size: 2.3 MB (2346951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51007278687cd2c32dc2ff51aff8f19e72bb729faf8aa14928d504e96819b45`  
		Last Modified: Tue, 22 Aug 2017 23:22:50 GMT  
		Size: 77.7 MB (77672679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e395edb62191c88e313347752e1b8b6224aa140aad262f660f39214bdf437dcb`  
		Last Modified: Tue, 22 Aug 2017 23:22:40 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7-passenger`

```console
$ docker pull redmine@sha256:584d333c11cf0b86b4ebb346ad8be6dd816ddced56201d2255dcfed7b6960bf9
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270726792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74934217304a69b0e1c8e6bc7ef47548ec05e0e03dc31549e4384764da75647e`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:09:38 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:09:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:09:42 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:09:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:10:24 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:10:24 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:13:44 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 22 Aug 2017 23:13:44 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 22 Aug 2017 23:13:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:16:21 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:16:22 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:16:22 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:16:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:16:23 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:16:23 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 15:14:02 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 15:14:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 15:14:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 15:14:30 GMT
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
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006e3b45280811c981f8ce0b00d494aef498904eec59e8773cc06252742397f7`  
		Last Modified: Tue, 22 Aug 2017 23:21:52 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59ca937651b17feceefecde90b0757cfa3a3069d3faffa062dd5abe2f1da62`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ca5697a7b75aca575442120c5f1c6448c794c50d2a8af5ff3a20501d78398b`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 59.2 MB (59237461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88db2fa45f2d6dd8bf03ed03f7ba0137c8709974e18ffad6721a47622d2fbab`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2915ed87a769b15f1667c12308c0e1bee392917b6e4f56416c644cd918ed6e5c`  
		Last Modified: Tue, 22 Aug 2017 23:22:42 GMT  
		Size: 2.3 MB (2346951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51007278687cd2c32dc2ff51aff8f19e72bb729faf8aa14928d504e96819b45`  
		Last Modified: Tue, 22 Aug 2017 23:22:50 GMT  
		Size: 77.7 MB (77672679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e395edb62191c88e313347752e1b8b6224aa140aad262f660f39214bdf437dcb`  
		Last Modified: Tue, 22 Aug 2017 23:22:40 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41672872948eba348c206b3b02c9640da6e44c29aeb13f173ea0f3879a519f2`  
		Last Modified: Fri, 25 Aug 2017 15:17:03 GMT  
		Size: 14.6 MB (14605235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d78fa4269221efc3061cc03dc35a179bb8cb08b1811f73f591b3f847512f4f2`  
		Last Modified: Fri, 25 Aug 2017 15:17:02 GMT  
		Size: 4.3 MB (4273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:584d333c11cf0b86b4ebb346ad8be6dd816ddced56201d2255dcfed7b6960bf9
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270726792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74934217304a69b0e1c8e6bc7ef47548ec05e0e03dc31549e4384764da75647e`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:09:38 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:09:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:09:42 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:09:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:10:24 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:10:24 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:13:44 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 22 Aug 2017 23:13:44 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 22 Aug 2017 23:13:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:16:21 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:16:22 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:16:22 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:16:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:16:23 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:16:23 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 15:14:02 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 15:14:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 15:14:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 15:14:30 GMT
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
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006e3b45280811c981f8ce0b00d494aef498904eec59e8773cc06252742397f7`  
		Last Modified: Tue, 22 Aug 2017 23:21:52 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59ca937651b17feceefecde90b0757cfa3a3069d3faffa062dd5abe2f1da62`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ca5697a7b75aca575442120c5f1c6448c794c50d2a8af5ff3a20501d78398b`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 59.2 MB (59237461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88db2fa45f2d6dd8bf03ed03f7ba0137c8709974e18ffad6721a47622d2fbab`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2915ed87a769b15f1667c12308c0e1bee392917b6e4f56416c644cd918ed6e5c`  
		Last Modified: Tue, 22 Aug 2017 23:22:42 GMT  
		Size: 2.3 MB (2346951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51007278687cd2c32dc2ff51aff8f19e72bb729faf8aa14928d504e96819b45`  
		Last Modified: Tue, 22 Aug 2017 23:22:50 GMT  
		Size: 77.7 MB (77672679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e395edb62191c88e313347752e1b8b6224aa140aad262f660f39214bdf437dcb`  
		Last Modified: Tue, 22 Aug 2017 23:22:40 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41672872948eba348c206b3b02c9640da6e44c29aeb13f173ea0f3879a519f2`  
		Last Modified: Fri, 25 Aug 2017 15:17:03 GMT  
		Size: 14.6 MB (14605235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d78fa4269221efc3061cc03dc35a179bb8cb08b1811f73f591b3f847512f4f2`  
		Last Modified: Fri, 25 Aug 2017 15:17:02 GMT  
		Size: 4.3 MB (4273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:a2d885062e740a06229904c0eaad80465d7909bb7d7ce20b5d671f7cdc8a1da1
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.3 MB (242278492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c5e1a1037d824947602cb3a9dc7f8bc48cc028290ce3038a52ea51a921e96ef`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:09:38 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:09:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:09:42 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:09:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:10:24 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:10:24 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:16:58 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 22 Aug 2017 23:16:59 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 22 Aug 2017 23:17:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:19:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:19:42 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:19:43 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:19:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:19:43 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:19:43 GMT
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
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006e3b45280811c981f8ce0b00d494aef498904eec59e8773cc06252742397f7`  
		Last Modified: Tue, 22 Aug 2017 23:21:52 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59ca937651b17feceefecde90b0757cfa3a3069d3faffa062dd5abe2f1da62`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ca5697a7b75aca575442120c5f1c6448c794c50d2a8af5ff3a20501d78398b`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 59.2 MB (59237461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88db2fa45f2d6dd8bf03ed03f7ba0137c8709974e18ffad6721a47622d2fbab`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e61f830300ea4409667cd422a817e8db965d57cc239f05d70513859b6093189`  
		Last Modified: Tue, 22 Aug 2017 23:23:29 GMT  
		Size: 2.3 MB (2281376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e75ec26ff82a3d5564cf26547dcd5e654e12e87f11c66a86a42e16d358bca03`  
		Last Modified: Tue, 22 Aug 2017 23:23:40 GMT  
		Size: 68.2 MB (68169088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f0039d1496cbd42b7652fb0a757869488be008229c384a4d4e9a9d64f64ce8`  
		Last Modified: Tue, 22 Aug 2017 23:23:30 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:a2d885062e740a06229904c0eaad80465d7909bb7d7ce20b5d671f7cdc8a1da1
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.3 MB (242278492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c5e1a1037d824947602cb3a9dc7f8bc48cc028290ce3038a52ea51a921e96ef`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:09:38 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:09:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:09:42 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:09:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:10:24 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:10:24 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:16:58 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 22 Aug 2017 23:16:59 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 22 Aug 2017 23:17:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:19:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:19:42 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:19:43 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:19:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:19:43 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:19:43 GMT
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
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006e3b45280811c981f8ce0b00d494aef498904eec59e8773cc06252742397f7`  
		Last Modified: Tue, 22 Aug 2017 23:21:52 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59ca937651b17feceefecde90b0757cfa3a3069d3faffa062dd5abe2f1da62`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ca5697a7b75aca575442120c5f1c6448c794c50d2a8af5ff3a20501d78398b`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 59.2 MB (59237461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88db2fa45f2d6dd8bf03ed03f7ba0137c8709974e18ffad6721a47622d2fbab`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e61f830300ea4409667cd422a817e8db965d57cc239f05d70513859b6093189`  
		Last Modified: Tue, 22 Aug 2017 23:23:29 GMT  
		Size: 2.3 MB (2281376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e75ec26ff82a3d5564cf26547dcd5e654e12e87f11c66a86a42e16d358bca03`  
		Last Modified: Tue, 22 Aug 2017 23:23:40 GMT  
		Size: 68.2 MB (68169088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f0039d1496cbd42b7652fb0a757869488be008229c384a4d4e9a9d64f64ce8`  
		Last Modified: Tue, 22 Aug 2017 23:23:30 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:12ce248b032e3b63a66767a4e648ef454a49f0611421636b5e9a4f60532f53e8
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261157657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d2cb75c289f61be3f62c511799479ab2f8d74c1444a1ac9809574122117a77`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:09:38 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:09:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:09:42 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:09:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:10:24 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:10:24 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:16:58 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 22 Aug 2017 23:16:59 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 22 Aug 2017 23:17:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:19:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:19:42 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:19:43 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:19:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:19:43 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:19:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 15:14:35 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 15:15:02 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 15:15:03 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 15:15:03 GMT
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
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006e3b45280811c981f8ce0b00d494aef498904eec59e8773cc06252742397f7`  
		Last Modified: Tue, 22 Aug 2017 23:21:52 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59ca937651b17feceefecde90b0757cfa3a3069d3faffa062dd5abe2f1da62`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ca5697a7b75aca575442120c5f1c6448c794c50d2a8af5ff3a20501d78398b`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 59.2 MB (59237461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88db2fa45f2d6dd8bf03ed03f7ba0137c8709974e18ffad6721a47622d2fbab`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e61f830300ea4409667cd422a817e8db965d57cc239f05d70513859b6093189`  
		Last Modified: Tue, 22 Aug 2017 23:23:29 GMT  
		Size: 2.3 MB (2281376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e75ec26ff82a3d5564cf26547dcd5e654e12e87f11c66a86a42e16d358bca03`  
		Last Modified: Tue, 22 Aug 2017 23:23:40 GMT  
		Size: 68.2 MB (68169088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f0039d1496cbd42b7652fb0a757869488be008229c384a4d4e9a9d64f64ce8`  
		Last Modified: Tue, 22 Aug 2017 23:23:30 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a031cffb31688095706e986be3a5247d1cc776f988fe4e70ec4ecf164b5aadc0`  
		Last Modified: Fri, 25 Aug 2017 15:17:36 GMT  
		Size: 14.6 MB (14605260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fcc2b5b6ceb629e38f63575a87049e091583d36f23fe46e77ef91f6d9df0fe`  
		Last Modified: Fri, 25 Aug 2017 15:17:39 GMT  
		Size: 4.3 MB (4273905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:12ce248b032e3b63a66767a4e648ef454a49f0611421636b5e9a4f60532f53e8
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261157657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d2cb75c289f61be3f62c511799479ab2f8d74c1444a1ac9809574122117a77`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:09:38 GMT
ENV GOSU_VERSION=1.7
# Tue, 22 Aug 2017 23:09:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Aug 2017 23:09:42 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Aug 2017 23:09:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Aug 2017 23:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 23:10:24 GMT
ENV RAILS_ENV=production
# Tue, 22 Aug 2017 23:10:24 GMT
WORKDIR /usr/src/redmine
# Tue, 22 Aug 2017 23:16:58 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 22 Aug 2017 23:16:59 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 22 Aug 2017 23:17:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 22 Aug 2017 23:19:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 22 Aug 2017 23:19:42 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 22 Aug 2017 23:19:43 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 22 Aug 2017 23:19:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Aug 2017 23:19:43 GMT
EXPOSE 3000/tcp
# Tue, 22 Aug 2017 23:19:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 15:14:35 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 15:15:02 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 15:15:03 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 15:15:03 GMT
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
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006e3b45280811c981f8ce0b00d494aef498904eec59e8773cc06252742397f7`  
		Last Modified: Tue, 22 Aug 2017 23:21:52 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59ca937651b17feceefecde90b0757cfa3a3069d3faffa062dd5abe2f1da62`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ca5697a7b75aca575442120c5f1c6448c794c50d2a8af5ff3a20501d78398b`  
		Last Modified: Tue, 22 Aug 2017 23:22:01 GMT  
		Size: 59.2 MB (59237461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88db2fa45f2d6dd8bf03ed03f7ba0137c8709974e18ffad6721a47622d2fbab`  
		Last Modified: Tue, 22 Aug 2017 23:21:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e61f830300ea4409667cd422a817e8db965d57cc239f05d70513859b6093189`  
		Last Modified: Tue, 22 Aug 2017 23:23:29 GMT  
		Size: 2.3 MB (2281376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e75ec26ff82a3d5564cf26547dcd5e654e12e87f11c66a86a42e16d358bca03`  
		Last Modified: Tue, 22 Aug 2017 23:23:40 GMT  
		Size: 68.2 MB (68169088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f0039d1496cbd42b7652fb0a757869488be008229c384a4d4e9a9d64f64ce8`  
		Last Modified: Tue, 22 Aug 2017 23:23:30 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a031cffb31688095706e986be3a5247d1cc776f988fe4e70ec4ecf164b5aadc0`  
		Last Modified: Fri, 25 Aug 2017 15:17:36 GMT  
		Size: 14.6 MB (14605260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fcc2b5b6ceb629e38f63575a87049e091583d36f23fe46e77ef91f6d9df0fe`  
		Last Modified: Fri, 25 Aug 2017 15:17:39 GMT  
		Size: 4.3 MB (4273905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
