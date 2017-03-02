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
$ docker pull redmine@sha256:b5a237432206fcd22f062c418339fefe948e1a404f9cca14df0c08fcd38d8f1b
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237905255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdab3ea4c6376f3522515c38617e6636bcac05e6e720a4890f6555dd7ed678a9`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 17:57:34 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 01 Mar 2017 17:57:35 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 01 Mar 2017 17:57:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 18:00:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 18:00:29 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 18:00:30 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 18:00:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 18:00:31 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 18:00:31 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed439a7b23bbb5f2fa206796d9485bda8fe9ad63d16b81f2ee2685ca9178d8`  
		Last Modified: Thu, 02 Mar 2017 06:42:52 GMT  
		Size: 2.3 MB (2273013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8917f2ae4c3dc33d1ecdaf34cdb9faa2ebe964496cf3471c0a23cc78182cd01d`  
		Last Modified: Thu, 02 Mar 2017 06:43:15 GMT  
		Size: 67.4 MB (67368278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c20328e83f7cc5a5aea44dd152afe5378b4e024928f15259f2c88c5d079df4d`  
		Last Modified: Thu, 02 Mar 2017 06:42:48 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:b5a237432206fcd22f062c418339fefe948e1a404f9cca14df0c08fcd38d8f1b
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237905255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdab3ea4c6376f3522515c38617e6636bcac05e6e720a4890f6555dd7ed678a9`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 17:57:34 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 01 Mar 2017 17:57:35 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 01 Mar 2017 17:57:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 18:00:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 18:00:29 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 18:00:30 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 18:00:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 18:00:31 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 18:00:31 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed439a7b23bbb5f2fa206796d9485bda8fe9ad63d16b81f2ee2685ca9178d8`  
		Last Modified: Thu, 02 Mar 2017 06:42:52 GMT  
		Size: 2.3 MB (2273013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8917f2ae4c3dc33d1ecdaf34cdb9faa2ebe964496cf3471c0a23cc78182cd01d`  
		Last Modified: Thu, 02 Mar 2017 06:43:15 GMT  
		Size: 67.4 MB (67368278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c20328e83f7cc5a5aea44dd152afe5378b4e024928f15259f2c88c5d079df4d`  
		Last Modified: Thu, 02 Mar 2017 06:42:48 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:fb1aa3f535002ff2edf989e23770c64887ad37210236975bfdf5b15b99000750
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257477017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d773d390521e316e66f229ef845471e13aa763233a684d7ef5cd88e87816351`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 17:57:34 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 01 Mar 2017 17:57:35 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 01 Mar 2017 17:57:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 18:00:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 18:00:29 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 18:00:30 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 18:00:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 18:00:31 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 18:00:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 01 Mar 2017 18:00:32 GMT
ENV PASSENGER_VERSION=5.1.2
# Wed, 01 Mar 2017 18:00:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 18:01:03 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 01 Mar 2017 18:01:03 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed439a7b23bbb5f2fa206796d9485bda8fe9ad63d16b81f2ee2685ca9178d8`  
		Last Modified: Thu, 02 Mar 2017 06:42:52 GMT  
		Size: 2.3 MB (2273013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8917f2ae4c3dc33d1ecdaf34cdb9faa2ebe964496cf3471c0a23cc78182cd01d`  
		Last Modified: Thu, 02 Mar 2017 06:43:15 GMT  
		Size: 67.4 MB (67368278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c20328e83f7cc5a5aea44dd152afe5378b4e024928f15259f2c88c5d079df4d`  
		Last Modified: Thu, 02 Mar 2017 06:42:48 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7ee85bbd0be7d85b0a6e225839611b65abf344fd3f83ddeb53284a1df7ddda`  
		Last Modified: Thu, 02 Mar 2017 06:44:03 GMT  
		Size: 15.5 MB (15505548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11563d5b6ada50f6bf797c33c9f294c5aef173041d116b2720ff2bb0f6b24313`  
		Last Modified: Thu, 02 Mar 2017 06:43:57 GMT  
		Size: 4.1 MB (4066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:fb1aa3f535002ff2edf989e23770c64887ad37210236975bfdf5b15b99000750
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257477017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d773d390521e316e66f229ef845471e13aa763233a684d7ef5cd88e87816351`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 17:57:34 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 01 Mar 2017 17:57:35 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 01 Mar 2017 17:57:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 18:00:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 18:00:29 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 18:00:30 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 18:00:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 18:00:31 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 18:00:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 01 Mar 2017 18:00:32 GMT
ENV PASSENGER_VERSION=5.1.2
# Wed, 01 Mar 2017 18:00:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 18:01:03 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 01 Mar 2017 18:01:03 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed439a7b23bbb5f2fa206796d9485bda8fe9ad63d16b81f2ee2685ca9178d8`  
		Last Modified: Thu, 02 Mar 2017 06:42:52 GMT  
		Size: 2.3 MB (2273013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8917f2ae4c3dc33d1ecdaf34cdb9faa2ebe964496cf3471c0a23cc78182cd01d`  
		Last Modified: Thu, 02 Mar 2017 06:43:15 GMT  
		Size: 67.4 MB (67368278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c20328e83f7cc5a5aea44dd152afe5378b4e024928f15259f2c88c5d079df4d`  
		Last Modified: Thu, 02 Mar 2017 06:42:48 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7ee85bbd0be7d85b0a6e225839611b65abf344fd3f83ddeb53284a1df7ddda`  
		Last Modified: Thu, 02 Mar 2017 06:44:03 GMT  
		Size: 15.5 MB (15505548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11563d5b6ada50f6bf797c33c9f294c5aef173041d116b2720ff2bb0f6b24313`  
		Last Modified: Thu, 02 Mar 2017 06:43:57 GMT  
		Size: 4.1 MB (4066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.5`

```console
$ docker pull redmine@sha256:7f539f183018f39e0199b3425f714730913b8ac3fd5b221d01773380bcd945d6
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246754653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f261fd1e24e2df16aef3a8a1bfaa3b45de316220b89e5c15b46dce7282dbc17`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 18:01:04 GMT
ENV REDMINE_VERSION=3.2.5
# Wed, 01 Mar 2017 18:01:04 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Wed, 01 Mar 2017 18:01:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 18:04:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 18:04:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 18:04:55 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 18:04:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 18:04:56 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 18:04:56 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d156de9170a2a8e443678e15efafe84a2c9af9874a10801be669067a33f8bb7`  
		Last Modified: Thu, 02 Mar 2017 06:44:47 GMT  
		Size: 2.3 MB (2334508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec4f9d4bd530ed5a437382b91562c047f70993f777fd2fe9f733d5f22108461`  
		Last Modified: Thu, 02 Mar 2017 06:45:11 GMT  
		Size: 76.2 MB (76156181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8646f049686acfa4a36ddd0d7bed9392a5a3467bd7a7729e54c0d97c6c1a7b4a`  
		Last Modified: Thu, 02 Mar 2017 06:44:44 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:7f539f183018f39e0199b3425f714730913b8ac3fd5b221d01773380bcd945d6
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246754653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f261fd1e24e2df16aef3a8a1bfaa3b45de316220b89e5c15b46dce7282dbc17`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 18:01:04 GMT
ENV REDMINE_VERSION=3.2.5
# Wed, 01 Mar 2017 18:01:04 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Wed, 01 Mar 2017 18:01:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 18:04:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 18:04:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 18:04:55 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 18:04:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 18:04:56 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 18:04:56 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d156de9170a2a8e443678e15efafe84a2c9af9874a10801be669067a33f8bb7`  
		Last Modified: Thu, 02 Mar 2017 06:44:47 GMT  
		Size: 2.3 MB (2334508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec4f9d4bd530ed5a437382b91562c047f70993f777fd2fe9f733d5f22108461`  
		Last Modified: Thu, 02 Mar 2017 06:45:11 GMT  
		Size: 76.2 MB (76156181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8646f049686acfa4a36ddd0d7bed9392a5a3467bd7a7729e54c0d97c6c1a7b4a`  
		Last Modified: Thu, 02 Mar 2017 06:44:44 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.5-passenger`

```console
$ docker pull redmine@sha256:584376ed203c6d259aba9f5339cdd36ea2c406d3e9d9344e15bf98c668c30b58
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.5-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266326321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda21d48f16e3b0e6956f61b1ef1b090b779019755a878db255ba45f220d676a`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 18:01:04 GMT
ENV REDMINE_VERSION=3.2.5
# Wed, 01 Mar 2017 18:01:04 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Wed, 01 Mar 2017 18:01:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 18:04:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 18:04:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 18:04:55 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 18:04:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 18:04:56 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 18:04:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 01 Mar 2017 18:04:57 GMT
ENV PASSENGER_VERSION=5.1.2
# Wed, 01 Mar 2017 18:05:10 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 18:05:11 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 01 Mar 2017 18:05:12 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d156de9170a2a8e443678e15efafe84a2c9af9874a10801be669067a33f8bb7`  
		Last Modified: Thu, 02 Mar 2017 06:44:47 GMT  
		Size: 2.3 MB (2334508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec4f9d4bd530ed5a437382b91562c047f70993f777fd2fe9f733d5f22108461`  
		Last Modified: Thu, 02 Mar 2017 06:45:11 GMT  
		Size: 76.2 MB (76156181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8646f049686acfa4a36ddd0d7bed9392a5a3467bd7a7729e54c0d97c6c1a7b4a`  
		Last Modified: Thu, 02 Mar 2017 06:44:44 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0659bd6ef26a3b8a2e8f0c61b3aa9540036d57445ae1cf1901290aad7d32c679`  
		Last Modified: Thu, 02 Mar 2017 06:45:58 GMT  
		Size: 15.5 MB (15505445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610094dbcd94f536fd5ddd70af2d20800523b8fdb4177d0adee84701788dc18c`  
		Last Modified: Thu, 02 Mar 2017 06:45:52 GMT  
		Size: 4.1 MB (4066223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:584376ed203c6d259aba9f5339cdd36ea2c406d3e9d9344e15bf98c668c30b58
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266326321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda21d48f16e3b0e6956f61b1ef1b090b779019755a878db255ba45f220d676a`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 18:01:04 GMT
ENV REDMINE_VERSION=3.2.5
# Wed, 01 Mar 2017 18:01:04 GMT
ENV REDMINE_DOWNLOAD_MD5=67e84e64828ebdea363443f9ee7c52ec
# Wed, 01 Mar 2017 18:01:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 18:04:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 18:04:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 18:04:55 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 18:04:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 18:04:56 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 18:04:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 01 Mar 2017 18:04:57 GMT
ENV PASSENGER_VERSION=5.1.2
# Wed, 01 Mar 2017 18:05:10 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 18:05:11 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 01 Mar 2017 18:05:12 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d156de9170a2a8e443678e15efafe84a2c9af9874a10801be669067a33f8bb7`  
		Last Modified: Thu, 02 Mar 2017 06:44:47 GMT  
		Size: 2.3 MB (2334508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec4f9d4bd530ed5a437382b91562c047f70993f777fd2fe9f733d5f22108461`  
		Last Modified: Thu, 02 Mar 2017 06:45:11 GMT  
		Size: 76.2 MB (76156181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8646f049686acfa4a36ddd0d7bed9392a5a3467bd7a7729e54c0d97c6c1a7b4a`  
		Last Modified: Thu, 02 Mar 2017 06:44:44 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0659bd6ef26a3b8a2e8f0c61b3aa9540036d57445ae1cf1901290aad7d32c679`  
		Last Modified: Thu, 02 Mar 2017 06:45:58 GMT  
		Size: 15.5 MB (15505445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610094dbcd94f536fd5ddd70af2d20800523b8fdb4177d0adee84701788dc18c`  
		Last Modified: Thu, 02 Mar 2017 06:45:52 GMT  
		Size: 4.1 MB (4066223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.2`

```console
$ docker pull redmine@sha256:43e2514675e1c8d84910afa8e66787a9e31d29536b832239a323174484427449
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246796999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:716d6c67726ce7b1d8ea6e14397f2339f3c57c0f87ed722121e9b575fbb8e5a4`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 01 Mar 2017 17:54:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 17:57:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 17:57:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 17:57:16 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 17:57:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 17:57:17 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 17:57:18 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1dcae9f0414e96e7e0dea2e0d6ffde19dfccf0ae100c23d575d87fa3f5df97`  
		Last Modified: Thu, 02 Mar 2017 06:46:42 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7098b34e9c968683ca2f76baf6080f126b771aa05bcf4fa987286436eb4b17d4`  
		Last Modified: Thu, 02 Mar 2017 06:47:03 GMT  
		Size: 76.2 MB (76156040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b0166adf9fda893e36fce6d1aa5717e81a088a68b9b4b9706f098f686e32cb`  
		Last Modified: Thu, 02 Mar 2017 06:46:38 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:43e2514675e1c8d84910afa8e66787a9e31d29536b832239a323174484427449
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246796999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:716d6c67726ce7b1d8ea6e14397f2339f3c57c0f87ed722121e9b575fbb8e5a4`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 01 Mar 2017 17:54:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 17:57:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 17:57:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 17:57:16 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 17:57:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 17:57:17 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 17:57:18 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1dcae9f0414e96e7e0dea2e0d6ffde19dfccf0ae100c23d575d87fa3f5df97`  
		Last Modified: Thu, 02 Mar 2017 06:46:42 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7098b34e9c968683ca2f76baf6080f126b771aa05bcf4fa987286436eb4b17d4`  
		Last Modified: Thu, 02 Mar 2017 06:47:03 GMT  
		Size: 76.2 MB (76156040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b0166adf9fda893e36fce6d1aa5717e81a088a68b9b4b9706f098f686e32cb`  
		Last Modified: Thu, 02 Mar 2017 06:46:38 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:43e2514675e1c8d84910afa8e66787a9e31d29536b832239a323174484427449
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246796999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:716d6c67726ce7b1d8ea6e14397f2339f3c57c0f87ed722121e9b575fbb8e5a4`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 01 Mar 2017 17:54:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 17:57:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 17:57:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 17:57:16 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 17:57:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 17:57:17 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 17:57:18 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1dcae9f0414e96e7e0dea2e0d6ffde19dfccf0ae100c23d575d87fa3f5df97`  
		Last Modified: Thu, 02 Mar 2017 06:46:42 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7098b34e9c968683ca2f76baf6080f126b771aa05bcf4fa987286436eb4b17d4`  
		Last Modified: Thu, 02 Mar 2017 06:47:03 GMT  
		Size: 76.2 MB (76156040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b0166adf9fda893e36fce6d1aa5717e81a088a68b9b4b9706f098f686e32cb`  
		Last Modified: Thu, 02 Mar 2017 06:46:38 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:43e2514675e1c8d84910afa8e66787a9e31d29536b832239a323174484427449
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246796999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:716d6c67726ce7b1d8ea6e14397f2339f3c57c0f87ed722121e9b575fbb8e5a4`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 01 Mar 2017 17:54:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 17:57:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 17:57:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 17:57:16 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 17:57:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 17:57:17 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 17:57:18 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1dcae9f0414e96e7e0dea2e0d6ffde19dfccf0ae100c23d575d87fa3f5df97`  
		Last Modified: Thu, 02 Mar 2017 06:46:42 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7098b34e9c968683ca2f76baf6080f126b771aa05bcf4fa987286436eb4b17d4`  
		Last Modified: Thu, 02 Mar 2017 06:47:03 GMT  
		Size: 76.2 MB (76156040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b0166adf9fda893e36fce6d1aa5717e81a088a68b9b4b9706f098f686e32cb`  
		Last Modified: Thu, 02 Mar 2017 06:46:38 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.2-passenger`

```console
$ docker pull redmine@sha256:61f55c40dfa64efc365ac4b8163d129381c95edb7a0c5068b2c99496be0c6eb4
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.2-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266368336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c12a45b1d6921184ddfaff17cb9de6ed6fb8ea457e526ee322dd3d02e2838e1`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 01 Mar 2017 17:54:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 17:57:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 17:57:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 17:57:16 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 17:57:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 17:57:17 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 17:57:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 01 Mar 2017 17:57:19 GMT
ENV PASSENGER_VERSION=5.1.2
# Wed, 01 Mar 2017 17:57:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 17:57:33 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 01 Mar 2017 17:57:33 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1dcae9f0414e96e7e0dea2e0d6ffde19dfccf0ae100c23d575d87fa3f5df97`  
		Last Modified: Thu, 02 Mar 2017 06:46:42 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7098b34e9c968683ca2f76baf6080f126b771aa05bcf4fa987286436eb4b17d4`  
		Last Modified: Thu, 02 Mar 2017 06:47:03 GMT  
		Size: 76.2 MB (76156040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b0166adf9fda893e36fce6d1aa5717e81a088a68b9b4b9706f098f686e32cb`  
		Last Modified: Thu, 02 Mar 2017 06:46:38 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04798ff798e86defb4fea7dd5a1245423fb0d02a22daa3fdca169777c198bc95`  
		Last Modified: Thu, 02 Mar 2017 06:48:30 GMT  
		Size: 15.5 MB (15505123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f675991f62847c00bd6cf55e1a3f8fad9a68e42420b0142f8d263ceedae8d4`  
		Last Modified: Thu, 02 Mar 2017 06:48:23 GMT  
		Size: 4.1 MB (4066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:61f55c40dfa64efc365ac4b8163d129381c95edb7a0c5068b2c99496be0c6eb4
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266368336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c12a45b1d6921184ddfaff17cb9de6ed6fb8ea457e526ee322dd3d02e2838e1`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 01 Mar 2017 17:54:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 17:57:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 17:57:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 17:57:16 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 17:57:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 17:57:17 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 17:57:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 01 Mar 2017 17:57:19 GMT
ENV PASSENGER_VERSION=5.1.2
# Wed, 01 Mar 2017 17:57:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 17:57:33 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 01 Mar 2017 17:57:33 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1dcae9f0414e96e7e0dea2e0d6ffde19dfccf0ae100c23d575d87fa3f5df97`  
		Last Modified: Thu, 02 Mar 2017 06:46:42 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7098b34e9c968683ca2f76baf6080f126b771aa05bcf4fa987286436eb4b17d4`  
		Last Modified: Thu, 02 Mar 2017 06:47:03 GMT  
		Size: 76.2 MB (76156040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b0166adf9fda893e36fce6d1aa5717e81a088a68b9b4b9706f098f686e32cb`  
		Last Modified: Thu, 02 Mar 2017 06:46:38 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04798ff798e86defb4fea7dd5a1245423fb0d02a22daa3fdca169777c198bc95`  
		Last Modified: Thu, 02 Mar 2017 06:48:30 GMT  
		Size: 15.5 MB (15505123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f675991f62847c00bd6cf55e1a3f8fad9a68e42420b0142f8d263ceedae8d4`  
		Last Modified: Thu, 02 Mar 2017 06:48:23 GMT  
		Size: 4.1 MB (4066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:61f55c40dfa64efc365ac4b8163d129381c95edb7a0c5068b2c99496be0c6eb4
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266368336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c12a45b1d6921184ddfaff17cb9de6ed6fb8ea457e526ee322dd3d02e2838e1`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 01 Mar 2017 17:54:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 17:57:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 17:57:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 17:57:16 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 17:57:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 17:57:17 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 17:57:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 01 Mar 2017 17:57:19 GMT
ENV PASSENGER_VERSION=5.1.2
# Wed, 01 Mar 2017 17:57:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 17:57:33 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 01 Mar 2017 17:57:33 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1dcae9f0414e96e7e0dea2e0d6ffde19dfccf0ae100c23d575d87fa3f5df97`  
		Last Modified: Thu, 02 Mar 2017 06:46:42 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7098b34e9c968683ca2f76baf6080f126b771aa05bcf4fa987286436eb4b17d4`  
		Last Modified: Thu, 02 Mar 2017 06:47:03 GMT  
		Size: 76.2 MB (76156040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b0166adf9fda893e36fce6d1aa5717e81a088a68b9b4b9706f098f686e32cb`  
		Last Modified: Thu, 02 Mar 2017 06:46:38 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04798ff798e86defb4fea7dd5a1245423fb0d02a22daa3fdca169777c198bc95`  
		Last Modified: Thu, 02 Mar 2017 06:48:30 GMT  
		Size: 15.5 MB (15505123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f675991f62847c00bd6cf55e1a3f8fad9a68e42420b0142f8d263ceedae8d4`  
		Last Modified: Thu, 02 Mar 2017 06:48:23 GMT  
		Size: 4.1 MB (4066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:61f55c40dfa64efc365ac4b8163d129381c95edb7a0c5068b2c99496be0c6eb4
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266368336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c12a45b1d6921184ddfaff17cb9de6ed6fb8ea457e526ee322dd3d02e2838e1`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 01 Mar 2017 00:03:22 GMT
ENV BUNDLER_VERSION=1.14.5
# Wed, 01 Mar 2017 00:03:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 01 Mar 2017 00:03:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Mar 2017 00:03:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 00:03:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 01 Mar 2017 00:03:26 GMT
CMD ["irb"]
# Wed, 01 Mar 2017 17:53:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 01 Mar 2017 17:53:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:53:42 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 17:53:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 17:54:00 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 01 Mar 2017 17:54:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 01 Mar 2017 17:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 17:54:47 GMT
ENV RAILS_ENV=production
# Wed, 01 Mar 2017 17:54:47 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 01 Mar 2017 17:54:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 01 Mar 2017 17:54:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 01 Mar 2017 17:57:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 17:57:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Mar 2017 17:57:16 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 01 Mar 2017 17:57:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 17:57:17 GMT
EXPOSE 3000/tcp
# Wed, 01 Mar 2017 17:57:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 01 Mar 2017 17:57:19 GMT
ENV PASSENGER_VERSION=5.1.2
# Wed, 01 Mar 2017 17:57:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 17:57:33 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 01 Mar 2017 17:57:33 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfbf53d36989715aaf404dc4626943dec6b9008c7197c490e4fdec9f1eef7`  
		Last Modified: Thu, 02 Mar 2017 04:07:14 GMT  
		Size: 637.4 KB (637413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d26f5dcebc38e98d78671947be336ee84f3ec81a02290c51b413ae93cdae99`  
		Last Modified: Thu, 02 Mar 2017 04:07:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c44bd717ca2669f7050b4852b43cabeaeb9603374452a4ecee9bd1e974d14`  
		Last Modified: Thu, 02 Mar 2017 06:42:55 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8650c5bab1f56db673ca0ff56126a314701411a920ae8ad2fde7fac4e034405`  
		Last Modified: Thu, 02 Mar 2017 06:42:58 GMT  
		Size: 13.9 MB (13863923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25fab36e1f8410b9eafc3bc591d5668221200e184d1cdd37c39cd9c3bebea4`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c06d4dcae3dc9217190cbb4edb322da5a13bb9922eefa3fb7527bb151606d0`  
		Last Modified: Thu, 02 Mar 2017 06:42:51 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd317d4d7939b3ee51ddea76df604ab92ba48a09c619edae80e5966bec0215ae`  
		Last Modified: Thu, 02 Mar 2017 06:43:14 GMT  
		Size: 58.2 MB (58213554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49780c765b315a2b231c745e71f24d09e287fd2842e7259a517b292b505ee50c`  
		Last Modified: Thu, 02 Mar 2017 06:42:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1dcae9f0414e96e7e0dea2e0d6ffde19dfccf0ae100c23d575d87fa3f5df97`  
		Last Modified: Thu, 02 Mar 2017 06:46:42 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7098b34e9c968683ca2f76baf6080f126b771aa05bcf4fa987286436eb4b17d4`  
		Last Modified: Thu, 02 Mar 2017 06:47:03 GMT  
		Size: 76.2 MB (76156040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b0166adf9fda893e36fce6d1aa5717e81a088a68b9b4b9706f098f686e32cb`  
		Last Modified: Thu, 02 Mar 2017 06:46:38 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04798ff798e86defb4fea7dd5a1245423fb0d02a22daa3fdca169777c198bc95`  
		Last Modified: Thu, 02 Mar 2017 06:48:30 GMT  
		Size: 15.5 MB (15505123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f675991f62847c00bd6cf55e1a3f8fad9a68e42420b0142f8d263ceedae8d4`  
		Last Modified: Thu, 02 Mar 2017 06:48:23 GMT  
		Size: 4.1 MB (4066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
