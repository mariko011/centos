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
