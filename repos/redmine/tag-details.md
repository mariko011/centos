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
$ docker pull redmine@sha256:77564013ea7bcc08130e5df69335c9368ae93f12538911d551454c015d6c848c
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.9 MB (236914728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df100b8ca0b07fb7c230b8feeaeb5bc94c2fb7c0c3832eac09d947313fb145ce`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:28:07 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 07 Dec 2016 23:28:08 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 07 Dec 2016 23:28:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:30:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:30:39 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:30:40 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:30:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:30:40 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:30:41 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b9f4782bf5ead5a7c53d400664b1c83e394ceb6ab815a03c31dd4aabcc828d`  
		Last Modified: Wed, 07 Dec 2016 23:37:24 GMT  
		Size: 2.3 MB (2273004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a658a0de21736d55a626c9ab4d49800143fa497d2a7a2a46c9168f5a583140`  
		Last Modified: Wed, 07 Dec 2016 23:37:46 GMT  
		Size: 66.6 MB (66554450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ef62d0719f4a7069ca0cbe60869779109c8e3eb88fda1acad95c8e173285b6`  
		Last Modified: Wed, 07 Dec 2016 23:37:22 GMT  
		Size: 1.5 KB (1461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:77564013ea7bcc08130e5df69335c9368ae93f12538911d551454c015d6c848c
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.9 MB (236914728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df100b8ca0b07fb7c230b8feeaeb5bc94c2fb7c0c3832eac09d947313fb145ce`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:28:07 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 07 Dec 2016 23:28:08 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 07 Dec 2016 23:28:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:30:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:30:39 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:30:40 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:30:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:30:40 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:30:41 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b9f4782bf5ead5a7c53d400664b1c83e394ceb6ab815a03c31dd4aabcc828d`  
		Last Modified: Wed, 07 Dec 2016 23:37:24 GMT  
		Size: 2.3 MB (2273004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a658a0de21736d55a626c9ab4d49800143fa497d2a7a2a46c9168f5a583140`  
		Last Modified: Wed, 07 Dec 2016 23:37:46 GMT  
		Size: 66.6 MB (66554450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ef62d0719f4a7069ca0cbe60869779109c8e3eb88fda1acad95c8e173285b6`  
		Last Modified: Wed, 07 Dec 2016 23:37:22 GMT  
		Size: 1.5 KB (1461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:1529fe61f46b8d17cd99c2496fd810d68fd7efe477b2497be257c5b75497b57d
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269043913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b58c3d11d9aaf541b1563c9aeb77eea37a9fb4beddd53b23da878a3b0d3e2b`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:28:07 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 07 Dec 2016 23:28:08 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 07 Dec 2016 23:28:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:30:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:30:39 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:30:40 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:30:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:30:40 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:30:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Dec 2016 23:30:42 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 07 Dec 2016 23:30:57 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:30:58 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 07 Dec 2016 23:30:59 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b9f4782bf5ead5a7c53d400664b1c83e394ceb6ab815a03c31dd4aabcc828d`  
		Last Modified: Wed, 07 Dec 2016 23:37:24 GMT  
		Size: 2.3 MB (2273004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a658a0de21736d55a626c9ab4d49800143fa497d2a7a2a46c9168f5a583140`  
		Last Modified: Wed, 07 Dec 2016 23:37:46 GMT  
		Size: 66.6 MB (66554450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ef62d0719f4a7069ca0cbe60869779109c8e3eb88fda1acad95c8e173285b6`  
		Last Modified: Wed, 07 Dec 2016 23:37:22 GMT  
		Size: 1.5 KB (1461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01703e71b61ec3a9ea803c8cc5c5b1d3799bfa92e4cbeb4b7b455f5727df935`  
		Last Modified: Wed, 07 Dec 2016 23:38:39 GMT  
		Size: 21.7 MB (21710417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c49fad20167b5d71152e0c98b7481d0effc7494daa51890380843b56a74901`  
		Last Modified: Wed, 07 Dec 2016 23:38:37 GMT  
		Size: 10.4 MB (10418768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:1529fe61f46b8d17cd99c2496fd810d68fd7efe477b2497be257c5b75497b57d
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269043913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b58c3d11d9aaf541b1563c9aeb77eea37a9fb4beddd53b23da878a3b0d3e2b`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:28:07 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 07 Dec 2016 23:28:08 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 07 Dec 2016 23:28:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:30:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:30:39 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:30:40 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:30:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:30:40 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:30:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Dec 2016 23:30:42 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 07 Dec 2016 23:30:57 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:30:58 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 07 Dec 2016 23:30:59 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b9f4782bf5ead5a7c53d400664b1c83e394ceb6ab815a03c31dd4aabcc828d`  
		Last Modified: Wed, 07 Dec 2016 23:37:24 GMT  
		Size: 2.3 MB (2273004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a658a0de21736d55a626c9ab4d49800143fa497d2a7a2a46c9168f5a583140`  
		Last Modified: Wed, 07 Dec 2016 23:37:46 GMT  
		Size: 66.6 MB (66554450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ef62d0719f4a7069ca0cbe60869779109c8e3eb88fda1acad95c8e173285b6`  
		Last Modified: Wed, 07 Dec 2016 23:37:22 GMT  
		Size: 1.5 KB (1461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01703e71b61ec3a9ea803c8cc5c5b1d3799bfa92e4cbeb4b7b455f5727df935`  
		Last Modified: Wed, 07 Dec 2016 23:38:39 GMT  
		Size: 21.7 MB (21710417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c49fad20167b5d71152e0c98b7481d0effc7494daa51890380843b56a74901`  
		Last Modified: Wed, 07 Dec 2016 23:38:37 GMT  
		Size: 10.4 MB (10418768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.4`

```console
$ docker pull redmine@sha256:ffc20b1111e3776297275bb698214c170eb06819a44f6e14efa98a8347b85b86
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245770080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd54f9324b4a258716b5d85b8f6142339138c7278e3e96ae6d160560e4e2f6ee`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:31:00 GMT
ENV REDMINE_VERSION=3.2.4
# Wed, 07 Dec 2016 23:31:09 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Wed, 07 Dec 2016 23:31:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:33:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:33:37 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:33:38 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:33:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:33:39 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:33:39 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee20fa06f65ec267c4614326ee2fdb4c660d0618acdc9d72b18c9364b081ae6`  
		Last Modified: Wed, 07 Dec 2016 23:39:28 GMT  
		Size: 2.3 MB (2330256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455705b10f5382c740c6b71ef398d189eab017356ec33cd40caaae4cb3cf7e21`  
		Last Modified: Wed, 07 Dec 2016 23:39:43 GMT  
		Size: 75.4 MB (75352551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de670606499678f3e73006b0b54fc8114abdee830a8c3232564d35053b1363d`  
		Last Modified: Wed, 07 Dec 2016 23:39:28 GMT  
		Size: 1.5 KB (1460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:ffc20b1111e3776297275bb698214c170eb06819a44f6e14efa98a8347b85b86
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245770080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd54f9324b4a258716b5d85b8f6142339138c7278e3e96ae6d160560e4e2f6ee`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:31:00 GMT
ENV REDMINE_VERSION=3.2.4
# Wed, 07 Dec 2016 23:31:09 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Wed, 07 Dec 2016 23:31:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:33:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:33:37 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:33:38 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:33:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:33:39 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:33:39 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee20fa06f65ec267c4614326ee2fdb4c660d0618acdc9d72b18c9364b081ae6`  
		Last Modified: Wed, 07 Dec 2016 23:39:28 GMT  
		Size: 2.3 MB (2330256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455705b10f5382c740c6b71ef398d189eab017356ec33cd40caaae4cb3cf7e21`  
		Last Modified: Wed, 07 Dec 2016 23:39:43 GMT  
		Size: 75.4 MB (75352551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de670606499678f3e73006b0b54fc8114abdee830a8c3232564d35053b1363d`  
		Last Modified: Wed, 07 Dec 2016 23:39:28 GMT  
		Size: 1.5 KB (1460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.4-passenger`

```console
$ docker pull redmine@sha256:7ce71f31543735f95665a1476fcf74047619a6b6a251872e08d1fcadcf444abc
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.4-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277899276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc24a19d083e457e40b4275e238d57c1544b1b42c9df6fa299a309f7cae0e56`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:31:00 GMT
ENV REDMINE_VERSION=3.2.4
# Wed, 07 Dec 2016 23:31:09 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Wed, 07 Dec 2016 23:31:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:33:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:33:37 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:33:38 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:33:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:33:39 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:33:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Dec 2016 23:33:40 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 07 Dec 2016 23:33:54 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:33:56 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 07 Dec 2016 23:33:57 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee20fa06f65ec267c4614326ee2fdb4c660d0618acdc9d72b18c9364b081ae6`  
		Last Modified: Wed, 07 Dec 2016 23:39:28 GMT  
		Size: 2.3 MB (2330256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455705b10f5382c740c6b71ef398d189eab017356ec33cd40caaae4cb3cf7e21`  
		Last Modified: Wed, 07 Dec 2016 23:39:43 GMT  
		Size: 75.4 MB (75352551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de670606499678f3e73006b0b54fc8114abdee830a8c3232564d35053b1363d`  
		Last Modified: Wed, 07 Dec 2016 23:39:28 GMT  
		Size: 1.5 KB (1460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8564a837f0d3ea9e53fa9940c71f841e8ccb7f7600a7561d1065f7527e007196`  
		Last Modified: Wed, 07 Dec 2016 23:40:27 GMT  
		Size: 21.7 MB (21710439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1594d4063820d2b1f7972ad7fc7fb2694db521e245a3eada365b7be9523ad5d4`  
		Last Modified: Wed, 07 Dec 2016 23:40:27 GMT  
		Size: 10.4 MB (10418757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:7ce71f31543735f95665a1476fcf74047619a6b6a251872e08d1fcadcf444abc
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277899276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc24a19d083e457e40b4275e238d57c1544b1b42c9df6fa299a309f7cae0e56`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:31:00 GMT
ENV REDMINE_VERSION=3.2.4
# Wed, 07 Dec 2016 23:31:09 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Wed, 07 Dec 2016 23:31:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:33:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:33:37 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:33:38 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:33:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:33:39 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:33:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Dec 2016 23:33:40 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 07 Dec 2016 23:33:54 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:33:56 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 07 Dec 2016 23:33:57 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee20fa06f65ec267c4614326ee2fdb4c660d0618acdc9d72b18c9364b081ae6`  
		Last Modified: Wed, 07 Dec 2016 23:39:28 GMT  
		Size: 2.3 MB (2330256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455705b10f5382c740c6b71ef398d189eab017356ec33cd40caaae4cb3cf7e21`  
		Last Modified: Wed, 07 Dec 2016 23:39:43 GMT  
		Size: 75.4 MB (75352551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de670606499678f3e73006b0b54fc8114abdee830a8c3232564d35053b1363d`  
		Last Modified: Wed, 07 Dec 2016 23:39:28 GMT  
		Size: 1.5 KB (1460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8564a837f0d3ea9e53fa9940c71f841e8ccb7f7600a7561d1065f7527e007196`  
		Last Modified: Wed, 07 Dec 2016 23:40:27 GMT  
		Size: 21.7 MB (21710439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1594d4063820d2b1f7972ad7fc7fb2694db521e245a3eada365b7be9523ad5d4`  
		Last Modified: Wed, 07 Dec 2016 23:40:27 GMT  
		Size: 10.4 MB (10418757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.1`

```console
$ docker pull redmine@sha256:99337634dbca74affed3cb516e7241aeb83d6038b88756cbaa60d174f4fb4bc9
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245812607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17275e12d1c0ac9e62d0cbde87d2fcc54dc35eb82ceb76092bbbb042adde4be7`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 07 Dec 2016 23:34:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:36:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:36:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:36:43 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:36:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:36:43 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:36:44 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db08f538df9964ecac9e4f55bb0e4911e0bb3295d439522f0cf25b0ffeff2d5a`  
		Last Modified: Wed, 07 Dec 2016 23:41:08 GMT  
		Size: 2.4 MB (2372936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350aacc10d76f80ae3936015e48d3d559d177b56ef8a2fae5be3e1c5d8677737`  
		Last Modified: Wed, 07 Dec 2016 23:41:24 GMT  
		Size: 75.4 MB (75352398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb1636b4591a2d4392313e959414ea4a39f8badd9580eaa5212685ca54b72`  
		Last Modified: Wed, 07 Dec 2016 23:41:06 GMT  
		Size: 1.5 KB (1460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:99337634dbca74affed3cb516e7241aeb83d6038b88756cbaa60d174f4fb4bc9
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245812607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17275e12d1c0ac9e62d0cbde87d2fcc54dc35eb82ceb76092bbbb042adde4be7`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 07 Dec 2016 23:34:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:36:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:36:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:36:43 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:36:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:36:43 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:36:44 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db08f538df9964ecac9e4f55bb0e4911e0bb3295d439522f0cf25b0ffeff2d5a`  
		Last Modified: Wed, 07 Dec 2016 23:41:08 GMT  
		Size: 2.4 MB (2372936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350aacc10d76f80ae3936015e48d3d559d177b56ef8a2fae5be3e1c5d8677737`  
		Last Modified: Wed, 07 Dec 2016 23:41:24 GMT  
		Size: 75.4 MB (75352398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb1636b4591a2d4392313e959414ea4a39f8badd9580eaa5212685ca54b72`  
		Last Modified: Wed, 07 Dec 2016 23:41:06 GMT  
		Size: 1.5 KB (1460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:99337634dbca74affed3cb516e7241aeb83d6038b88756cbaa60d174f4fb4bc9
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245812607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17275e12d1c0ac9e62d0cbde87d2fcc54dc35eb82ceb76092bbbb042adde4be7`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 07 Dec 2016 23:34:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:36:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:36:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:36:43 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:36:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:36:43 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:36:44 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db08f538df9964ecac9e4f55bb0e4911e0bb3295d439522f0cf25b0ffeff2d5a`  
		Last Modified: Wed, 07 Dec 2016 23:41:08 GMT  
		Size: 2.4 MB (2372936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350aacc10d76f80ae3936015e48d3d559d177b56ef8a2fae5be3e1c5d8677737`  
		Last Modified: Wed, 07 Dec 2016 23:41:24 GMT  
		Size: 75.4 MB (75352398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb1636b4591a2d4392313e959414ea4a39f8badd9580eaa5212685ca54b72`  
		Last Modified: Wed, 07 Dec 2016 23:41:06 GMT  
		Size: 1.5 KB (1460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:99337634dbca74affed3cb516e7241aeb83d6038b88756cbaa60d174f4fb4bc9
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245812607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17275e12d1c0ac9e62d0cbde87d2fcc54dc35eb82ceb76092bbbb042adde4be7`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 07 Dec 2016 23:34:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:36:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:36:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:36:43 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:36:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:36:43 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:36:44 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db08f538df9964ecac9e4f55bb0e4911e0bb3295d439522f0cf25b0ffeff2d5a`  
		Last Modified: Wed, 07 Dec 2016 23:41:08 GMT  
		Size: 2.4 MB (2372936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350aacc10d76f80ae3936015e48d3d559d177b56ef8a2fae5be3e1c5d8677737`  
		Last Modified: Wed, 07 Dec 2016 23:41:24 GMT  
		Size: 75.4 MB (75352398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb1636b4591a2d4392313e959414ea4a39f8badd9580eaa5212685ca54b72`  
		Last Modified: Wed, 07 Dec 2016 23:41:06 GMT  
		Size: 1.5 KB (1460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.1-passenger`

```console
$ docker pull redmine@sha256:643ad91936f301ee48a79f5a85acf2b570633886707ed5325aaaa5ec33e21465
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.1-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277941789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711b9bb1598eeab88e639137691ad9a1e56d1a05b66eb9626210be3494c6390a`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 07 Dec 2016 23:34:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:36:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:36:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:36:43 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:36:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:36:43 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:36:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Dec 2016 23:36:45 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 07 Dec 2016 23:36:58 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:37:08 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 07 Dec 2016 23:37:08 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db08f538df9964ecac9e4f55bb0e4911e0bb3295d439522f0cf25b0ffeff2d5a`  
		Last Modified: Wed, 07 Dec 2016 23:41:08 GMT  
		Size: 2.4 MB (2372936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350aacc10d76f80ae3936015e48d3d559d177b56ef8a2fae5be3e1c5d8677737`  
		Last Modified: Wed, 07 Dec 2016 23:41:24 GMT  
		Size: 75.4 MB (75352398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb1636b4591a2d4392313e959414ea4a39f8badd9580eaa5212685ca54b72`  
		Last Modified: Wed, 07 Dec 2016 23:41:06 GMT  
		Size: 1.5 KB (1460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ed53e20d5a642f63e90d6f1e3acd4309bfc5a2b0294e2abf00bd697848f49`  
		Last Modified: Wed, 07 Dec 2016 23:42:58 GMT  
		Size: 21.7 MB (21710431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d390dafbed0523a80fd88452e9d6ddfa9c700b4658eb325ae3e54d074d52b7`  
		Last Modified: Wed, 07 Dec 2016 23:42:55 GMT  
		Size: 10.4 MB (10418751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:643ad91936f301ee48a79f5a85acf2b570633886707ed5325aaaa5ec33e21465
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277941789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711b9bb1598eeab88e639137691ad9a1e56d1a05b66eb9626210be3494c6390a`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 07 Dec 2016 23:34:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:36:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:36:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:36:43 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:36:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:36:43 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:36:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Dec 2016 23:36:45 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 07 Dec 2016 23:36:58 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:37:08 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 07 Dec 2016 23:37:08 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db08f538df9964ecac9e4f55bb0e4911e0bb3295d439522f0cf25b0ffeff2d5a`  
		Last Modified: Wed, 07 Dec 2016 23:41:08 GMT  
		Size: 2.4 MB (2372936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350aacc10d76f80ae3936015e48d3d559d177b56ef8a2fae5be3e1c5d8677737`  
		Last Modified: Wed, 07 Dec 2016 23:41:24 GMT  
		Size: 75.4 MB (75352398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb1636b4591a2d4392313e959414ea4a39f8badd9580eaa5212685ca54b72`  
		Last Modified: Wed, 07 Dec 2016 23:41:06 GMT  
		Size: 1.5 KB (1460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ed53e20d5a642f63e90d6f1e3acd4309bfc5a2b0294e2abf00bd697848f49`  
		Last Modified: Wed, 07 Dec 2016 23:42:58 GMT  
		Size: 21.7 MB (21710431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d390dafbed0523a80fd88452e9d6ddfa9c700b4658eb325ae3e54d074d52b7`  
		Last Modified: Wed, 07 Dec 2016 23:42:55 GMT  
		Size: 10.4 MB (10418751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:643ad91936f301ee48a79f5a85acf2b570633886707ed5325aaaa5ec33e21465
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277941789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711b9bb1598eeab88e639137691ad9a1e56d1a05b66eb9626210be3494c6390a`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 07 Dec 2016 23:34:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:36:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:36:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:36:43 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:36:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:36:43 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:36:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Dec 2016 23:36:45 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 07 Dec 2016 23:36:58 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:37:08 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 07 Dec 2016 23:37:08 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db08f538df9964ecac9e4f55bb0e4911e0bb3295d439522f0cf25b0ffeff2d5a`  
		Last Modified: Wed, 07 Dec 2016 23:41:08 GMT  
		Size: 2.4 MB (2372936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350aacc10d76f80ae3936015e48d3d559d177b56ef8a2fae5be3e1c5d8677737`  
		Last Modified: Wed, 07 Dec 2016 23:41:24 GMT  
		Size: 75.4 MB (75352398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb1636b4591a2d4392313e959414ea4a39f8badd9580eaa5212685ca54b72`  
		Last Modified: Wed, 07 Dec 2016 23:41:06 GMT  
		Size: 1.5 KB (1460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ed53e20d5a642f63e90d6f1e3acd4309bfc5a2b0294e2abf00bd697848f49`  
		Last Modified: Wed, 07 Dec 2016 23:42:58 GMT  
		Size: 21.7 MB (21710431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d390dafbed0523a80fd88452e9d6ddfa9c700b4658eb325ae3e54d074d52b7`  
		Last Modified: Wed, 07 Dec 2016 23:42:55 GMT  
		Size: 10.4 MB (10418751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:643ad91936f301ee48a79f5a85acf2b570633886707ed5325aaaa5ec33e21465
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277941789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711b9bb1598eeab88e639137691ad9a1e56d1a05b66eb9626210be3494c6390a`
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
# Tue, 06 Dec 2016 23:21:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 06 Dec 2016 23:26:11 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 06 Dec 2016 23:26:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 06 Dec 2016 23:26:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 06 Dec 2016 23:26:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Dec 2016 23:26:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 06 Dec 2016 23:26:15 GMT
CMD ["irb"]
# Wed, 07 Dec 2016 23:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Dec 2016 23:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:27:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:27:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 07 Dec 2016 23:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Dec 2016 23:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:27:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Dec 2016 23:27:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 07 Dec 2016 23:34:07 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 07 Dec 2016 23:34:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Dec 2016 23:36:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:36:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Dec 2016 23:36:43 GMT
COPY file:aff587ea4827aab52eb00cbff38d8d409b101320f09f8ac6545d538ba4ed8f4f in / 
# Wed, 07 Dec 2016 23:36:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 23:36:43 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:36:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Dec 2016 23:36:45 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 07 Dec 2016 23:36:58 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Dec 2016 23:37:08 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 07 Dec 2016 23:37:08 GMT
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
	-	`sha256:e9a232fbd01eb62e1657cdf34e1f1ca295db7c0fb9b41d1235eea5c4f520e85f`  
		Last Modified: Tue, 06 Dec 2016 23:52:15 GMT  
		Size: 33.3 MB (33255600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89c529429105d3e0646b40b938d6cfc60efc6e25f8d417d7f1d8e2a943d395`  
		Last Modified: Tue, 06 Dec 2016 23:52:04 GMT  
		Size: 612.6 KB (612590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd7f8c90d46cb7c52e790b44e24bc1c885ae5835933bb2e3c93093872697c3`  
		Last Modified: Tue, 06 Dec 2016 23:52:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414eae65bed74e8955247005fb42bb33eca38c0fd8647a66e3924cb945053046`  
		Last Modified: Wed, 07 Dec 2016 23:37:29 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a93ec9b082b32fc1f51fbb9c37d2330e8c59f440a3b1ab065f730b32200ec1a`  
		Last Modified: Wed, 07 Dec 2016 23:37:34 GMT  
		Size: 13.9 MB (13863589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75404782d6b93eda800f7d75488c3a7bf1a9a0d578d2e3b1ad21517fa43b290e`  
		Last Modified: Wed, 07 Dec 2016 23:37:28 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1cedaf4a3ddbbdb86b3ea317b2cf479642fa3a51163ce427d003f5915f1731`  
		Last Modified: Wed, 07 Dec 2016 23:37:25 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3867bf4ee9f90fb8191cf7506fe96c4e65967e6f0b3e0daedceb58ad82c1099f`  
		Last Modified: Wed, 07 Dec 2016 23:37:50 GMT  
		Size: 58.2 MB (58198777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee8fd40c771056f434fe5e76086d9d1c086f2f9a33b954f00ec77decd8ba56`  
		Last Modified: Wed, 07 Dec 2016 23:37:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db08f538df9964ecac9e4f55bb0e4911e0bb3295d439522f0cf25b0ffeff2d5a`  
		Last Modified: Wed, 07 Dec 2016 23:41:08 GMT  
		Size: 2.4 MB (2372936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350aacc10d76f80ae3936015e48d3d559d177b56ef8a2fae5be3e1c5d8677737`  
		Last Modified: Wed, 07 Dec 2016 23:41:24 GMT  
		Size: 75.4 MB (75352398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb1636b4591a2d4392313e959414ea4a39f8badd9580eaa5212685ca54b72`  
		Last Modified: Wed, 07 Dec 2016 23:41:06 GMT  
		Size: 1.5 KB (1460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ed53e20d5a642f63e90d6f1e3acd4309bfc5a2b0294e2abf00bd697848f49`  
		Last Modified: Wed, 07 Dec 2016 23:42:58 GMT  
		Size: 21.7 MB (21710431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d390dafbed0523a80fd88452e9d6ddfa9c700b4658eb325ae3e54d074d52b7`  
		Last Modified: Wed, 07 Dec 2016 23:42:55 GMT  
		Size: 10.4 MB (10418751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
