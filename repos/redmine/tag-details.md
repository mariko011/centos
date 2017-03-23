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
$ docker pull redmine@sha256:decc67e1ab19c6ab71e3e9f53a63028c702580546c8e17170cac58862316cb3b
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238448107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8980bf4e65cdc59db2f49ef4a1c352601015b8693d29389abe22e2f817870877`
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
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Wed, 22 Mar 2017 23:02:43 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 22 Mar 2017 23:02:43 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 22 Mar 2017 23:02:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 23 Mar 2017 02:16:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Mar 2017 02:17:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 23 Mar 2017 02:17:57 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 23 Mar 2017 02:17:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Mar 2017 02:17:58 GMT
EXPOSE 3000/tcp
# Thu, 23 Mar 2017 02:18:17 GMT
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
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533a48da82e534e7b9eeb2f6c362c61c6b45574f5180b1a9894ed3dccab6f730`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 2.3 MB (2273012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9347f74b979bd1fa2e46445d338e82b545fd3bfcf28ee340924210a73ab619d`  
		Last Modified: Thu, 23 Mar 2017 02:32:52 GMT  
		Size: 67.7 MB (67659467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b938a62a13eaee7adfaa76cd004e2d6a3fecee1e7d2aed2812a874fe5524039b`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:decc67e1ab19c6ab71e3e9f53a63028c702580546c8e17170cac58862316cb3b
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238448107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8980bf4e65cdc59db2f49ef4a1c352601015b8693d29389abe22e2f817870877`
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
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Wed, 22 Mar 2017 23:02:43 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 22 Mar 2017 23:02:43 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 22 Mar 2017 23:02:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 23 Mar 2017 02:16:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Mar 2017 02:17:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 23 Mar 2017 02:17:57 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 23 Mar 2017 02:17:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Mar 2017 02:17:58 GMT
EXPOSE 3000/tcp
# Thu, 23 Mar 2017 02:18:17 GMT
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
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533a48da82e534e7b9eeb2f6c362c61c6b45574f5180b1a9894ed3dccab6f730`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 2.3 MB (2273012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9347f74b979bd1fa2e46445d338e82b545fd3bfcf28ee340924210a73ab619d`  
		Last Modified: Thu, 23 Mar 2017 02:32:52 GMT  
		Size: 67.7 MB (67659467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b938a62a13eaee7adfaa76cd004e2d6a3fecee1e7d2aed2812a874fe5524039b`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:1d107580077873451bff1aece13232bdd6aaa88df1a0a0bf473b953c7c8b8df8
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (258019796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7628bdca749427eeace012cd8358e80c725128e4e7f49f38230ed7a144d8b123`
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
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Wed, 22 Mar 2017 23:02:43 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 22 Mar 2017 23:02:43 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 22 Mar 2017 23:02:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 23 Mar 2017 02:16:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Mar 2017 02:17:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 23 Mar 2017 02:17:57 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 23 Mar 2017 02:17:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Mar 2017 02:17:58 GMT
EXPOSE 3000/tcp
# Thu, 23 Mar 2017 02:18:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 23 Mar 2017 02:18:18 GMT
ENV PASSENGER_VERSION=5.1.2
# Thu, 23 Mar 2017 02:18:32 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Mar 2017 02:18:40 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 23 Mar 2017 02:18:41 GMT
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
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533a48da82e534e7b9eeb2f6c362c61c6b45574f5180b1a9894ed3dccab6f730`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 2.3 MB (2273012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9347f74b979bd1fa2e46445d338e82b545fd3bfcf28ee340924210a73ab619d`  
		Last Modified: Thu, 23 Mar 2017 02:32:52 GMT  
		Size: 67.7 MB (67659467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b938a62a13eaee7adfaa76cd004e2d6a3fecee1e7d2aed2812a874fe5524039b`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7033221a85c17ffe65163993372ad16ffc06043cd5178890fb022aab13756e25`  
		Last Modified: Thu, 23 Mar 2017 02:33:59 GMT  
		Size: 15.5 MB (15505481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cf08a193fd99a68dbc50af39de320eb4d2b69cab7574625f8afce059da33cb`  
		Last Modified: Thu, 23 Mar 2017 02:33:53 GMT  
		Size: 4.1 MB (4066208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:1d107580077873451bff1aece13232bdd6aaa88df1a0a0bf473b953c7c8b8df8
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (258019796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7628bdca749427eeace012cd8358e80c725128e4e7f49f38230ed7a144d8b123`
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
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Wed, 22 Mar 2017 23:02:43 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 22 Mar 2017 23:02:43 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 22 Mar 2017 23:02:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 23 Mar 2017 02:16:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Mar 2017 02:17:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 23 Mar 2017 02:17:57 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 23 Mar 2017 02:17:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Mar 2017 02:17:58 GMT
EXPOSE 3000/tcp
# Thu, 23 Mar 2017 02:18:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 23 Mar 2017 02:18:18 GMT
ENV PASSENGER_VERSION=5.1.2
# Thu, 23 Mar 2017 02:18:32 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Mar 2017 02:18:40 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 23 Mar 2017 02:18:41 GMT
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
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533a48da82e534e7b9eeb2f6c362c61c6b45574f5180b1a9894ed3dccab6f730`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 2.3 MB (2273012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9347f74b979bd1fa2e46445d338e82b545fd3bfcf28ee340924210a73ab619d`  
		Last Modified: Thu, 23 Mar 2017 02:32:52 GMT  
		Size: 67.7 MB (67659467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b938a62a13eaee7adfaa76cd004e2d6a3fecee1e7d2aed2812a874fe5524039b`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7033221a85c17ffe65163993372ad16ffc06043cd5178890fb022aab13756e25`  
		Last Modified: Thu, 23 Mar 2017 02:33:59 GMT  
		Size: 15.5 MB (15505481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cf08a193fd99a68dbc50af39de320eb4d2b69cab7574625f8afce059da33cb`  
		Last Modified: Thu, 23 Mar 2017 02:33:53 GMT  
		Size: 4.1 MB (4066208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.5`

```console
$ docker pull redmine@sha256:5d406d9ecc14001d107b32e6d86505b26204ae76bb105adabf75d16f5e83faa3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247300606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c877ddfb0c90c69b3f9dcbb24dc8be13f56e36ae87f646c36a844ba53e4d0d3`
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
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Thu, 23 Mar 2017 02:18:42 GMT
ENV REDMINE_VERSION=3.2.5
# Thu, 23 Mar 2017 02:18:43 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Thu, 23 Mar 2017 02:18:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 23 Mar 2017 02:22:03 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Mar 2017 02:31:28 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 23 Mar 2017 02:31:29 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 23 Mar 2017 02:31:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Mar 2017 02:31:30 GMT
EXPOSE 3000/tcp
# Thu, 23 Mar 2017 02:31:31 GMT
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
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99393497fa23c48b4b2b0d6649839a323fdcc4c5f92f5e30503b2f1f8ab30004`  
		Last Modified: Thu, 23 Mar 2017 02:35:23 GMT  
		Size: 2.3 MB (2334508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff2802795a920475f5305a51310b194bcc907f534b2992f0194a2276bc2fe5`  
		Last Modified: Thu, 23 Mar 2017 02:35:41 GMT  
		Size: 76.5 MB (76450468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7a368c2be7d0e37c4c4ba0fd3d15daa9e59519d47786806ac3c1e3a17879e0`  
		Last Modified: Thu, 23 Mar 2017 02:35:19 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:5d406d9ecc14001d107b32e6d86505b26204ae76bb105adabf75d16f5e83faa3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247300606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c877ddfb0c90c69b3f9dcbb24dc8be13f56e36ae87f646c36a844ba53e4d0d3`
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
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Thu, 23 Mar 2017 02:18:42 GMT
ENV REDMINE_VERSION=3.2.5
# Thu, 23 Mar 2017 02:18:43 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Thu, 23 Mar 2017 02:18:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 23 Mar 2017 02:22:03 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Mar 2017 02:31:28 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 23 Mar 2017 02:31:29 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 23 Mar 2017 02:31:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Mar 2017 02:31:30 GMT
EXPOSE 3000/tcp
# Thu, 23 Mar 2017 02:31:31 GMT
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
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99393497fa23c48b4b2b0d6649839a323fdcc4c5f92f5e30503b2f1f8ab30004`  
		Last Modified: Thu, 23 Mar 2017 02:35:23 GMT  
		Size: 2.3 MB (2334508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff2802795a920475f5305a51310b194bcc907f534b2992f0194a2276bc2fe5`  
		Last Modified: Thu, 23 Mar 2017 02:35:41 GMT  
		Size: 76.5 MB (76450468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7a368c2be7d0e37c4c4ba0fd3d15daa9e59519d47786806ac3c1e3a17879e0`  
		Last Modified: Thu, 23 Mar 2017 02:35:19 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.5-passenger`

```console
$ docker pull redmine@sha256:68858e692354b9fbdac55f87c4c1332ccc16a058fed0593e8f005f0a3e0843f8
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.5-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266872494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66c6aeb9681d9185ee1e4047c5c49db8b7e864c09cf590333419c4813626ffe0`
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
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Thu, 23 Mar 2017 02:18:42 GMT
ENV REDMINE_VERSION=3.2.5
# Thu, 23 Mar 2017 02:18:43 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Thu, 23 Mar 2017 02:18:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 23 Mar 2017 02:22:03 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Mar 2017 02:31:28 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 23 Mar 2017 02:31:29 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 23 Mar 2017 02:31:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Mar 2017 02:31:30 GMT
EXPOSE 3000/tcp
# Thu, 23 Mar 2017 02:31:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 23 Mar 2017 02:31:32 GMT
ENV PASSENGER_VERSION=5.1.2
# Thu, 23 Mar 2017 02:31:51 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Mar 2017 02:31:53 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 23 Mar 2017 02:31:54 GMT
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
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99393497fa23c48b4b2b0d6649839a323fdcc4c5f92f5e30503b2f1f8ab30004`  
		Last Modified: Thu, 23 Mar 2017 02:35:23 GMT  
		Size: 2.3 MB (2334508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff2802795a920475f5305a51310b194bcc907f534b2992f0194a2276bc2fe5`  
		Last Modified: Thu, 23 Mar 2017 02:35:41 GMT  
		Size: 76.5 MB (76450468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7a368c2be7d0e37c4c4ba0fd3d15daa9e59519d47786806ac3c1e3a17879e0`  
		Last Modified: Thu, 23 Mar 2017 02:35:19 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:964f39fc03183f34c1211d84e080db094f9e0f5481663e5e1e322bf0dc560ca5`  
		Last Modified: Thu, 23 Mar 2017 02:36:33 GMT  
		Size: 15.5 MB (15505678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc42607aa25b0f69ddada14c78a1060df23fb9ba50133abc34f7dc5d8110e723`  
		Last Modified: Thu, 23 Mar 2017 02:36:28 GMT  
		Size: 4.1 MB (4066210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:68858e692354b9fbdac55f87c4c1332ccc16a058fed0593e8f005f0a3e0843f8
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266872494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66c6aeb9681d9185ee1e4047c5c49db8b7e864c09cf590333419c4813626ffe0`
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
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Thu, 23 Mar 2017 02:18:42 GMT
ENV REDMINE_VERSION=3.2.5
# Thu, 23 Mar 2017 02:18:43 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Thu, 23 Mar 2017 02:18:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 23 Mar 2017 02:22:03 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Mar 2017 02:31:28 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 23 Mar 2017 02:31:29 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 23 Mar 2017 02:31:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Mar 2017 02:31:30 GMT
EXPOSE 3000/tcp
# Thu, 23 Mar 2017 02:31:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 23 Mar 2017 02:31:32 GMT
ENV PASSENGER_VERSION=5.1.2
# Thu, 23 Mar 2017 02:31:51 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Mar 2017 02:31:53 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 23 Mar 2017 02:31:54 GMT
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
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99393497fa23c48b4b2b0d6649839a323fdcc4c5f92f5e30503b2f1f8ab30004`  
		Last Modified: Thu, 23 Mar 2017 02:35:23 GMT  
		Size: 2.3 MB (2334508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ff2802795a920475f5305a51310b194bcc907f534b2992f0194a2276bc2fe5`  
		Last Modified: Thu, 23 Mar 2017 02:35:41 GMT  
		Size: 76.5 MB (76450468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7a368c2be7d0e37c4c4ba0fd3d15daa9e59519d47786806ac3c1e3a17879e0`  
		Last Modified: Thu, 23 Mar 2017 02:35:19 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:964f39fc03183f34c1211d84e080db094f9e0f5481663e5e1e322bf0dc560ca5`  
		Last Modified: Thu, 23 Mar 2017 02:36:33 GMT  
		Size: 15.5 MB (15505678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc42607aa25b0f69ddada14c78a1060df23fb9ba50133abc34f7dc5d8110e723`  
		Last Modified: Thu, 23 Mar 2017 02:36:28 GMT  
		Size: 4.1 MB (4066210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.2`

```console
$ docker pull redmine@sha256:d47607e018d899d61b20365dc3403d7fa64b1bbf8fb30adabd02aed11cb63a1e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247343462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5bfeef7b6e59a2360ddbe3d6ac9363fb863430dc8c7692bfff5505193ec4fd1`
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
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Wed, 22 Mar 2017 23:00:16 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 22 Mar 2017 23:00:16 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 22 Mar 2017 23:00:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 22 Mar 2017 23:02:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 23:02:25 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 22 Mar 2017 23:02:26 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 22 Mar 2017 23:02:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 23:02:27 GMT
EXPOSE 3000/tcp
# Wed, 22 Mar 2017 23:02:27 GMT
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
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ac73585bfe6f0410fd5fc0b98fa576488246c3ec9db9c07cc0d885e03dfbf6`  
		Last Modified: Thu, 23 Mar 2017 02:37:21 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755284c99ac0cab8410c10b5efefd4cae0764c3572610df2b42a1d1f98bbf5aa`  
		Last Modified: Thu, 23 Mar 2017 02:37:38 GMT  
		Size: 76.5 MB (76450838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf78d038761f7b6f1c7c213ee406b1a45a5034ef2a372b663a5374c642022e7`  
		Last Modified: Thu, 23 Mar 2017 02:37:18 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:d47607e018d899d61b20365dc3403d7fa64b1bbf8fb30adabd02aed11cb63a1e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247343462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5bfeef7b6e59a2360ddbe3d6ac9363fb863430dc8c7692bfff5505193ec4fd1`
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
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Wed, 22 Mar 2017 23:00:16 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 22 Mar 2017 23:00:16 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 22 Mar 2017 23:00:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 22 Mar 2017 23:02:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 23:02:25 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 22 Mar 2017 23:02:26 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 22 Mar 2017 23:02:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 23:02:27 GMT
EXPOSE 3000/tcp
# Wed, 22 Mar 2017 23:02:27 GMT
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
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ac73585bfe6f0410fd5fc0b98fa576488246c3ec9db9c07cc0d885e03dfbf6`  
		Last Modified: Thu, 23 Mar 2017 02:37:21 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755284c99ac0cab8410c10b5efefd4cae0764c3572610df2b42a1d1f98bbf5aa`  
		Last Modified: Thu, 23 Mar 2017 02:37:38 GMT  
		Size: 76.5 MB (76450838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf78d038761f7b6f1c7c213ee406b1a45a5034ef2a372b663a5374c642022e7`  
		Last Modified: Thu, 23 Mar 2017 02:37:18 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:d47607e018d899d61b20365dc3403d7fa64b1bbf8fb30adabd02aed11cb63a1e
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247343462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5bfeef7b6e59a2360ddbe3d6ac9363fb863430dc8c7692bfff5505193ec4fd1`
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
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Wed, 22 Mar 2017 23:00:16 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 22 Mar 2017 23:00:16 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 22 Mar 2017 23:00:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 22 Mar 2017 23:02:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 23:02:25 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 22 Mar 2017 23:02:26 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 22 Mar 2017 23:02:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 23:02:27 GMT
EXPOSE 3000/tcp
# Wed, 22 Mar 2017 23:02:27 GMT
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
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ac73585bfe6f0410fd5fc0b98fa576488246c3ec9db9c07cc0d885e03dfbf6`  
		Last Modified: Thu, 23 Mar 2017 02:37:21 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755284c99ac0cab8410c10b5efefd4cae0764c3572610df2b42a1d1f98bbf5aa`  
		Last Modified: Thu, 23 Mar 2017 02:37:38 GMT  
		Size: 76.5 MB (76450838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf78d038761f7b6f1c7c213ee406b1a45a5034ef2a372b663a5374c642022e7`  
		Last Modified: Thu, 23 Mar 2017 02:37:18 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:90514b0b952f45a12a27a3a513f4d81e3756e1cc9054195e4f108079de8dc421
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (247024496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42818db7b7575fe5de655625b97c9196fe5d2107f97d1196732051927e8dff34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:19:49 GMT
ENV RUBY_MAJOR=2.2
# Tue, 28 Feb 2017 23:19:50 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 28 Feb 2017 23:19:50 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Fri, 17 Mar 2017 23:45:28 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Fri, 17 Mar 2017 23:47:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 17 Mar 2017 23:47:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Fri, 17 Mar 2017 23:47:57 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 17 Mar 2017 23:47:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 17 Mar 2017 23:47:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 17 Mar 2017 23:47:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Mar 2017 23:47:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 17 Mar 2017 23:48:00 GMT
CMD ["irb"]
# Mon, 20 Mar 2017 20:35:39 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 20 Mar 2017 20:35:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Mar 2017 20:35:49 GMT
ENV GOSU_VERSION=1.7
# Mon, 20 Mar 2017 20:35:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 20 Mar 2017 20:35:55 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 20 Mar 2017 20:35:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 20 Mar 2017 20:36:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Mar 2017 20:36:29 GMT
ENV RAILS_ENV=production
# Mon, 20 Mar 2017 20:36:30 GMT
WORKDIR /usr/src/redmine
# Mon, 20 Mar 2017 20:41:32 GMT
ENV REDMINE_VERSION=3.3.2
# Mon, 20 Mar 2017 20:41:33 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Mon, 20 Mar 2017 20:41:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 20 Mar 2017 20:43:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 20 Mar 2017 20:43:51 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 20 Mar 2017 20:43:52 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Mon, 20 Mar 2017 20:43:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Mar 2017 20:43:53 GMT
EXPOSE 3000/tcp
# Mon, 20 Mar 2017 20:43:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0957e0cc9e362ac5f4cf3a9d787bfac744ffc8ed5c1916495d8e32f1f5459139`  
		Last Modified: Sat, 18 Mar 2017 00:11:18 GMT  
		Size: 33.4 MB (33397490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81349c0dae60a05bc423f6ce0c096a36ebfac25ca16afa35da3de02d281df8cc`  
		Last Modified: Sat, 18 Mar 2017 00:11:05 GMT  
		Size: 638.1 KB (638109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f6747e13a9b9994d3dd2afa09019f93de90c01035695f98afb79422a14d612`  
		Last Modified: Sat, 18 Mar 2017 00:11:05 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16dd368878f9743f37956fc5b4731141e352fdc21fb9e6b0015d95832aba8e62`  
		Last Modified: Mon, 20 Mar 2017 20:45:40 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0befe22e7bd836d9c5c6c55c663236a951ec882d9703b90da1b0792f229f1ae2`  
		Last Modified: Mon, 20 Mar 2017 20:45:44 GMT  
		Size: 13.9 MB (13863888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4345476d50470dda942b4c98d3fe191cba54c126dc4ef7b30bd7289d30905b14`  
		Last Modified: Mon, 20 Mar 2017 20:45:37 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9312a011c11ea7f030eab1157c8d407ccb494916512a02dd8a734be952012c1`  
		Last Modified: Mon, 20 Mar 2017 20:45:37 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efc3afe5e2bb4c4351bd71108b551fcb4e52d20484c8471d642c494052e2555`  
		Last Modified: Mon, 20 Mar 2017 20:45:56 GMT  
		Size: 58.2 MB (58214187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79c8deef31679ec406122133ffeddf92aacc92df8c327c2f698cbaa2feefc49`  
		Last Modified: Mon, 20 Mar 2017 20:45:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7bd34a3d26187dbfd72a5930d6e50e26e4f8ada90ce0b159b6541bc54024df3`  
		Last Modified: Mon, 20 Mar 2017 20:49:12 GMT  
		Size: 2.4 MB (2376993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ffe83c94565e234509320a2414052d69d538b8962d555a9a9bcd476b5a54ee`  
		Last Modified: Mon, 20 Mar 2017 20:49:25 GMT  
		Size: 76.4 MB (76356150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896a4aeb8a5532d7de7f6ae6f539cb100daa2e65b02f1fcd7c5e5d1a579eef20`  
		Last Modified: Mon, 20 Mar 2017 20:49:11 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.2-passenger`

```console
$ docker pull redmine@sha256:4ecc9c083cbc99ec2304efb1a21b2c25ae7b61bdd0caca8ca9e313dfd5155803
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.2-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266914940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a5407924b3b2720336105e261d36830b41a669d064b19371395134011ecdf1`
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
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Wed, 22 Mar 2017 23:00:16 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 22 Mar 2017 23:00:16 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 22 Mar 2017 23:00:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 22 Mar 2017 23:02:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 23:02:25 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 22 Mar 2017 23:02:26 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 22 Mar 2017 23:02:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 23:02:27 GMT
EXPOSE 3000/tcp
# Wed, 22 Mar 2017 23:02:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 22 Mar 2017 23:02:28 GMT
ENV PASSENGER_VERSION=5.1.2
# Wed, 22 Mar 2017 23:02:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 23:02:42 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 22 Mar 2017 23:02:42 GMT
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
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ac73585bfe6f0410fd5fc0b98fa576488246c3ec9db9c07cc0d885e03dfbf6`  
		Last Modified: Thu, 23 Mar 2017 02:37:21 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755284c99ac0cab8410c10b5efefd4cae0764c3572610df2b42a1d1f98bbf5aa`  
		Last Modified: Thu, 23 Mar 2017 02:37:38 GMT  
		Size: 76.5 MB (76450838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf78d038761f7b6f1c7c213ee406b1a45a5034ef2a372b663a5374c642022e7`  
		Last Modified: Thu, 23 Mar 2017 02:37:18 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed909726c7f501b487a4dbaa09070de268cddfd33a13a83842c5a925acc5c2ab`  
		Last Modified: Thu, 23 Mar 2017 02:39:11 GMT  
		Size: 15.5 MB (15505270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ac88d031336b9f2b8d58d0c9246eacd3c7777e5937e9eeae03f29d1f4408ff`  
		Last Modified: Thu, 23 Mar 2017 02:39:06 GMT  
		Size: 4.1 MB (4066208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:4ecc9c083cbc99ec2304efb1a21b2c25ae7b61bdd0caca8ca9e313dfd5155803
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266914940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a5407924b3b2720336105e261d36830b41a669d064b19371395134011ecdf1`
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
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Wed, 22 Mar 2017 23:00:16 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 22 Mar 2017 23:00:16 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 22 Mar 2017 23:00:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 22 Mar 2017 23:02:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 23:02:25 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 22 Mar 2017 23:02:26 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 22 Mar 2017 23:02:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 23:02:27 GMT
EXPOSE 3000/tcp
# Wed, 22 Mar 2017 23:02:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 22 Mar 2017 23:02:28 GMT
ENV PASSENGER_VERSION=5.1.2
# Wed, 22 Mar 2017 23:02:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 23:02:42 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 22 Mar 2017 23:02:42 GMT
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
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ac73585bfe6f0410fd5fc0b98fa576488246c3ec9db9c07cc0d885e03dfbf6`  
		Last Modified: Thu, 23 Mar 2017 02:37:21 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755284c99ac0cab8410c10b5efefd4cae0764c3572610df2b42a1d1f98bbf5aa`  
		Last Modified: Thu, 23 Mar 2017 02:37:38 GMT  
		Size: 76.5 MB (76450838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf78d038761f7b6f1c7c213ee406b1a45a5034ef2a372b663a5374c642022e7`  
		Last Modified: Thu, 23 Mar 2017 02:37:18 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed909726c7f501b487a4dbaa09070de268cddfd33a13a83842c5a925acc5c2ab`  
		Last Modified: Thu, 23 Mar 2017 02:39:11 GMT  
		Size: 15.5 MB (15505270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ac88d031336b9f2b8d58d0c9246eacd3c7777e5937e9eeae03f29d1f4408ff`  
		Last Modified: Thu, 23 Mar 2017 02:39:06 GMT  
		Size: 4.1 MB (4066208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:b1f871a8c3a05d6d6bfcdd958b9ea235d001269d1df30a62affdab1374315d6d
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266595940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65898fbdbbcd8a92d3505312cd26b2a5d37691b794ae264ad4c9a1cd02ac6cdd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:19:49 GMT
ENV RUBY_MAJOR=2.2
# Tue, 28 Feb 2017 23:19:50 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 28 Feb 2017 23:19:50 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Fri, 17 Mar 2017 23:45:28 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Fri, 17 Mar 2017 23:47:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 17 Mar 2017 23:47:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Fri, 17 Mar 2017 23:47:57 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 17 Mar 2017 23:47:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 17 Mar 2017 23:47:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 17 Mar 2017 23:47:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Mar 2017 23:47:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 17 Mar 2017 23:48:00 GMT
CMD ["irb"]
# Mon, 20 Mar 2017 20:35:39 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 20 Mar 2017 20:35:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Mar 2017 20:35:49 GMT
ENV GOSU_VERSION=1.7
# Mon, 20 Mar 2017 20:35:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 20 Mar 2017 20:35:55 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 20 Mar 2017 20:35:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 20 Mar 2017 20:36:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Mar 2017 20:36:29 GMT
ENV RAILS_ENV=production
# Mon, 20 Mar 2017 20:36:30 GMT
WORKDIR /usr/src/redmine
# Mon, 20 Mar 2017 20:41:32 GMT
ENV REDMINE_VERSION=3.3.2
# Mon, 20 Mar 2017 20:41:33 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Mon, 20 Mar 2017 20:41:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 20 Mar 2017 20:43:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 20 Mar 2017 20:43:51 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 20 Mar 2017 20:43:52 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Mon, 20 Mar 2017 20:43:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Mar 2017 20:43:53 GMT
EXPOSE 3000/tcp
# Mon, 20 Mar 2017 20:43:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 20 Mar 2017 20:43:54 GMT
ENV PASSENGER_VERSION=5.1.2
# Mon, 20 Mar 2017 20:44:07 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 20 Mar 2017 20:44:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 20 Mar 2017 20:44:09 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0957e0cc9e362ac5f4cf3a9d787bfac744ffc8ed5c1916495d8e32f1f5459139`  
		Last Modified: Sat, 18 Mar 2017 00:11:18 GMT  
		Size: 33.4 MB (33397490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81349c0dae60a05bc423f6ce0c096a36ebfac25ca16afa35da3de02d281df8cc`  
		Last Modified: Sat, 18 Mar 2017 00:11:05 GMT  
		Size: 638.1 KB (638109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f6747e13a9b9994d3dd2afa09019f93de90c01035695f98afb79422a14d612`  
		Last Modified: Sat, 18 Mar 2017 00:11:05 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16dd368878f9743f37956fc5b4731141e352fdc21fb9e6b0015d95832aba8e62`  
		Last Modified: Mon, 20 Mar 2017 20:45:40 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0befe22e7bd836d9c5c6c55c663236a951ec882d9703b90da1b0792f229f1ae2`  
		Last Modified: Mon, 20 Mar 2017 20:45:44 GMT  
		Size: 13.9 MB (13863888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4345476d50470dda942b4c98d3fe191cba54c126dc4ef7b30bd7289d30905b14`  
		Last Modified: Mon, 20 Mar 2017 20:45:37 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9312a011c11ea7f030eab1157c8d407ccb494916512a02dd8a734be952012c1`  
		Last Modified: Mon, 20 Mar 2017 20:45:37 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efc3afe5e2bb4c4351bd71108b551fcb4e52d20484c8471d642c494052e2555`  
		Last Modified: Mon, 20 Mar 2017 20:45:56 GMT  
		Size: 58.2 MB (58214187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79c8deef31679ec406122133ffeddf92aacc92df8c327c2f698cbaa2feefc49`  
		Last Modified: Mon, 20 Mar 2017 20:45:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7bd34a3d26187dbfd72a5930d6e50e26e4f8ada90ce0b159b6541bc54024df3`  
		Last Modified: Mon, 20 Mar 2017 20:49:12 GMT  
		Size: 2.4 MB (2376993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ffe83c94565e234509320a2414052d69d538b8962d555a9a9bcd476b5a54ee`  
		Last Modified: Mon, 20 Mar 2017 20:49:25 GMT  
		Size: 76.4 MB (76356150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896a4aeb8a5532d7de7f6ae6f539cb100daa2e65b02f1fcd7c5e5d1a579eef20`  
		Last Modified: Mon, 20 Mar 2017 20:49:11 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576c6e8e3cccbecdf76b9f293ad25eb6ef95fa62548371c7211c6ba6a77742db`  
		Last Modified: Mon, 20 Mar 2017 20:50:50 GMT  
		Size: 15.5 MB (15505225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85203873b8df9949bb300c8550e5c9f6e8ddcc4418504bc1fbd73b61865db928`  
		Last Modified: Mon, 20 Mar 2017 20:50:48 GMT  
		Size: 4.1 MB (4066219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:b1f871a8c3a05d6d6bfcdd958b9ea235d001269d1df30a62affdab1374315d6d
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266595940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65898fbdbbcd8a92d3505312cd26b2a5d37691b794ae264ad4c9a1cd02ac6cdd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:19:49 GMT
ENV RUBY_MAJOR=2.2
# Tue, 28 Feb 2017 23:19:50 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 28 Feb 2017 23:19:50 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Fri, 17 Mar 2017 23:45:28 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Fri, 17 Mar 2017 23:47:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 17 Mar 2017 23:47:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Fri, 17 Mar 2017 23:47:57 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 17 Mar 2017 23:47:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 17 Mar 2017 23:47:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 17 Mar 2017 23:47:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Mar 2017 23:47:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 17 Mar 2017 23:48:00 GMT
CMD ["irb"]
# Mon, 20 Mar 2017 20:35:39 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 20 Mar 2017 20:35:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Mar 2017 20:35:49 GMT
ENV GOSU_VERSION=1.7
# Mon, 20 Mar 2017 20:35:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 20 Mar 2017 20:35:55 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 20 Mar 2017 20:35:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 20 Mar 2017 20:36:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Mar 2017 20:36:29 GMT
ENV RAILS_ENV=production
# Mon, 20 Mar 2017 20:36:30 GMT
WORKDIR /usr/src/redmine
# Mon, 20 Mar 2017 20:41:32 GMT
ENV REDMINE_VERSION=3.3.2
# Mon, 20 Mar 2017 20:41:33 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Mon, 20 Mar 2017 20:41:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 20 Mar 2017 20:43:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 20 Mar 2017 20:43:51 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 20 Mar 2017 20:43:52 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Mon, 20 Mar 2017 20:43:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Mar 2017 20:43:53 GMT
EXPOSE 3000/tcp
# Mon, 20 Mar 2017 20:43:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 20 Mar 2017 20:43:54 GMT
ENV PASSENGER_VERSION=5.1.2
# Mon, 20 Mar 2017 20:44:07 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 20 Mar 2017 20:44:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 20 Mar 2017 20:44:09 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0957e0cc9e362ac5f4cf3a9d787bfac744ffc8ed5c1916495d8e32f1f5459139`  
		Last Modified: Sat, 18 Mar 2017 00:11:18 GMT  
		Size: 33.4 MB (33397490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81349c0dae60a05bc423f6ce0c096a36ebfac25ca16afa35da3de02d281df8cc`  
		Last Modified: Sat, 18 Mar 2017 00:11:05 GMT  
		Size: 638.1 KB (638109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f6747e13a9b9994d3dd2afa09019f93de90c01035695f98afb79422a14d612`  
		Last Modified: Sat, 18 Mar 2017 00:11:05 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16dd368878f9743f37956fc5b4731141e352fdc21fb9e6b0015d95832aba8e62`  
		Last Modified: Mon, 20 Mar 2017 20:45:40 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0befe22e7bd836d9c5c6c55c663236a951ec882d9703b90da1b0792f229f1ae2`  
		Last Modified: Mon, 20 Mar 2017 20:45:44 GMT  
		Size: 13.9 MB (13863888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4345476d50470dda942b4c98d3fe191cba54c126dc4ef7b30bd7289d30905b14`  
		Last Modified: Mon, 20 Mar 2017 20:45:37 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9312a011c11ea7f030eab1157c8d407ccb494916512a02dd8a734be952012c1`  
		Last Modified: Mon, 20 Mar 2017 20:45:37 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efc3afe5e2bb4c4351bd71108b551fcb4e52d20484c8471d642c494052e2555`  
		Last Modified: Mon, 20 Mar 2017 20:45:56 GMT  
		Size: 58.2 MB (58214187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79c8deef31679ec406122133ffeddf92aacc92df8c327c2f698cbaa2feefc49`  
		Last Modified: Mon, 20 Mar 2017 20:45:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7bd34a3d26187dbfd72a5930d6e50e26e4f8ada90ce0b159b6541bc54024df3`  
		Last Modified: Mon, 20 Mar 2017 20:49:12 GMT  
		Size: 2.4 MB (2376993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ffe83c94565e234509320a2414052d69d538b8962d555a9a9bcd476b5a54ee`  
		Last Modified: Mon, 20 Mar 2017 20:49:25 GMT  
		Size: 76.4 MB (76356150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896a4aeb8a5532d7de7f6ae6f539cb100daa2e65b02f1fcd7c5e5d1a579eef20`  
		Last Modified: Mon, 20 Mar 2017 20:49:11 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576c6e8e3cccbecdf76b9f293ad25eb6ef95fa62548371c7211c6ba6a77742db`  
		Last Modified: Mon, 20 Mar 2017 20:50:50 GMT  
		Size: 15.5 MB (15505225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85203873b8df9949bb300c8550e5c9f6e8ddcc4418504bc1fbd73b61865db928`  
		Last Modified: Mon, 20 Mar 2017 20:50:48 GMT  
		Size: 4.1 MB (4066219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
