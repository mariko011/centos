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
$ docker pull redmine@sha256:01ddfe10961e6761747669be75edba34162f475f945a252cc2e6b9ea53ae00c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.4.2` - linux; amd64

```console
$ docker pull redmine@sha256:0cd68aabd4cbb2c35786c5f41169fb1a734385736dc4cbe04b4e5acb23bb719c
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (240047142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb814182a7b86e8eaf9029ebaecad3bca3c855c8d55f85c8655d123bdf51556`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:44:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:44:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:44:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:44:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:44:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:44:36 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:33:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:34:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:34:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:34:07 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:34:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:51 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:34:51 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:34:51 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 11 Sep 2017 17:34:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 11 Sep 2017 17:34:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:37:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:37:37 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:37:37 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:37:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:37:38 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:37:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d94300f88afbc862bcfbef2b9c98e54a545ba64a4e2072a2e81414047a9d2a6`  
		Last Modified: Mon, 11 Sep 2017 14:56:00 GMT  
		Size: 23.3 MB (23300991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7814d079bee2c9a24d892a6affefdd3e99a2712ac4bb57ed80e0aaab07eeb0a8`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e0b2eec13916385aade488f521cbc4f09fc7303ec35ac40d453a94c184ad0`  
		Last Modified: Mon, 11 Sep 2017 14:55:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d0159d7fec783546dd84a487187c89853eec8cbe1f31d3e80dc89da6eed482`  
		Last Modified: Mon, 11 Sep 2017 17:54:12 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7545bad4c17d000c55a69ba27df1d658a5ae00c7acdc93e779fb97868361948e`  
		Last Modified: Mon, 11 Sep 2017 17:54:16 GMT  
		Size: 14.4 MB (14422173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43842c551d447c4fb6fba9af32238792bda5b000b8b3b3a8a47c85de9a2d753d`  
		Last Modified: Mon, 11 Sep 2017 17:54:13 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf518eaf7ae2bd7da56d9a5a5c64c8de349d8ad76b1db3973ebf696f0f2ca48`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8deb1ded6bfa6e6a2df2e91ed0221d7e401e9c8278033868d7f4bf93670086`  
		Last Modified: Mon, 11 Sep 2017 17:54:30 GMT  
		Size: 59.2 MB (59237405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44478ac4f3d78bad67fa7de931084929f7fb965b3487da9aa114eae439f5a2a3`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6434700ae50f814dd34e1e656d949250e1ceb1cb9466705545c08fbca1a412`  
		Last Modified: Mon, 11 Sep 2017 17:54:14 GMT  
		Size: 2.4 MB (2447805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc6474d385b49c05a5627e5680bc79ffce3877b671df8ff319c4e257342597f`  
		Last Modified: Mon, 11 Sep 2017 17:54:31 GMT  
		Size: 76.7 MB (76693488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a291cf1bc7caaace579069da280e92008f5763ec3f64c8c30475ee829e592847`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:406a1b98b480fc5f59761e13e850e6561edaaf4a8ecc457d4565810c5c18983e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233031668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e43be4344b28e2822a264422f1acea9030b1e684cd9e4202124fc3faf241c4e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_MAJOR=2.4
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_VERSION=2.4.1
# Sat, 09 Sep 2017 01:46:02 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Sat, 09 Sep 2017 01:46:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Sat, 09 Sep 2017 01:55:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 09 Sep 2017 01:55:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Sat, 09 Sep 2017 01:55:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 09 Sep 2017 01:55:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 09 Sep 2017 01:55:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 09 Sep 2017 01:55:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 01:56:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 09 Sep 2017 01:56:00 GMT
CMD ["irb"]
# Sat, 09 Sep 2017 04:45:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 09 Sep 2017 04:45:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:45:51 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 04:45:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Sep 2017 04:45:56 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 09 Sep 2017 04:46:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 09 Sep 2017 04:47:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:48:00 GMT
ENV RAILS_ENV=production
# Sat, 09 Sep 2017 04:48:01 GMT
WORKDIR /usr/src/redmine
# Sat, 09 Sep 2017 04:48:01 GMT
ENV REDMINE_VERSION=3.4.2
# Sat, 09 Sep 2017 04:48:03 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Sat, 09 Sep 2017 04:48:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 09 Sep 2017 04:57:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 04:57:58 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 09 Sep 2017 04:57:58 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Sat, 09 Sep 2017 04:57:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 09 Sep 2017 04:58:02 GMT
EXPOSE 3000/tcp
# Sat, 09 Sep 2017 04:58:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74405fb65c253054772497a3b0c3b9a5979040ea94aebc625ae73b76b1b8fcf`  
		Last Modified: Sat, 09 Sep 2017 02:19:07 GMT  
		Size: 23.5 MB (23507075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5566312f6f818f68db42e2bc4e33b55a8eb2aeb9551dd8267b94b90457a234`  
		Last Modified: Sat, 09 Sep 2017 02:18:57 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830f4c2aa6bc676974f92616a9371d4327e6f8a4cc2cb18712adf94274377d31`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684059f31c9ad8bc72a57d4bd2aef968c4c11e73d3726b80f05069c1a2bbbafd`  
		Last Modified: Sat, 09 Sep 2017 05:33:24 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5ef684c37a651771d7589f71b803b8c80a7b9e9bfa24d069af8493b2f464bb`  
		Last Modified: Sat, 09 Sep 2017 05:33:28 GMT  
		Size: 14.5 MB (14462564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe555241423eb1087151dc96331cb79d91d4ac510ddc5d8a779f6d822b44d98`  
		Last Modified: Sat, 09 Sep 2017 05:33:22 GMT  
		Size: 468.7 KB (468691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1aac8d530711a6f702fd9c38fdf81d52edbc2cd53f2a9782c2e8dc83b99420`  
		Last Modified: Sat, 09 Sep 2017 05:33:21 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871ee73180248f9b1ac5105ae22090e326d7d758b212f4efcef3a687d84b7b7b`  
		Last Modified: Sat, 09 Sep 2017 05:33:39 GMT  
		Size: 55.8 MB (55772430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c436562185d2b163b86f5331c7494c9779a4ddaf01ea7284655ae006ec1fca9`  
		Last Modified: Sat, 09 Sep 2017 05:33:19 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669afa840f160eda6d38e2d5eaca4e5e96706407b40ae57d49b8a7893f5260d0`  
		Last Modified: Sat, 09 Sep 2017 05:33:20 GMT  
		Size: 2.4 MB (2448145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537f2b3a00aa68835e329dea58933edd77db0e6801b12a5e06015eab5c87ba2b`  
		Last Modified: Sat, 09 Sep 2017 05:33:41 GMT  
		Size: 76.4 MB (76421468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5735f51ddd6b0f366291004e216553759e7a079e49617cc47530d83069a91e3`  
		Last Modified: Sat, 09 Sep 2017 05:33:18 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; 386

```console
$ docker pull redmine@sha256:2d6c4b05b5192460a3c29ae27e7c252e049dc4f1a391b3c6e34b7b04fe104833
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244903588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91227a4d2701e1b6194e0581c4a5308ade77373c4cb67d55c9506108699d66f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:29:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:29:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 17:29:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 17:29:01 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 17:29:02 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 17:29:02 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 17:33:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 17:33:32 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 17:33:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 17:33:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 17:33:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 17:33:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:33:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 17:33:35 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 18:10:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 18:10:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:10:49 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:10:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:10:53 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 18:10:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 18:11:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:11:52 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 18:11:52 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 18:11:53 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 08 Sep 2017 18:11:53 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 08 Sep 2017 18:11:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 18:15:02 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 18:15:03 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 18:15:03 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 18:15:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:15:03 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 18:15:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c17b08c3dfc503b71e3ce2bb63b38c8554fb5bfa8645c3ac17b033c1c024792`  
		Last Modified: Fri, 08 Sep 2017 17:48:46 GMT  
		Size: 14.6 MB (14626939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18227dba261327339ab7f00b157f9d2d57e44b4bd0137e2e3435ebc28d033d3b`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12cba66e252bac5f9e0b81a34f0d63d81c858783a7201a2f03b85acc693a373`  
		Last Modified: Fri, 08 Sep 2017 17:48:48 GMT  
		Size: 22.5 MB (22528234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdf78bea3ab183fc4f4e2bde787c7bc69f1c9dda463e4fcaaa451fb999b35c5`  
		Last Modified: Fri, 08 Sep 2017 17:48:40 GMT  
		Size: 675.4 KB (675351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea2e9e3c9ebec0771894e4176a4c83c5674e4f595c8197a361f72e4a4ac95c`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34872d3d6b05db4e366e885e7ac4a89d8b69287bda47ab68befda87e759995e`  
		Last Modified: Fri, 08 Sep 2017 18:36:31 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e059948fbb8d2b649e60cb88e41bce2d982b0d46c1df9ef2fa797b69d9082e2a`  
		Last Modified: Fri, 08 Sep 2017 18:36:34 GMT  
		Size: 14.8 MB (14817203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a919381f4568812c269660b14895458d53bc067b8b6986ea659d0f6733fd867`  
		Last Modified: Fri, 08 Sep 2017 18:36:31 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e961fd5e003baad6a655c5d87841efd7a582195ad69d2d9320cc0d90a6e0c0ea`  
		Last Modified: Fri, 08 Sep 2017 18:36:30 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b9039ad1841c2e5fde378dcfabe148fcb70c9c137ea4395939da67622d597c`  
		Last Modified: Fri, 08 Sep 2017 18:36:49 GMT  
		Size: 60.1 MB (60116180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557a0c1bc06790cd2357d214d8eec1db5d7731c532acac87cfa64b1c0b8766bc`  
		Last Modified: Fri, 08 Sep 2017 18:36:30 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bae581063547a92c0436ce5125595818963f6b3c639a3994d78d2ee597463b`  
		Last Modified: Fri, 08 Sep 2017 18:36:34 GMT  
		Size: 2.4 MB (2447808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d342332594287545ba7360e813022448168ad3ef961914ae7a2408c4bde57d84`  
		Last Modified: Fri, 08 Sep 2017 18:36:50 GMT  
		Size: 76.4 MB (76425320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff5f1b6230592f0f12e636286b3c52b49a2a8916870bcc35e6b0d5dc132f49`  
		Last Modified: Fri, 08 Sep 2017 18:36:30 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:79db95c9151d16c51634905a958f5a3e2417745ed08dfdf00d26f6e03ae0659e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239655250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759888f73aa04c37cb181205a27241f5318818b3845896422a01479f86df6829`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 02:25:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 02:25:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 02:26:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 02:26:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 02:26:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 02:26:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 02:26:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 02:26:02 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 02:51:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 02:52:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:52:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:52:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 02:52:13 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 02:52:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 02:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:53:05 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 02:53:05 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 02:53:05 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 08 Sep 2017 02:53:05 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 08 Sep 2017 02:53:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 02:56:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 02:56:13 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 02:56:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 02:56:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 02:56:14 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 02:56:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7b44bf81f3f2321567548bb7c79d01f228ee004d0941396eeb83583ad7c4d8`  
		Last Modified: Fri, 08 Sep 2017 02:34:08 GMT  
		Size: 24.0 MB (23985896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fe15c7649bdcea02c229cfc27c060395be62ea78919a6d5be177c3a6d1309f`  
		Last Modified: Fri, 08 Sep 2017 02:34:02 GMT  
		Size: 677.1 KB (677099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a16e37d923c90cb309e7813e80527919016ae0d6203d4470b8a915a3618043`  
		Last Modified: Fri, 08 Sep 2017 02:34:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e9d0306d595496238b8bd94a36679c057273a87831b91bf5e57005b3bba457`  
		Last Modified: Fri, 08 Sep 2017 03:08:25 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f08f0b93d7793a1e81c7161765dc4648e52c3ed169dc03e30fcd8beba7c01c`  
		Last Modified: Fri, 08 Sep 2017 03:08:28 GMT  
		Size: 14.7 MB (14718717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb69032de2649e826c536c067b36508df814e7dd96618e4b2f2685e9d69b280`  
		Last Modified: Fri, 08 Sep 2017 03:08:25 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573352fc3f740f54d3f88016f210b3d4d3b5dab53780327bb852562ea165b511`  
		Last Modified: Fri, 08 Sep 2017 03:08:23 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56f81ab0db36fbf3718e52f660d7e885ca3b06429a7d95270074b6e367f9865`  
		Last Modified: Fri, 08 Sep 2017 03:08:38 GMT  
		Size: 58.1 MB (58103403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811eb5cb551b0e099cc4544360b230991ac46b44b9818dc8fe7cc3b1b7d0f9b4`  
		Last Modified: Fri, 08 Sep 2017 03:08:20 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546d2d9f0628479c33102b2fbed5fd97a6a89368ef1679cc76b6a9837bbdd6be`  
		Last Modified: Fri, 08 Sep 2017 03:08:22 GMT  
		Size: 2.4 MB (2448726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa473130ec477abd7ab3fafdec612b8cdd1b7a6b178a257246cbac122cc639af`  
		Last Modified: Fri, 08 Sep 2017 03:08:38 GMT  
		Size: 77.3 MB (77297098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63403df836a20e75e572b34a962946b6c752c0c29c2adcef5864fadf2810903`  
		Last Modified: Fri, 08 Sep 2017 03:08:20 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; s390x

```console
$ docker pull redmine@sha256:6ecece3fbc10211310f0873c534c328ecb4a96500043176038510703ff1a9481
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243816303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ed3bb2eac84aa1bd8756faa8d03c9fd4bf62590b8f94d0afd253bc1a7652fc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:20:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:20:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 07:20:35 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 07:23:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 07:23:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 07:23:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 07:23:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 07:23:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 07:23:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:23:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 07:23:53 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 07:46:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 07:46:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:47:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:47:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 07:47:02 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 07:47:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 07:47:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:47:35 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 07:47:35 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 07:47:35 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 08 Sep 2017 07:47:35 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 08 Sep 2017 07:47:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 07:49:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:49:57 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 07:49:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 07:49:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:49:58 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 07:49:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7806079690737ed18410be149d70cc3439abe5521f16720649707abbffe2ac`  
		Last Modified: Fri, 08 Sep 2017 07:30:19 GMT  
		Size: 10.0 MB (9959664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4801eb4feb44806d3dbada1c80e2fe522b598975252c8c21a80d3aa8213ff0c3`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5598177114eac29e87ce3f57b8708a996d916a36365b06a434d6480f4597877`  
		Last Modified: Fri, 08 Sep 2017 07:30:22 GMT  
		Size: 23.9 MB (23925757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808aeba778eff29e45818fa11e9bc8583194233253bdf68e2e1e1db184633dfb`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 677.1 KB (677071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f1717302ecd50989e6e5905a41c6539bae522ad69ad41e1f6a9bd4f477966c`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d2cb160c57c3125fa3a33a958f4146222f4df5c0e86d80fc9226cb03337007`  
		Last Modified: Fri, 08 Sep 2017 07:58:33 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06f0420f3f035d3892d8ed8cbf8c3eb14fc0846955cb2af5c170bfd012136e6`  
		Last Modified: Fri, 08 Sep 2017 07:58:35 GMT  
		Size: 14.8 MB (14814985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e01b7802d827ba2217c706cbb96a1af699b66460df8bd03dbd4eb3a2ff764d`  
		Last Modified: Fri, 08 Sep 2017 07:58:32 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f067c14d6c03405c325b865518019fab923f21f4b0b6a7ebaafc69bd739622c`  
		Last Modified: Fri, 08 Sep 2017 07:58:31 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b4279c6a93ba29eb9b6a36557b5b844e4cfccfc4c9c2c11c3173a08cd06dc8`  
		Last Modified: Fri, 08 Sep 2017 07:58:44 GMT  
		Size: 59.1 MB (59089877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978fa7bd0ed40615344e50ab8a1c66a7cc1633001067361d1666329cf36e1142`  
		Last Modified: Fri, 08 Sep 2017 07:58:30 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a86545545b94c5c2cf15ddd4e273db09316bbc1193b731bbb4dec4f050566a9`  
		Last Modified: Fri, 08 Sep 2017 07:58:30 GMT  
		Size: 2.4 MB (2448154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04daba0f47f68c164f3f9c039a56c00b6ffb0cc7293ea6d506c859edbf2e6f78`  
		Last Modified: Fri, 08 Sep 2017 07:58:43 GMT  
		Size: 79.6 MB (79612240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c65ed868b27fb4d6a795ecf7ac6d5d3aeb581bc94a49a76870e459765d9df01`  
		Last Modified: Fri, 08 Sep 2017 07:58:31 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:01ddfe10961e6761747669be75edba34162f475f945a252cc2e6b9ea53ae00c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.4` - linux; amd64

```console
$ docker pull redmine@sha256:0cd68aabd4cbb2c35786c5f41169fb1a734385736dc4cbe04b4e5acb23bb719c
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (240047142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb814182a7b86e8eaf9029ebaecad3bca3c855c8d55f85c8655d123bdf51556`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:44:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:44:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:44:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:44:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:44:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:44:36 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:33:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:34:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:34:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:34:07 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:34:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:51 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:34:51 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:34:51 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 11 Sep 2017 17:34:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 11 Sep 2017 17:34:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:37:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:37:37 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:37:37 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:37:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:37:38 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:37:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d94300f88afbc862bcfbef2b9c98e54a545ba64a4e2072a2e81414047a9d2a6`  
		Last Modified: Mon, 11 Sep 2017 14:56:00 GMT  
		Size: 23.3 MB (23300991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7814d079bee2c9a24d892a6affefdd3e99a2712ac4bb57ed80e0aaab07eeb0a8`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e0b2eec13916385aade488f521cbc4f09fc7303ec35ac40d453a94c184ad0`  
		Last Modified: Mon, 11 Sep 2017 14:55:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d0159d7fec783546dd84a487187c89853eec8cbe1f31d3e80dc89da6eed482`  
		Last Modified: Mon, 11 Sep 2017 17:54:12 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7545bad4c17d000c55a69ba27df1d658a5ae00c7acdc93e779fb97868361948e`  
		Last Modified: Mon, 11 Sep 2017 17:54:16 GMT  
		Size: 14.4 MB (14422173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43842c551d447c4fb6fba9af32238792bda5b000b8b3b3a8a47c85de9a2d753d`  
		Last Modified: Mon, 11 Sep 2017 17:54:13 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf518eaf7ae2bd7da56d9a5a5c64c8de349d8ad76b1db3973ebf696f0f2ca48`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8deb1ded6bfa6e6a2df2e91ed0221d7e401e9c8278033868d7f4bf93670086`  
		Last Modified: Mon, 11 Sep 2017 17:54:30 GMT  
		Size: 59.2 MB (59237405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44478ac4f3d78bad67fa7de931084929f7fb965b3487da9aa114eae439f5a2a3`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6434700ae50f814dd34e1e656d949250e1ceb1cb9466705545c08fbca1a412`  
		Last Modified: Mon, 11 Sep 2017 17:54:14 GMT  
		Size: 2.4 MB (2447805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc6474d385b49c05a5627e5680bc79ffce3877b671df8ff319c4e257342597f`  
		Last Modified: Mon, 11 Sep 2017 17:54:31 GMT  
		Size: 76.7 MB (76693488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a291cf1bc7caaace579069da280e92008f5763ec3f64c8c30475ee829e592847`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:406a1b98b480fc5f59761e13e850e6561edaaf4a8ecc457d4565810c5c18983e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233031668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e43be4344b28e2822a264422f1acea9030b1e684cd9e4202124fc3faf241c4e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_MAJOR=2.4
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_VERSION=2.4.1
# Sat, 09 Sep 2017 01:46:02 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Sat, 09 Sep 2017 01:46:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Sat, 09 Sep 2017 01:55:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 09 Sep 2017 01:55:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Sat, 09 Sep 2017 01:55:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 09 Sep 2017 01:55:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 09 Sep 2017 01:55:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 09 Sep 2017 01:55:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 01:56:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 09 Sep 2017 01:56:00 GMT
CMD ["irb"]
# Sat, 09 Sep 2017 04:45:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 09 Sep 2017 04:45:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:45:51 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 04:45:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Sep 2017 04:45:56 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 09 Sep 2017 04:46:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 09 Sep 2017 04:47:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:48:00 GMT
ENV RAILS_ENV=production
# Sat, 09 Sep 2017 04:48:01 GMT
WORKDIR /usr/src/redmine
# Sat, 09 Sep 2017 04:48:01 GMT
ENV REDMINE_VERSION=3.4.2
# Sat, 09 Sep 2017 04:48:03 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Sat, 09 Sep 2017 04:48:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 09 Sep 2017 04:57:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 04:57:58 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 09 Sep 2017 04:57:58 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Sat, 09 Sep 2017 04:57:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 09 Sep 2017 04:58:02 GMT
EXPOSE 3000/tcp
# Sat, 09 Sep 2017 04:58:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74405fb65c253054772497a3b0c3b9a5979040ea94aebc625ae73b76b1b8fcf`  
		Last Modified: Sat, 09 Sep 2017 02:19:07 GMT  
		Size: 23.5 MB (23507075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5566312f6f818f68db42e2bc4e33b55a8eb2aeb9551dd8267b94b90457a234`  
		Last Modified: Sat, 09 Sep 2017 02:18:57 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830f4c2aa6bc676974f92616a9371d4327e6f8a4cc2cb18712adf94274377d31`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684059f31c9ad8bc72a57d4bd2aef968c4c11e73d3726b80f05069c1a2bbbafd`  
		Last Modified: Sat, 09 Sep 2017 05:33:24 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5ef684c37a651771d7589f71b803b8c80a7b9e9bfa24d069af8493b2f464bb`  
		Last Modified: Sat, 09 Sep 2017 05:33:28 GMT  
		Size: 14.5 MB (14462564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe555241423eb1087151dc96331cb79d91d4ac510ddc5d8a779f6d822b44d98`  
		Last Modified: Sat, 09 Sep 2017 05:33:22 GMT  
		Size: 468.7 KB (468691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1aac8d530711a6f702fd9c38fdf81d52edbc2cd53f2a9782c2e8dc83b99420`  
		Last Modified: Sat, 09 Sep 2017 05:33:21 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871ee73180248f9b1ac5105ae22090e326d7d758b212f4efcef3a687d84b7b7b`  
		Last Modified: Sat, 09 Sep 2017 05:33:39 GMT  
		Size: 55.8 MB (55772430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c436562185d2b163b86f5331c7494c9779a4ddaf01ea7284655ae006ec1fca9`  
		Last Modified: Sat, 09 Sep 2017 05:33:19 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669afa840f160eda6d38e2d5eaca4e5e96706407b40ae57d49b8a7893f5260d0`  
		Last Modified: Sat, 09 Sep 2017 05:33:20 GMT  
		Size: 2.4 MB (2448145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537f2b3a00aa68835e329dea58933edd77db0e6801b12a5e06015eab5c87ba2b`  
		Last Modified: Sat, 09 Sep 2017 05:33:41 GMT  
		Size: 76.4 MB (76421468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5735f51ddd6b0f366291004e216553759e7a079e49617cc47530d83069a91e3`  
		Last Modified: Sat, 09 Sep 2017 05:33:18 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:2d6c4b05b5192460a3c29ae27e7c252e049dc4f1a391b3c6e34b7b04fe104833
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244903588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91227a4d2701e1b6194e0581c4a5308ade77373c4cb67d55c9506108699d66f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:29:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:29:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 17:29:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 17:29:01 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 17:29:02 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 17:29:02 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 17:33:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 17:33:32 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 17:33:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 17:33:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 17:33:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 17:33:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:33:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 17:33:35 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 18:10:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 18:10:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:10:49 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:10:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:10:53 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 18:10:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 18:11:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:11:52 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 18:11:52 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 18:11:53 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 08 Sep 2017 18:11:53 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 08 Sep 2017 18:11:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 18:15:02 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 18:15:03 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 18:15:03 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 18:15:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:15:03 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 18:15:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c17b08c3dfc503b71e3ce2bb63b38c8554fb5bfa8645c3ac17b033c1c024792`  
		Last Modified: Fri, 08 Sep 2017 17:48:46 GMT  
		Size: 14.6 MB (14626939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18227dba261327339ab7f00b157f9d2d57e44b4bd0137e2e3435ebc28d033d3b`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12cba66e252bac5f9e0b81a34f0d63d81c858783a7201a2f03b85acc693a373`  
		Last Modified: Fri, 08 Sep 2017 17:48:48 GMT  
		Size: 22.5 MB (22528234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdf78bea3ab183fc4f4e2bde787c7bc69f1c9dda463e4fcaaa451fb999b35c5`  
		Last Modified: Fri, 08 Sep 2017 17:48:40 GMT  
		Size: 675.4 KB (675351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea2e9e3c9ebec0771894e4176a4c83c5674e4f595c8197a361f72e4a4ac95c`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34872d3d6b05db4e366e885e7ac4a89d8b69287bda47ab68befda87e759995e`  
		Last Modified: Fri, 08 Sep 2017 18:36:31 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e059948fbb8d2b649e60cb88e41bce2d982b0d46c1df9ef2fa797b69d9082e2a`  
		Last Modified: Fri, 08 Sep 2017 18:36:34 GMT  
		Size: 14.8 MB (14817203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a919381f4568812c269660b14895458d53bc067b8b6986ea659d0f6733fd867`  
		Last Modified: Fri, 08 Sep 2017 18:36:31 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e961fd5e003baad6a655c5d87841efd7a582195ad69d2d9320cc0d90a6e0c0ea`  
		Last Modified: Fri, 08 Sep 2017 18:36:30 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b9039ad1841c2e5fde378dcfabe148fcb70c9c137ea4395939da67622d597c`  
		Last Modified: Fri, 08 Sep 2017 18:36:49 GMT  
		Size: 60.1 MB (60116180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557a0c1bc06790cd2357d214d8eec1db5d7731c532acac87cfa64b1c0b8766bc`  
		Last Modified: Fri, 08 Sep 2017 18:36:30 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bae581063547a92c0436ce5125595818963f6b3c639a3994d78d2ee597463b`  
		Last Modified: Fri, 08 Sep 2017 18:36:34 GMT  
		Size: 2.4 MB (2447808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d342332594287545ba7360e813022448168ad3ef961914ae7a2408c4bde57d84`  
		Last Modified: Fri, 08 Sep 2017 18:36:50 GMT  
		Size: 76.4 MB (76425320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff5f1b6230592f0f12e636286b3c52b49a2a8916870bcc35e6b0d5dc132f49`  
		Last Modified: Fri, 08 Sep 2017 18:36:30 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:79db95c9151d16c51634905a958f5a3e2417745ed08dfdf00d26f6e03ae0659e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239655250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759888f73aa04c37cb181205a27241f5318818b3845896422a01479f86df6829`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 02:25:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 02:25:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 02:26:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 02:26:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 02:26:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 02:26:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 02:26:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 02:26:02 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 02:51:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 02:52:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:52:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:52:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 02:52:13 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 02:52:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 02:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:53:05 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 02:53:05 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 02:53:05 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 08 Sep 2017 02:53:05 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 08 Sep 2017 02:53:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 02:56:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 02:56:13 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 02:56:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 02:56:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 02:56:14 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 02:56:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7b44bf81f3f2321567548bb7c79d01f228ee004d0941396eeb83583ad7c4d8`  
		Last Modified: Fri, 08 Sep 2017 02:34:08 GMT  
		Size: 24.0 MB (23985896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fe15c7649bdcea02c229cfc27c060395be62ea78919a6d5be177c3a6d1309f`  
		Last Modified: Fri, 08 Sep 2017 02:34:02 GMT  
		Size: 677.1 KB (677099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a16e37d923c90cb309e7813e80527919016ae0d6203d4470b8a915a3618043`  
		Last Modified: Fri, 08 Sep 2017 02:34:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e9d0306d595496238b8bd94a36679c057273a87831b91bf5e57005b3bba457`  
		Last Modified: Fri, 08 Sep 2017 03:08:25 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f08f0b93d7793a1e81c7161765dc4648e52c3ed169dc03e30fcd8beba7c01c`  
		Last Modified: Fri, 08 Sep 2017 03:08:28 GMT  
		Size: 14.7 MB (14718717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb69032de2649e826c536c067b36508df814e7dd96618e4b2f2685e9d69b280`  
		Last Modified: Fri, 08 Sep 2017 03:08:25 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573352fc3f740f54d3f88016f210b3d4d3b5dab53780327bb852562ea165b511`  
		Last Modified: Fri, 08 Sep 2017 03:08:23 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56f81ab0db36fbf3718e52f660d7e885ca3b06429a7d95270074b6e367f9865`  
		Last Modified: Fri, 08 Sep 2017 03:08:38 GMT  
		Size: 58.1 MB (58103403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811eb5cb551b0e099cc4544360b230991ac46b44b9818dc8fe7cc3b1b7d0f9b4`  
		Last Modified: Fri, 08 Sep 2017 03:08:20 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546d2d9f0628479c33102b2fbed5fd97a6a89368ef1679cc76b6a9837bbdd6be`  
		Last Modified: Fri, 08 Sep 2017 03:08:22 GMT  
		Size: 2.4 MB (2448726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa473130ec477abd7ab3fafdec612b8cdd1b7a6b178a257246cbac122cc639af`  
		Last Modified: Fri, 08 Sep 2017 03:08:38 GMT  
		Size: 77.3 MB (77297098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63403df836a20e75e572b34a962946b6c752c0c29c2adcef5864fadf2810903`  
		Last Modified: Fri, 08 Sep 2017 03:08:20 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:6ecece3fbc10211310f0873c534c328ecb4a96500043176038510703ff1a9481
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243816303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ed3bb2eac84aa1bd8756faa8d03c9fd4bf62590b8f94d0afd253bc1a7652fc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:20:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:20:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 07:20:35 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 07:23:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 07:23:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 07:23:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 07:23:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 07:23:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 07:23:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:23:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 07:23:53 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 07:46:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 07:46:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:47:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:47:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 07:47:02 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 07:47:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 07:47:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:47:35 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 07:47:35 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 07:47:35 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 08 Sep 2017 07:47:35 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 08 Sep 2017 07:47:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 07:49:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:49:57 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 07:49:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 07:49:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:49:58 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 07:49:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7806079690737ed18410be149d70cc3439abe5521f16720649707abbffe2ac`  
		Last Modified: Fri, 08 Sep 2017 07:30:19 GMT  
		Size: 10.0 MB (9959664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4801eb4feb44806d3dbada1c80e2fe522b598975252c8c21a80d3aa8213ff0c3`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5598177114eac29e87ce3f57b8708a996d916a36365b06a434d6480f4597877`  
		Last Modified: Fri, 08 Sep 2017 07:30:22 GMT  
		Size: 23.9 MB (23925757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808aeba778eff29e45818fa11e9bc8583194233253bdf68e2e1e1db184633dfb`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 677.1 KB (677071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f1717302ecd50989e6e5905a41c6539bae522ad69ad41e1f6a9bd4f477966c`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d2cb160c57c3125fa3a33a958f4146222f4df5c0e86d80fc9226cb03337007`  
		Last Modified: Fri, 08 Sep 2017 07:58:33 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06f0420f3f035d3892d8ed8cbf8c3eb14fc0846955cb2af5c170bfd012136e6`  
		Last Modified: Fri, 08 Sep 2017 07:58:35 GMT  
		Size: 14.8 MB (14814985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e01b7802d827ba2217c706cbb96a1af699b66460df8bd03dbd4eb3a2ff764d`  
		Last Modified: Fri, 08 Sep 2017 07:58:32 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f067c14d6c03405c325b865518019fab923f21f4b0b6a7ebaafc69bd739622c`  
		Last Modified: Fri, 08 Sep 2017 07:58:31 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b4279c6a93ba29eb9b6a36557b5b844e4cfccfc4c9c2c11c3173a08cd06dc8`  
		Last Modified: Fri, 08 Sep 2017 07:58:44 GMT  
		Size: 59.1 MB (59089877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978fa7bd0ed40615344e50ab8a1c66a7cc1633001067361d1666329cf36e1142`  
		Last Modified: Fri, 08 Sep 2017 07:58:30 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a86545545b94c5c2cf15ddd4e273db09316bbc1193b731bbb4dec4f050566a9`  
		Last Modified: Fri, 08 Sep 2017 07:58:30 GMT  
		Size: 2.4 MB (2448154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04daba0f47f68c164f3f9c039a56c00b6ffb0cc7293ea6d506c859edbf2e6f78`  
		Last Modified: Fri, 08 Sep 2017 07:58:43 GMT  
		Size: 79.6 MB (79612240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c65ed868b27fb4d6a795ecf7ac6d5d3aeb581bc94a49a76870e459765d9df01`  
		Last Modified: Fri, 08 Sep 2017 07:58:31 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:01ddfe10961e6761747669be75edba34162f475f945a252cc2e6b9ea53ae00c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3` - linux; amd64

```console
$ docker pull redmine@sha256:0cd68aabd4cbb2c35786c5f41169fb1a734385736dc4cbe04b4e5acb23bb719c
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (240047142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb814182a7b86e8eaf9029ebaecad3bca3c855c8d55f85c8655d123bdf51556`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:44:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:44:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:44:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:44:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:44:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:44:36 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:33:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:34:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:34:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:34:07 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:34:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:51 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:34:51 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:34:51 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 11 Sep 2017 17:34:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 11 Sep 2017 17:34:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:37:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:37:37 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:37:37 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:37:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:37:38 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:37:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d94300f88afbc862bcfbef2b9c98e54a545ba64a4e2072a2e81414047a9d2a6`  
		Last Modified: Mon, 11 Sep 2017 14:56:00 GMT  
		Size: 23.3 MB (23300991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7814d079bee2c9a24d892a6affefdd3e99a2712ac4bb57ed80e0aaab07eeb0a8`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e0b2eec13916385aade488f521cbc4f09fc7303ec35ac40d453a94c184ad0`  
		Last Modified: Mon, 11 Sep 2017 14:55:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d0159d7fec783546dd84a487187c89853eec8cbe1f31d3e80dc89da6eed482`  
		Last Modified: Mon, 11 Sep 2017 17:54:12 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7545bad4c17d000c55a69ba27df1d658a5ae00c7acdc93e779fb97868361948e`  
		Last Modified: Mon, 11 Sep 2017 17:54:16 GMT  
		Size: 14.4 MB (14422173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43842c551d447c4fb6fba9af32238792bda5b000b8b3b3a8a47c85de9a2d753d`  
		Last Modified: Mon, 11 Sep 2017 17:54:13 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf518eaf7ae2bd7da56d9a5a5c64c8de349d8ad76b1db3973ebf696f0f2ca48`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8deb1ded6bfa6e6a2df2e91ed0221d7e401e9c8278033868d7f4bf93670086`  
		Last Modified: Mon, 11 Sep 2017 17:54:30 GMT  
		Size: 59.2 MB (59237405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44478ac4f3d78bad67fa7de931084929f7fb965b3487da9aa114eae439f5a2a3`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6434700ae50f814dd34e1e656d949250e1ceb1cb9466705545c08fbca1a412`  
		Last Modified: Mon, 11 Sep 2017 17:54:14 GMT  
		Size: 2.4 MB (2447805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc6474d385b49c05a5627e5680bc79ffce3877b671df8ff319c4e257342597f`  
		Last Modified: Mon, 11 Sep 2017 17:54:31 GMT  
		Size: 76.7 MB (76693488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a291cf1bc7caaace579069da280e92008f5763ec3f64c8c30475ee829e592847`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:406a1b98b480fc5f59761e13e850e6561edaaf4a8ecc457d4565810c5c18983e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233031668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e43be4344b28e2822a264422f1acea9030b1e684cd9e4202124fc3faf241c4e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_MAJOR=2.4
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_VERSION=2.4.1
# Sat, 09 Sep 2017 01:46:02 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Sat, 09 Sep 2017 01:46:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Sat, 09 Sep 2017 01:55:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 09 Sep 2017 01:55:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Sat, 09 Sep 2017 01:55:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 09 Sep 2017 01:55:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 09 Sep 2017 01:55:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 09 Sep 2017 01:55:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 01:56:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 09 Sep 2017 01:56:00 GMT
CMD ["irb"]
# Sat, 09 Sep 2017 04:45:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 09 Sep 2017 04:45:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:45:51 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 04:45:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Sep 2017 04:45:56 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 09 Sep 2017 04:46:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 09 Sep 2017 04:47:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:48:00 GMT
ENV RAILS_ENV=production
# Sat, 09 Sep 2017 04:48:01 GMT
WORKDIR /usr/src/redmine
# Sat, 09 Sep 2017 04:48:01 GMT
ENV REDMINE_VERSION=3.4.2
# Sat, 09 Sep 2017 04:48:03 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Sat, 09 Sep 2017 04:48:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 09 Sep 2017 04:57:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 04:57:58 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 09 Sep 2017 04:57:58 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Sat, 09 Sep 2017 04:57:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 09 Sep 2017 04:58:02 GMT
EXPOSE 3000/tcp
# Sat, 09 Sep 2017 04:58:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74405fb65c253054772497a3b0c3b9a5979040ea94aebc625ae73b76b1b8fcf`  
		Last Modified: Sat, 09 Sep 2017 02:19:07 GMT  
		Size: 23.5 MB (23507075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5566312f6f818f68db42e2bc4e33b55a8eb2aeb9551dd8267b94b90457a234`  
		Last Modified: Sat, 09 Sep 2017 02:18:57 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830f4c2aa6bc676974f92616a9371d4327e6f8a4cc2cb18712adf94274377d31`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684059f31c9ad8bc72a57d4bd2aef968c4c11e73d3726b80f05069c1a2bbbafd`  
		Last Modified: Sat, 09 Sep 2017 05:33:24 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5ef684c37a651771d7589f71b803b8c80a7b9e9bfa24d069af8493b2f464bb`  
		Last Modified: Sat, 09 Sep 2017 05:33:28 GMT  
		Size: 14.5 MB (14462564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe555241423eb1087151dc96331cb79d91d4ac510ddc5d8a779f6d822b44d98`  
		Last Modified: Sat, 09 Sep 2017 05:33:22 GMT  
		Size: 468.7 KB (468691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1aac8d530711a6f702fd9c38fdf81d52edbc2cd53f2a9782c2e8dc83b99420`  
		Last Modified: Sat, 09 Sep 2017 05:33:21 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871ee73180248f9b1ac5105ae22090e326d7d758b212f4efcef3a687d84b7b7b`  
		Last Modified: Sat, 09 Sep 2017 05:33:39 GMT  
		Size: 55.8 MB (55772430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c436562185d2b163b86f5331c7494c9779a4ddaf01ea7284655ae006ec1fca9`  
		Last Modified: Sat, 09 Sep 2017 05:33:19 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669afa840f160eda6d38e2d5eaca4e5e96706407b40ae57d49b8a7893f5260d0`  
		Last Modified: Sat, 09 Sep 2017 05:33:20 GMT  
		Size: 2.4 MB (2448145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537f2b3a00aa68835e329dea58933edd77db0e6801b12a5e06015eab5c87ba2b`  
		Last Modified: Sat, 09 Sep 2017 05:33:41 GMT  
		Size: 76.4 MB (76421468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5735f51ddd6b0f366291004e216553759e7a079e49617cc47530d83069a91e3`  
		Last Modified: Sat, 09 Sep 2017 05:33:18 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:2d6c4b05b5192460a3c29ae27e7c252e049dc4f1a391b3c6e34b7b04fe104833
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244903588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91227a4d2701e1b6194e0581c4a5308ade77373c4cb67d55c9506108699d66f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:29:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:29:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 17:29:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 17:29:01 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 17:29:02 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 17:29:02 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 17:33:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 17:33:32 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 17:33:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 17:33:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 17:33:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 17:33:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:33:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 17:33:35 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 18:10:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 18:10:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:10:49 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:10:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:10:53 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 18:10:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 18:11:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:11:52 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 18:11:52 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 18:11:53 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 08 Sep 2017 18:11:53 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 08 Sep 2017 18:11:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 18:15:02 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 18:15:03 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 18:15:03 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 18:15:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:15:03 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 18:15:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c17b08c3dfc503b71e3ce2bb63b38c8554fb5bfa8645c3ac17b033c1c024792`  
		Last Modified: Fri, 08 Sep 2017 17:48:46 GMT  
		Size: 14.6 MB (14626939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18227dba261327339ab7f00b157f9d2d57e44b4bd0137e2e3435ebc28d033d3b`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12cba66e252bac5f9e0b81a34f0d63d81c858783a7201a2f03b85acc693a373`  
		Last Modified: Fri, 08 Sep 2017 17:48:48 GMT  
		Size: 22.5 MB (22528234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdf78bea3ab183fc4f4e2bde787c7bc69f1c9dda463e4fcaaa451fb999b35c5`  
		Last Modified: Fri, 08 Sep 2017 17:48:40 GMT  
		Size: 675.4 KB (675351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea2e9e3c9ebec0771894e4176a4c83c5674e4f595c8197a361f72e4a4ac95c`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34872d3d6b05db4e366e885e7ac4a89d8b69287bda47ab68befda87e759995e`  
		Last Modified: Fri, 08 Sep 2017 18:36:31 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e059948fbb8d2b649e60cb88e41bce2d982b0d46c1df9ef2fa797b69d9082e2a`  
		Last Modified: Fri, 08 Sep 2017 18:36:34 GMT  
		Size: 14.8 MB (14817203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a919381f4568812c269660b14895458d53bc067b8b6986ea659d0f6733fd867`  
		Last Modified: Fri, 08 Sep 2017 18:36:31 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e961fd5e003baad6a655c5d87841efd7a582195ad69d2d9320cc0d90a6e0c0ea`  
		Last Modified: Fri, 08 Sep 2017 18:36:30 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b9039ad1841c2e5fde378dcfabe148fcb70c9c137ea4395939da67622d597c`  
		Last Modified: Fri, 08 Sep 2017 18:36:49 GMT  
		Size: 60.1 MB (60116180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557a0c1bc06790cd2357d214d8eec1db5d7731c532acac87cfa64b1c0b8766bc`  
		Last Modified: Fri, 08 Sep 2017 18:36:30 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bae581063547a92c0436ce5125595818963f6b3c639a3994d78d2ee597463b`  
		Last Modified: Fri, 08 Sep 2017 18:36:34 GMT  
		Size: 2.4 MB (2447808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d342332594287545ba7360e813022448168ad3ef961914ae7a2408c4bde57d84`  
		Last Modified: Fri, 08 Sep 2017 18:36:50 GMT  
		Size: 76.4 MB (76425320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff5f1b6230592f0f12e636286b3c52b49a2a8916870bcc35e6b0d5dc132f49`  
		Last Modified: Fri, 08 Sep 2017 18:36:30 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:79db95c9151d16c51634905a958f5a3e2417745ed08dfdf00d26f6e03ae0659e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239655250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759888f73aa04c37cb181205a27241f5318818b3845896422a01479f86df6829`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 02:25:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 02:25:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 02:26:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 02:26:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 02:26:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 02:26:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 02:26:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 02:26:02 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 02:51:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 02:52:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:52:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:52:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 02:52:13 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 02:52:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 02:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:53:05 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 02:53:05 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 02:53:05 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 08 Sep 2017 02:53:05 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 08 Sep 2017 02:53:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 02:56:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 02:56:13 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 02:56:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 02:56:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 02:56:14 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 02:56:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7b44bf81f3f2321567548bb7c79d01f228ee004d0941396eeb83583ad7c4d8`  
		Last Modified: Fri, 08 Sep 2017 02:34:08 GMT  
		Size: 24.0 MB (23985896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fe15c7649bdcea02c229cfc27c060395be62ea78919a6d5be177c3a6d1309f`  
		Last Modified: Fri, 08 Sep 2017 02:34:02 GMT  
		Size: 677.1 KB (677099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a16e37d923c90cb309e7813e80527919016ae0d6203d4470b8a915a3618043`  
		Last Modified: Fri, 08 Sep 2017 02:34:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e9d0306d595496238b8bd94a36679c057273a87831b91bf5e57005b3bba457`  
		Last Modified: Fri, 08 Sep 2017 03:08:25 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f08f0b93d7793a1e81c7161765dc4648e52c3ed169dc03e30fcd8beba7c01c`  
		Last Modified: Fri, 08 Sep 2017 03:08:28 GMT  
		Size: 14.7 MB (14718717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb69032de2649e826c536c067b36508df814e7dd96618e4b2f2685e9d69b280`  
		Last Modified: Fri, 08 Sep 2017 03:08:25 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573352fc3f740f54d3f88016f210b3d4d3b5dab53780327bb852562ea165b511`  
		Last Modified: Fri, 08 Sep 2017 03:08:23 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56f81ab0db36fbf3718e52f660d7e885ca3b06429a7d95270074b6e367f9865`  
		Last Modified: Fri, 08 Sep 2017 03:08:38 GMT  
		Size: 58.1 MB (58103403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811eb5cb551b0e099cc4544360b230991ac46b44b9818dc8fe7cc3b1b7d0f9b4`  
		Last Modified: Fri, 08 Sep 2017 03:08:20 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546d2d9f0628479c33102b2fbed5fd97a6a89368ef1679cc76b6a9837bbdd6be`  
		Last Modified: Fri, 08 Sep 2017 03:08:22 GMT  
		Size: 2.4 MB (2448726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa473130ec477abd7ab3fafdec612b8cdd1b7a6b178a257246cbac122cc639af`  
		Last Modified: Fri, 08 Sep 2017 03:08:38 GMT  
		Size: 77.3 MB (77297098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63403df836a20e75e572b34a962946b6c752c0c29c2adcef5864fadf2810903`  
		Last Modified: Fri, 08 Sep 2017 03:08:20 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:6ecece3fbc10211310f0873c534c328ecb4a96500043176038510703ff1a9481
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243816303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ed3bb2eac84aa1bd8756faa8d03c9fd4bf62590b8f94d0afd253bc1a7652fc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:20:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:20:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 07:20:35 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 07:23:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 07:23:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 07:23:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 07:23:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 07:23:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 07:23:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:23:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 07:23:53 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 07:46:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 07:46:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:47:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:47:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 07:47:02 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 07:47:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 07:47:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:47:35 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 07:47:35 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 07:47:35 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 08 Sep 2017 07:47:35 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 08 Sep 2017 07:47:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 07:49:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:49:57 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 07:49:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 07:49:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:49:58 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 07:49:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7806079690737ed18410be149d70cc3439abe5521f16720649707abbffe2ac`  
		Last Modified: Fri, 08 Sep 2017 07:30:19 GMT  
		Size: 10.0 MB (9959664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4801eb4feb44806d3dbada1c80e2fe522b598975252c8c21a80d3aa8213ff0c3`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5598177114eac29e87ce3f57b8708a996d916a36365b06a434d6480f4597877`  
		Last Modified: Fri, 08 Sep 2017 07:30:22 GMT  
		Size: 23.9 MB (23925757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808aeba778eff29e45818fa11e9bc8583194233253bdf68e2e1e1db184633dfb`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 677.1 KB (677071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f1717302ecd50989e6e5905a41c6539bae522ad69ad41e1f6a9bd4f477966c`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d2cb160c57c3125fa3a33a958f4146222f4df5c0e86d80fc9226cb03337007`  
		Last Modified: Fri, 08 Sep 2017 07:58:33 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06f0420f3f035d3892d8ed8cbf8c3eb14fc0846955cb2af5c170bfd012136e6`  
		Last Modified: Fri, 08 Sep 2017 07:58:35 GMT  
		Size: 14.8 MB (14814985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e01b7802d827ba2217c706cbb96a1af699b66460df8bd03dbd4eb3a2ff764d`  
		Last Modified: Fri, 08 Sep 2017 07:58:32 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f067c14d6c03405c325b865518019fab923f21f4b0b6a7ebaafc69bd739622c`  
		Last Modified: Fri, 08 Sep 2017 07:58:31 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b4279c6a93ba29eb9b6a36557b5b844e4cfccfc4c9c2c11c3173a08cd06dc8`  
		Last Modified: Fri, 08 Sep 2017 07:58:44 GMT  
		Size: 59.1 MB (59089877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978fa7bd0ed40615344e50ab8a1c66a7cc1633001067361d1666329cf36e1142`  
		Last Modified: Fri, 08 Sep 2017 07:58:30 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a86545545b94c5c2cf15ddd4e273db09316bbc1193b731bbb4dec4f050566a9`  
		Last Modified: Fri, 08 Sep 2017 07:58:30 GMT  
		Size: 2.4 MB (2448154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04daba0f47f68c164f3f9c039a56c00b6ffb0cc7293ea6d506c859edbf2e6f78`  
		Last Modified: Fri, 08 Sep 2017 07:58:43 GMT  
		Size: 79.6 MB (79612240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c65ed868b27fb4d6a795ecf7ac6d5d3aeb581bc94a49a76870e459765d9df01`  
		Last Modified: Fri, 08 Sep 2017 07:58:31 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:01ddfe10961e6761747669be75edba34162f475f945a252cc2e6b9ea53ae00c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:latest` - linux; amd64

```console
$ docker pull redmine@sha256:0cd68aabd4cbb2c35786c5f41169fb1a734385736dc4cbe04b4e5acb23bb719c
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (240047142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb814182a7b86e8eaf9029ebaecad3bca3c855c8d55f85c8655d123bdf51556`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:44:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:44:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:44:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:44:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:44:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:44:36 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:33:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:34:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:34:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:34:07 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:34:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:51 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:34:51 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:34:51 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 11 Sep 2017 17:34:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 11 Sep 2017 17:34:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:37:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:37:37 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:37:37 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:37:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:37:38 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:37:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d94300f88afbc862bcfbef2b9c98e54a545ba64a4e2072a2e81414047a9d2a6`  
		Last Modified: Mon, 11 Sep 2017 14:56:00 GMT  
		Size: 23.3 MB (23300991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7814d079bee2c9a24d892a6affefdd3e99a2712ac4bb57ed80e0aaab07eeb0a8`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e0b2eec13916385aade488f521cbc4f09fc7303ec35ac40d453a94c184ad0`  
		Last Modified: Mon, 11 Sep 2017 14:55:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d0159d7fec783546dd84a487187c89853eec8cbe1f31d3e80dc89da6eed482`  
		Last Modified: Mon, 11 Sep 2017 17:54:12 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7545bad4c17d000c55a69ba27df1d658a5ae00c7acdc93e779fb97868361948e`  
		Last Modified: Mon, 11 Sep 2017 17:54:16 GMT  
		Size: 14.4 MB (14422173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43842c551d447c4fb6fba9af32238792bda5b000b8b3b3a8a47c85de9a2d753d`  
		Last Modified: Mon, 11 Sep 2017 17:54:13 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf518eaf7ae2bd7da56d9a5a5c64c8de349d8ad76b1db3973ebf696f0f2ca48`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8deb1ded6bfa6e6a2df2e91ed0221d7e401e9c8278033868d7f4bf93670086`  
		Last Modified: Mon, 11 Sep 2017 17:54:30 GMT  
		Size: 59.2 MB (59237405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44478ac4f3d78bad67fa7de931084929f7fb965b3487da9aa114eae439f5a2a3`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6434700ae50f814dd34e1e656d949250e1ceb1cb9466705545c08fbca1a412`  
		Last Modified: Mon, 11 Sep 2017 17:54:14 GMT  
		Size: 2.4 MB (2447805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc6474d385b49c05a5627e5680bc79ffce3877b671df8ff319c4e257342597f`  
		Last Modified: Mon, 11 Sep 2017 17:54:31 GMT  
		Size: 76.7 MB (76693488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a291cf1bc7caaace579069da280e92008f5763ec3f64c8c30475ee829e592847`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:406a1b98b480fc5f59761e13e850e6561edaaf4a8ecc457d4565810c5c18983e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233031668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e43be4344b28e2822a264422f1acea9030b1e684cd9e4202124fc3faf241c4e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_MAJOR=2.4
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_VERSION=2.4.1
# Sat, 09 Sep 2017 01:46:02 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Sat, 09 Sep 2017 01:46:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Sat, 09 Sep 2017 01:55:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 09 Sep 2017 01:55:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Sat, 09 Sep 2017 01:55:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 09 Sep 2017 01:55:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 09 Sep 2017 01:55:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 09 Sep 2017 01:55:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 01:56:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 09 Sep 2017 01:56:00 GMT
CMD ["irb"]
# Sat, 09 Sep 2017 04:45:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 09 Sep 2017 04:45:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:45:51 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 04:45:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Sep 2017 04:45:56 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 09 Sep 2017 04:46:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 09 Sep 2017 04:47:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:48:00 GMT
ENV RAILS_ENV=production
# Sat, 09 Sep 2017 04:48:01 GMT
WORKDIR /usr/src/redmine
# Sat, 09 Sep 2017 04:48:01 GMT
ENV REDMINE_VERSION=3.4.2
# Sat, 09 Sep 2017 04:48:03 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Sat, 09 Sep 2017 04:48:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 09 Sep 2017 04:57:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 04:57:58 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 09 Sep 2017 04:57:58 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Sat, 09 Sep 2017 04:57:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 09 Sep 2017 04:58:02 GMT
EXPOSE 3000/tcp
# Sat, 09 Sep 2017 04:58:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74405fb65c253054772497a3b0c3b9a5979040ea94aebc625ae73b76b1b8fcf`  
		Last Modified: Sat, 09 Sep 2017 02:19:07 GMT  
		Size: 23.5 MB (23507075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5566312f6f818f68db42e2bc4e33b55a8eb2aeb9551dd8267b94b90457a234`  
		Last Modified: Sat, 09 Sep 2017 02:18:57 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830f4c2aa6bc676974f92616a9371d4327e6f8a4cc2cb18712adf94274377d31`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684059f31c9ad8bc72a57d4bd2aef968c4c11e73d3726b80f05069c1a2bbbafd`  
		Last Modified: Sat, 09 Sep 2017 05:33:24 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5ef684c37a651771d7589f71b803b8c80a7b9e9bfa24d069af8493b2f464bb`  
		Last Modified: Sat, 09 Sep 2017 05:33:28 GMT  
		Size: 14.5 MB (14462564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe555241423eb1087151dc96331cb79d91d4ac510ddc5d8a779f6d822b44d98`  
		Last Modified: Sat, 09 Sep 2017 05:33:22 GMT  
		Size: 468.7 KB (468691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1aac8d530711a6f702fd9c38fdf81d52edbc2cd53f2a9782c2e8dc83b99420`  
		Last Modified: Sat, 09 Sep 2017 05:33:21 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871ee73180248f9b1ac5105ae22090e326d7d758b212f4efcef3a687d84b7b7b`  
		Last Modified: Sat, 09 Sep 2017 05:33:39 GMT  
		Size: 55.8 MB (55772430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c436562185d2b163b86f5331c7494c9779a4ddaf01ea7284655ae006ec1fca9`  
		Last Modified: Sat, 09 Sep 2017 05:33:19 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669afa840f160eda6d38e2d5eaca4e5e96706407b40ae57d49b8a7893f5260d0`  
		Last Modified: Sat, 09 Sep 2017 05:33:20 GMT  
		Size: 2.4 MB (2448145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537f2b3a00aa68835e329dea58933edd77db0e6801b12a5e06015eab5c87ba2b`  
		Last Modified: Sat, 09 Sep 2017 05:33:41 GMT  
		Size: 76.4 MB (76421468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5735f51ddd6b0f366291004e216553759e7a079e49617cc47530d83069a91e3`  
		Last Modified: Sat, 09 Sep 2017 05:33:18 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:2d6c4b05b5192460a3c29ae27e7c252e049dc4f1a391b3c6e34b7b04fe104833
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244903588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91227a4d2701e1b6194e0581c4a5308ade77373c4cb67d55c9506108699d66f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:29:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:29:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 17:29:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 17:29:01 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 17:29:02 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 17:29:02 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 17:33:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 17:33:32 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 17:33:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 17:33:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 17:33:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 17:33:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:33:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 17:33:35 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 18:10:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 18:10:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:10:49 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:10:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:10:53 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 18:10:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 18:11:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:11:52 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 18:11:52 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 18:11:53 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 08 Sep 2017 18:11:53 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 08 Sep 2017 18:11:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 18:15:02 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 18:15:03 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 18:15:03 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 18:15:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:15:03 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 18:15:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c17b08c3dfc503b71e3ce2bb63b38c8554fb5bfa8645c3ac17b033c1c024792`  
		Last Modified: Fri, 08 Sep 2017 17:48:46 GMT  
		Size: 14.6 MB (14626939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18227dba261327339ab7f00b157f9d2d57e44b4bd0137e2e3435ebc28d033d3b`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12cba66e252bac5f9e0b81a34f0d63d81c858783a7201a2f03b85acc693a373`  
		Last Modified: Fri, 08 Sep 2017 17:48:48 GMT  
		Size: 22.5 MB (22528234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdf78bea3ab183fc4f4e2bde787c7bc69f1c9dda463e4fcaaa451fb999b35c5`  
		Last Modified: Fri, 08 Sep 2017 17:48:40 GMT  
		Size: 675.4 KB (675351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea2e9e3c9ebec0771894e4176a4c83c5674e4f595c8197a361f72e4a4ac95c`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34872d3d6b05db4e366e885e7ac4a89d8b69287bda47ab68befda87e759995e`  
		Last Modified: Fri, 08 Sep 2017 18:36:31 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e059948fbb8d2b649e60cb88e41bce2d982b0d46c1df9ef2fa797b69d9082e2a`  
		Last Modified: Fri, 08 Sep 2017 18:36:34 GMT  
		Size: 14.8 MB (14817203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a919381f4568812c269660b14895458d53bc067b8b6986ea659d0f6733fd867`  
		Last Modified: Fri, 08 Sep 2017 18:36:31 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e961fd5e003baad6a655c5d87841efd7a582195ad69d2d9320cc0d90a6e0c0ea`  
		Last Modified: Fri, 08 Sep 2017 18:36:30 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b9039ad1841c2e5fde378dcfabe148fcb70c9c137ea4395939da67622d597c`  
		Last Modified: Fri, 08 Sep 2017 18:36:49 GMT  
		Size: 60.1 MB (60116180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557a0c1bc06790cd2357d214d8eec1db5d7731c532acac87cfa64b1c0b8766bc`  
		Last Modified: Fri, 08 Sep 2017 18:36:30 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bae581063547a92c0436ce5125595818963f6b3c639a3994d78d2ee597463b`  
		Last Modified: Fri, 08 Sep 2017 18:36:34 GMT  
		Size: 2.4 MB (2447808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d342332594287545ba7360e813022448168ad3ef961914ae7a2408c4bde57d84`  
		Last Modified: Fri, 08 Sep 2017 18:36:50 GMT  
		Size: 76.4 MB (76425320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff5f1b6230592f0f12e636286b3c52b49a2a8916870bcc35e6b0d5dc132f49`  
		Last Modified: Fri, 08 Sep 2017 18:36:30 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:79db95c9151d16c51634905a958f5a3e2417745ed08dfdf00d26f6e03ae0659e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239655250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759888f73aa04c37cb181205a27241f5318818b3845896422a01479f86df6829`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 02:25:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 02:25:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 02:26:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 02:26:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 02:26:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 02:26:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 02:26:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 02:26:02 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 02:51:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 02:52:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:52:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:52:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 02:52:13 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 02:52:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 02:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:53:05 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 02:53:05 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 02:53:05 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 08 Sep 2017 02:53:05 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 08 Sep 2017 02:53:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 02:56:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 02:56:13 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 02:56:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 02:56:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 02:56:14 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 02:56:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7b44bf81f3f2321567548bb7c79d01f228ee004d0941396eeb83583ad7c4d8`  
		Last Modified: Fri, 08 Sep 2017 02:34:08 GMT  
		Size: 24.0 MB (23985896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fe15c7649bdcea02c229cfc27c060395be62ea78919a6d5be177c3a6d1309f`  
		Last Modified: Fri, 08 Sep 2017 02:34:02 GMT  
		Size: 677.1 KB (677099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a16e37d923c90cb309e7813e80527919016ae0d6203d4470b8a915a3618043`  
		Last Modified: Fri, 08 Sep 2017 02:34:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e9d0306d595496238b8bd94a36679c057273a87831b91bf5e57005b3bba457`  
		Last Modified: Fri, 08 Sep 2017 03:08:25 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f08f0b93d7793a1e81c7161765dc4648e52c3ed169dc03e30fcd8beba7c01c`  
		Last Modified: Fri, 08 Sep 2017 03:08:28 GMT  
		Size: 14.7 MB (14718717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb69032de2649e826c536c067b36508df814e7dd96618e4b2f2685e9d69b280`  
		Last Modified: Fri, 08 Sep 2017 03:08:25 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573352fc3f740f54d3f88016f210b3d4d3b5dab53780327bb852562ea165b511`  
		Last Modified: Fri, 08 Sep 2017 03:08:23 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56f81ab0db36fbf3718e52f660d7e885ca3b06429a7d95270074b6e367f9865`  
		Last Modified: Fri, 08 Sep 2017 03:08:38 GMT  
		Size: 58.1 MB (58103403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811eb5cb551b0e099cc4544360b230991ac46b44b9818dc8fe7cc3b1b7d0f9b4`  
		Last Modified: Fri, 08 Sep 2017 03:08:20 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546d2d9f0628479c33102b2fbed5fd97a6a89368ef1679cc76b6a9837bbdd6be`  
		Last Modified: Fri, 08 Sep 2017 03:08:22 GMT  
		Size: 2.4 MB (2448726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa473130ec477abd7ab3fafdec612b8cdd1b7a6b178a257246cbac122cc639af`  
		Last Modified: Fri, 08 Sep 2017 03:08:38 GMT  
		Size: 77.3 MB (77297098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63403df836a20e75e572b34a962946b6c752c0c29c2adcef5864fadf2810903`  
		Last Modified: Fri, 08 Sep 2017 03:08:20 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:6ecece3fbc10211310f0873c534c328ecb4a96500043176038510703ff1a9481
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243816303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ed3bb2eac84aa1bd8756faa8d03c9fd4bf62590b8f94d0afd253bc1a7652fc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:20:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:20:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 07:20:35 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 07:23:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 07:23:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 07:23:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 07:23:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 07:23:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 07:23:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:23:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 07:23:53 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 07:46:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 07:46:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:47:00 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:47:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 07:47:02 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 07:47:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 07:47:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:47:35 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 07:47:35 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 07:47:35 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 08 Sep 2017 07:47:35 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 08 Sep 2017 07:47:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 07:49:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:49:57 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 07:49:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 07:49:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:49:58 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 07:49:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7806079690737ed18410be149d70cc3439abe5521f16720649707abbffe2ac`  
		Last Modified: Fri, 08 Sep 2017 07:30:19 GMT  
		Size: 10.0 MB (9959664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4801eb4feb44806d3dbada1c80e2fe522b598975252c8c21a80d3aa8213ff0c3`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5598177114eac29e87ce3f57b8708a996d916a36365b06a434d6480f4597877`  
		Last Modified: Fri, 08 Sep 2017 07:30:22 GMT  
		Size: 23.9 MB (23925757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808aeba778eff29e45818fa11e9bc8583194233253bdf68e2e1e1db184633dfb`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 677.1 KB (677071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f1717302ecd50989e6e5905a41c6539bae522ad69ad41e1f6a9bd4f477966c`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d2cb160c57c3125fa3a33a958f4146222f4df5c0e86d80fc9226cb03337007`  
		Last Modified: Fri, 08 Sep 2017 07:58:33 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06f0420f3f035d3892d8ed8cbf8c3eb14fc0846955cb2af5c170bfd012136e6`  
		Last Modified: Fri, 08 Sep 2017 07:58:35 GMT  
		Size: 14.8 MB (14814985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e01b7802d827ba2217c706cbb96a1af699b66460df8bd03dbd4eb3a2ff764d`  
		Last Modified: Fri, 08 Sep 2017 07:58:32 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f067c14d6c03405c325b865518019fab923f21f4b0b6a7ebaafc69bd739622c`  
		Last Modified: Fri, 08 Sep 2017 07:58:31 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b4279c6a93ba29eb9b6a36557b5b844e4cfccfc4c9c2c11c3173a08cd06dc8`  
		Last Modified: Fri, 08 Sep 2017 07:58:44 GMT  
		Size: 59.1 MB (59089877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978fa7bd0ed40615344e50ab8a1c66a7cc1633001067361d1666329cf36e1142`  
		Last Modified: Fri, 08 Sep 2017 07:58:30 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a86545545b94c5c2cf15ddd4e273db09316bbc1193b731bbb4dec4f050566a9`  
		Last Modified: Fri, 08 Sep 2017 07:58:30 GMT  
		Size: 2.4 MB (2448154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04daba0f47f68c164f3f9c039a56c00b6ffb0cc7293ea6d506c859edbf2e6f78`  
		Last Modified: Fri, 08 Sep 2017 07:58:43 GMT  
		Size: 79.6 MB (79612240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c65ed868b27fb4d6a795ecf7ac6d5d3aeb581bc94a49a76870e459765d9df01`  
		Last Modified: Fri, 08 Sep 2017 07:58:31 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.2-passenger`

```console
$ docker pull redmine@sha256:06270dd08c9026fe2d62318b2e6ee9d1ffb04bbefdeca4ed2c5a1bb793948247
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.2-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258926266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da23060cb77f18325bddf83543ea5cc3ba7c725eefe890bc146f9647eea71fe9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:44:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:44:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:44:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:44:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:44:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:44:36 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:33:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:34:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:34:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:34:07 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:34:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:51 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:34:51 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:34:51 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 11 Sep 2017 17:34:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 11 Sep 2017 17:34:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:37:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:37:37 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:37:37 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:37:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:37:38 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:37:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 11 Sep 2017 17:43:30 GMT
ENV PASSENGER_VERSION=5.1.8
# Mon, 11 Sep 2017 17:43:54 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:43:55 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 11 Sep 2017 17:43:55 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d94300f88afbc862bcfbef2b9c98e54a545ba64a4e2072a2e81414047a9d2a6`  
		Last Modified: Mon, 11 Sep 2017 14:56:00 GMT  
		Size: 23.3 MB (23300991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7814d079bee2c9a24d892a6affefdd3e99a2712ac4bb57ed80e0aaab07eeb0a8`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e0b2eec13916385aade488f521cbc4f09fc7303ec35ac40d453a94c184ad0`  
		Last Modified: Mon, 11 Sep 2017 14:55:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d0159d7fec783546dd84a487187c89853eec8cbe1f31d3e80dc89da6eed482`  
		Last Modified: Mon, 11 Sep 2017 17:54:12 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7545bad4c17d000c55a69ba27df1d658a5ae00c7acdc93e779fb97868361948e`  
		Last Modified: Mon, 11 Sep 2017 17:54:16 GMT  
		Size: 14.4 MB (14422173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43842c551d447c4fb6fba9af32238792bda5b000b8b3b3a8a47c85de9a2d753d`  
		Last Modified: Mon, 11 Sep 2017 17:54:13 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf518eaf7ae2bd7da56d9a5a5c64c8de349d8ad76b1db3973ebf696f0f2ca48`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8deb1ded6bfa6e6a2df2e91ed0221d7e401e9c8278033868d7f4bf93670086`  
		Last Modified: Mon, 11 Sep 2017 17:54:30 GMT  
		Size: 59.2 MB (59237405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44478ac4f3d78bad67fa7de931084929f7fb965b3487da9aa114eae439f5a2a3`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6434700ae50f814dd34e1e656d949250e1ceb1cb9466705545c08fbca1a412`  
		Last Modified: Mon, 11 Sep 2017 17:54:14 GMT  
		Size: 2.4 MB (2447805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc6474d385b49c05a5627e5680bc79ffce3877b671df8ff319c4e257342597f`  
		Last Modified: Mon, 11 Sep 2017 17:54:31 GMT  
		Size: 76.7 MB (76693488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a291cf1bc7caaace579069da280e92008f5763ec3f64c8c30475ee829e592847`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7485bae212ff9b90e7ce70b31e80d38e94b6c4ae665768cba6b4a3a957f8010b`  
		Last Modified: Mon, 11 Sep 2017 17:55:27 GMT  
		Size: 14.6 MB (14605221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f9138e075e115e8144740de1210f0e896d3ec27b609330cbbafb0fb1646e6`  
		Last Modified: Mon, 11 Sep 2017 17:55:21 GMT  
		Size: 4.3 MB (4273903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:06270dd08c9026fe2d62318b2e6ee9d1ffb04bbefdeca4ed2c5a1bb793948247
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258926266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da23060cb77f18325bddf83543ea5cc3ba7c725eefe890bc146f9647eea71fe9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:44:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:44:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:44:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:44:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:44:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:44:36 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:33:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:34:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:34:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:34:07 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:34:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:51 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:34:51 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:34:51 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 11 Sep 2017 17:34:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 11 Sep 2017 17:34:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:37:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:37:37 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:37:37 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:37:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:37:38 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:37:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 11 Sep 2017 17:43:30 GMT
ENV PASSENGER_VERSION=5.1.8
# Mon, 11 Sep 2017 17:43:54 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:43:55 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 11 Sep 2017 17:43:55 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d94300f88afbc862bcfbef2b9c98e54a545ba64a4e2072a2e81414047a9d2a6`  
		Last Modified: Mon, 11 Sep 2017 14:56:00 GMT  
		Size: 23.3 MB (23300991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7814d079bee2c9a24d892a6affefdd3e99a2712ac4bb57ed80e0aaab07eeb0a8`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e0b2eec13916385aade488f521cbc4f09fc7303ec35ac40d453a94c184ad0`  
		Last Modified: Mon, 11 Sep 2017 14:55:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d0159d7fec783546dd84a487187c89853eec8cbe1f31d3e80dc89da6eed482`  
		Last Modified: Mon, 11 Sep 2017 17:54:12 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7545bad4c17d000c55a69ba27df1d658a5ae00c7acdc93e779fb97868361948e`  
		Last Modified: Mon, 11 Sep 2017 17:54:16 GMT  
		Size: 14.4 MB (14422173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43842c551d447c4fb6fba9af32238792bda5b000b8b3b3a8a47c85de9a2d753d`  
		Last Modified: Mon, 11 Sep 2017 17:54:13 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf518eaf7ae2bd7da56d9a5a5c64c8de349d8ad76b1db3973ebf696f0f2ca48`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8deb1ded6bfa6e6a2df2e91ed0221d7e401e9c8278033868d7f4bf93670086`  
		Last Modified: Mon, 11 Sep 2017 17:54:30 GMT  
		Size: 59.2 MB (59237405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44478ac4f3d78bad67fa7de931084929f7fb965b3487da9aa114eae439f5a2a3`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6434700ae50f814dd34e1e656d949250e1ceb1cb9466705545c08fbca1a412`  
		Last Modified: Mon, 11 Sep 2017 17:54:14 GMT  
		Size: 2.4 MB (2447805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc6474d385b49c05a5627e5680bc79ffce3877b671df8ff319c4e257342597f`  
		Last Modified: Mon, 11 Sep 2017 17:54:31 GMT  
		Size: 76.7 MB (76693488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a291cf1bc7caaace579069da280e92008f5763ec3f64c8c30475ee829e592847`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7485bae212ff9b90e7ce70b31e80d38e94b6c4ae665768cba6b4a3a957f8010b`  
		Last Modified: Mon, 11 Sep 2017 17:55:27 GMT  
		Size: 14.6 MB (14605221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f9138e075e115e8144740de1210f0e896d3ec27b609330cbbafb0fb1646e6`  
		Last Modified: Mon, 11 Sep 2017 17:55:21 GMT  
		Size: 4.3 MB (4273903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:06270dd08c9026fe2d62318b2e6ee9d1ffb04bbefdeca4ed2c5a1bb793948247
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258926266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da23060cb77f18325bddf83543ea5cc3ba7c725eefe890bc146f9647eea71fe9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:44:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:44:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:44:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:44:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:44:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:44:36 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:33:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:34:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:34:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:34:07 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:34:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:51 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:34:51 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:34:51 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 11 Sep 2017 17:34:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 11 Sep 2017 17:34:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:37:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:37:37 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:37:37 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:37:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:37:38 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:37:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 11 Sep 2017 17:43:30 GMT
ENV PASSENGER_VERSION=5.1.8
# Mon, 11 Sep 2017 17:43:54 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:43:55 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 11 Sep 2017 17:43:55 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d94300f88afbc862bcfbef2b9c98e54a545ba64a4e2072a2e81414047a9d2a6`  
		Last Modified: Mon, 11 Sep 2017 14:56:00 GMT  
		Size: 23.3 MB (23300991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7814d079bee2c9a24d892a6affefdd3e99a2712ac4bb57ed80e0aaab07eeb0a8`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e0b2eec13916385aade488f521cbc4f09fc7303ec35ac40d453a94c184ad0`  
		Last Modified: Mon, 11 Sep 2017 14:55:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d0159d7fec783546dd84a487187c89853eec8cbe1f31d3e80dc89da6eed482`  
		Last Modified: Mon, 11 Sep 2017 17:54:12 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7545bad4c17d000c55a69ba27df1d658a5ae00c7acdc93e779fb97868361948e`  
		Last Modified: Mon, 11 Sep 2017 17:54:16 GMT  
		Size: 14.4 MB (14422173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43842c551d447c4fb6fba9af32238792bda5b000b8b3b3a8a47c85de9a2d753d`  
		Last Modified: Mon, 11 Sep 2017 17:54:13 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf518eaf7ae2bd7da56d9a5a5c64c8de349d8ad76b1db3973ebf696f0f2ca48`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8deb1ded6bfa6e6a2df2e91ed0221d7e401e9c8278033868d7f4bf93670086`  
		Last Modified: Mon, 11 Sep 2017 17:54:30 GMT  
		Size: 59.2 MB (59237405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44478ac4f3d78bad67fa7de931084929f7fb965b3487da9aa114eae439f5a2a3`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6434700ae50f814dd34e1e656d949250e1ceb1cb9466705545c08fbca1a412`  
		Last Modified: Mon, 11 Sep 2017 17:54:14 GMT  
		Size: 2.4 MB (2447805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc6474d385b49c05a5627e5680bc79ffce3877b671df8ff319c4e257342597f`  
		Last Modified: Mon, 11 Sep 2017 17:54:31 GMT  
		Size: 76.7 MB (76693488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a291cf1bc7caaace579069da280e92008f5763ec3f64c8c30475ee829e592847`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7485bae212ff9b90e7ce70b31e80d38e94b6c4ae665768cba6b4a3a957f8010b`  
		Last Modified: Mon, 11 Sep 2017 17:55:27 GMT  
		Size: 14.6 MB (14605221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f9138e075e115e8144740de1210f0e896d3ec27b609330cbbafb0fb1646e6`  
		Last Modified: Mon, 11 Sep 2017 17:55:21 GMT  
		Size: 4.3 MB (4273903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:06270dd08c9026fe2d62318b2e6ee9d1ffb04bbefdeca4ed2c5a1bb793948247
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258926266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da23060cb77f18325bddf83543ea5cc3ba7c725eefe890bc146f9647eea71fe9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:44:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:44:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:44:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:44:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:44:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:44:36 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:33:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:34:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:34:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:34:07 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:34:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:51 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:34:51 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:34:51 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 11 Sep 2017 17:34:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 11 Sep 2017 17:34:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:37:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:37:37 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:37:37 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:37:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:37:38 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:37:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 11 Sep 2017 17:43:30 GMT
ENV PASSENGER_VERSION=5.1.8
# Mon, 11 Sep 2017 17:43:54 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:43:55 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 11 Sep 2017 17:43:55 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d94300f88afbc862bcfbef2b9c98e54a545ba64a4e2072a2e81414047a9d2a6`  
		Last Modified: Mon, 11 Sep 2017 14:56:00 GMT  
		Size: 23.3 MB (23300991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7814d079bee2c9a24d892a6affefdd3e99a2712ac4bb57ed80e0aaab07eeb0a8`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e0b2eec13916385aade488f521cbc4f09fc7303ec35ac40d453a94c184ad0`  
		Last Modified: Mon, 11 Sep 2017 14:55:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d0159d7fec783546dd84a487187c89853eec8cbe1f31d3e80dc89da6eed482`  
		Last Modified: Mon, 11 Sep 2017 17:54:12 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7545bad4c17d000c55a69ba27df1d658a5ae00c7acdc93e779fb97868361948e`  
		Last Modified: Mon, 11 Sep 2017 17:54:16 GMT  
		Size: 14.4 MB (14422173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43842c551d447c4fb6fba9af32238792bda5b000b8b3b3a8a47c85de9a2d753d`  
		Last Modified: Mon, 11 Sep 2017 17:54:13 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf518eaf7ae2bd7da56d9a5a5c64c8de349d8ad76b1db3973ebf696f0f2ca48`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8deb1ded6bfa6e6a2df2e91ed0221d7e401e9c8278033868d7f4bf93670086`  
		Last Modified: Mon, 11 Sep 2017 17:54:30 GMT  
		Size: 59.2 MB (59237405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44478ac4f3d78bad67fa7de931084929f7fb965b3487da9aa114eae439f5a2a3`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6434700ae50f814dd34e1e656d949250e1ceb1cb9466705545c08fbca1a412`  
		Last Modified: Mon, 11 Sep 2017 17:54:14 GMT  
		Size: 2.4 MB (2447805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc6474d385b49c05a5627e5680bc79ffce3877b671df8ff319c4e257342597f`  
		Last Modified: Mon, 11 Sep 2017 17:54:31 GMT  
		Size: 76.7 MB (76693488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a291cf1bc7caaace579069da280e92008f5763ec3f64c8c30475ee829e592847`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7485bae212ff9b90e7ce70b31e80d38e94b6c4ae665768cba6b4a3a957f8010b`  
		Last Modified: Mon, 11 Sep 2017 17:55:27 GMT  
		Size: 14.6 MB (14605221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f9138e075e115e8144740de1210f0e896d3ec27b609330cbbafb0fb1646e6`  
		Last Modified: Mon, 11 Sep 2017 17:55:21 GMT  
		Size: 4.3 MB (4273903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4`

```console
$ docker pull redmine@sha256:c6b3342f84ade460841b4e4e98b54f46492afc13cd5a89219209977bcf36c411
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.3.4` - linux; amd64

```console
$ docker pull redmine@sha256:5083562599c0054c44996e1975f788fded6e6d6039755d4df280395682a9b8a3
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251290234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d42eaa03f8d2f62af04c0adb41f308ef6a75cb97056ed31ae922abecaa5b4e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:56:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:56:35 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:56:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:56:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:56:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:56:39 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:44:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:44:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:20 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:44:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:44:23 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:44:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:44:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:56 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:44:56 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:44:56 GMT
ENV REDMINE_VERSION=3.3.4
# Mon, 11 Sep 2017 17:44:56 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Mon, 11 Sep 2017 17:45:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:47:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:47:14 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:47:14 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:47:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:47:15 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:47:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd23c1a1477e62628e2db3b59168f65b4f63b8f02e282b15f3b3aa60d850ccd`  
		Last Modified: Mon, 11 Sep 2017 15:00:55 GMT  
		Size: 33.9 MB (33916006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82977a3057dd651766f0d236ed4397e0a55f556a7919e9da4e44f58e2afa1013`  
		Last Modified: Mon, 11 Sep 2017 15:00:45 GMT  
		Size: 675.3 KB (675302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173b2ed5254752c314a0727439a434c074ac1329bd44c32b707b3f466da99233`  
		Last Modified: Mon, 11 Sep 2017 15:00:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9eb114932413e6785c9bd262baab48c429ed1e480c7e9663c1d4db6e43a9b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cd78c17c13500b79d71736d5e2541ef6e16521b14406ea27ad964e73f327c2`  
		Last Modified: Mon, 11 Sep 2017 18:05:02 GMT  
		Size: 14.4 MB (14422213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dd1f5182fe6d57f3caf772d8222f198133612f3e0cad89a1ccbeb79410b5b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c80e7730cda1a016898866936d47c81485fcab4718397dd10c7f2b9601f843`  
		Last Modified: Mon, 11 Sep 2017 18:04:55 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb172d1c21633d530f9e52838c99ad862bbc3ac95d5f5d3d082d2eb540d9212`  
		Last Modified: Mon, 11 Sep 2017 18:05:13 GMT  
		Size: 59.2 MB (59237779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d4c6d7ebf0cfc8bc79afb4234e8ab575ccff2289b4fbeb756290acd918eb14`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672140c75ebe4275ba278af102b9c731d38149972e09e2aa2a6fac783412970e`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.4 MB (2390089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b742b494879b4814bb40bb8653457651e0d574c827adcf5714ed95874ae4c`  
		Last Modified: Mon, 11 Sep 2017 18:05:14 GMT  
		Size: 77.4 MB (77378864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6bebd94a1d4b264e91c8e772f45f6c359673cea903d649a553f8772ba009c8`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:fb007614457d56ec9b270e9a43ee8b60523848278611eeeb79c746a42472975e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244462672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b58511f6b82cde47200ae786631ab6e8741d457d4ec83db1a21f771353ede5d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 02:04:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 09 Sep 2017 02:04:39 GMT
ENV RUBY_VERSION=2.2.7
# Sat, 09 Sep 2017 02:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Sat, 09 Sep 2017 02:04:40 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Sat, 09 Sep 2017 02:17:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 09 Sep 2017 02:17:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Sat, 09 Sep 2017 02:17:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 09 Sep 2017 02:17:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 09 Sep 2017 02:17:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 09 Sep 2017 02:17:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 02:17:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 09 Sep 2017 02:17:43 GMT
CMD ["irb"]
# Sat, 09 Sep 2017 04:58:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 09 Sep 2017 04:58:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:58:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 04:58:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Sep 2017 04:58:49 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 09 Sep 2017 04:58:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 09 Sep 2017 05:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 05:01:22 GMT
ENV RAILS_ENV=production
# Sat, 09 Sep 2017 05:01:23 GMT
WORKDIR /usr/src/redmine
# Sat, 09 Sep 2017 05:01:23 GMT
ENV REDMINE_VERSION=3.3.4
# Sat, 09 Sep 2017 05:01:24 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Sat, 09 Sep 2017 05:01:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 09 Sep 2017 05:11:50 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 05:11:51 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 09 Sep 2017 05:11:52 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Sat, 09 Sep 2017 05:11:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 09 Sep 2017 05:11:53 GMT
EXPOSE 3000/tcp
# Sat, 09 Sep 2017 05:11:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac6fa4e2333381e30e5bee4bf3f84be997e6a91c454f51aea3f89ef973ca289`  
		Last Modified: Sat, 09 Sep 2017 02:21:27 GMT  
		Size: 34.3 MB (34309344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceffa176ee927dc52aa7cd8b500a6efeef4eb7933650605e53f49dcaffc0f3fc`  
		Last Modified: Sat, 09 Sep 2017 02:21:11 GMT  
		Size: 677.1 KB (677060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca06a25c81a34b9288346a8ed3bf4504ef66d937f9b88fa7b6f57f964d78522`  
		Last Modified: Sat, 09 Sep 2017 02:21:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc9f4ec5a51b4e42012d7be86d701d2bf13d5303e1bb8fe2bc2fd35a91c5b0e`  
		Last Modified: Sat, 09 Sep 2017 05:34:24 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21222c122f8aef829e1f619c8b59f4c2cbf3f07a4f0cab9bc549b442317ee79`  
		Last Modified: Sat, 09 Sep 2017 05:34:27 GMT  
		Size: 14.5 MB (14462940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9997a4469fc22cc5e2420b0bd3d6c5799902a236888ff31fc25444fc4b00ecdd`  
		Last Modified: Sat, 09 Sep 2017 05:34:21 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186aba3d07b6bd06dcb4d015f9345d4de94a607cdd6c500dac97776e2626353`  
		Last Modified: Sat, 09 Sep 2017 05:34:21 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4115311d74b5be5138b8459550608ba672c872b05d344fd592ba9829803205ae`  
		Last Modified: Sat, 09 Sep 2017 05:34:39 GMT  
		Size: 55.8 MB (55773253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5025c2d2cb0942345c863d815aac2387a5de923de926cbdad9bb1bd2494da2dd`  
		Last Modified: Sat, 09 Sep 2017 05:34:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d34c58dbe1c34b876cab39632bdf64d914312fe9d1012a09fd557a403566d00`  
		Last Modified: Sat, 09 Sep 2017 05:34:20 GMT  
		Size: 2.4 MB (2390314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389e69c1710f22d96b4798b6d6dd92fd6122b0e2fba1454848ccfaa250703bc0`  
		Last Modified: Sat, 09 Sep 2017 05:34:41 GMT  
		Size: 77.1 MB (77106839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a151a4408f1575dc8ad345cb2097e5416d23c2a8412e60c43cca287ff0593026`  
		Last Modified: Sat, 09 Sep 2017 05:34:18 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; 386

```console
$ docker pull redmine@sha256:ca42c612d96045bfca1d7553f870dbba221ca7b4244a1a37874faaf9ca5bcace
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254644168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff5b69d4b3ca01d9afb4dad04062c358a91d6fd6e439d52eacd47d650e83b5d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:29:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:29:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 17:38:08 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 17:43:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 17:43:07 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 17:43:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 17:43:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 17:43:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 17:43:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:43:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 17:43:11 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 18:18:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 18:18:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:18:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:18:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:18:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 18:18:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 18:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:19:41 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 18:19:42 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 18:19:42 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 08 Sep 2017 18:19:42 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 08 Sep 2017 18:19:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 18:22:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 18:24:13 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 18:24:14 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 18:24:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:24:14 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 18:24:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c17b08c3dfc503b71e3ce2bb63b38c8554fb5bfa8645c3ac17b033c1c024792`  
		Last Modified: Fri, 08 Sep 2017 17:48:46 GMT  
		Size: 14.6 MB (14626939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18227dba261327339ab7f00b157f9d2d57e44b4bd0137e2e3435ebc28d033d3b`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696720f14ba576eebf161a33355f1817f6625a3b11d319a145c989b2b8945c4`  
		Last Modified: Fri, 08 Sep 2017 17:50:31 GMT  
		Size: 31.7 MB (31652913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbd823c72d4f6ecc76094ec09f2890e1e6ef44d0bd842c387ebbc73f7349738`  
		Last Modified: Fri, 08 Sep 2017 17:50:22 GMT  
		Size: 675.3 KB (675346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5dcc7d9a17fe043d13fe7add8e828eb7de1a2cc06e248ea5ba384dca02b1ec6`  
		Last Modified: Fri, 08 Sep 2017 17:50:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c370d25c0a1bd6aa315752022630bb17fe3a03d9da21c4bad12a4661eccea9`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd081c9cb578475738ce8dccf5b0efc9d806f494cbb83e256cabddf27c23a`  
		Last Modified: Fri, 08 Sep 2017 18:39:08 GMT  
		Size: 14.8 MB (14817212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2cf96028c9d8e3b6ac118a125c330d0f6cce68a47a862c141099d33f93146f`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92533a2250c35576aa65b9c85c6d7dea62f930b5062a9cad40617aa911a8bb1a`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16b9504c034c7d0de945edc9e5f785f7000ffb8f009b338eac0f2b5921d53d5`  
		Last Modified: Fri, 08 Sep 2017 18:39:22 GMT  
		Size: 60.1 MB (60115988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e019c10a1433845b5d1d5f52a333885959e64fd5a9ab8a4791bbc48b47538a`  
		Last Modified: Fri, 08 Sep 2017 18:39:04 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c0f884243bf5ed68c4073ecd3ddd0a0bea8523c7491e3c8897f784deb6e499`  
		Last Modified: Fri, 08 Sep 2017 18:39:07 GMT  
		Size: 2.4 MB (2390101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93d4db47472ac565173eff302cfdcf8f7e261bba121f80ac198c69cde464310`  
		Last Modified: Fri, 08 Sep 2017 18:39:24 GMT  
		Size: 77.1 MB (77099114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc099daa3a211da00cc854babc08ecfde2940d210b3c5fedbd95965250f3c45`  
		Last Modified: Fri, 08 Sep 2017 18:39:04 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:5c906052d9905b03593ff100b7be83ea2c1dc31ec0d9c5e62d9cce640a585041
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251486966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfb5b8155ce0b00c9f77861ccaa4b39f6cb0fa6588f97f80ab0f6ec1e6254fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 02:29:48 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 02:33:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 02:33:06 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 02:33:07 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 02:33:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 02:33:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 02:33:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 02:33:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 02:33:11 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 02:56:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 02:56:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:56:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:56:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 02:56:39 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 02:56:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 02:57:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:57:19 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 02:57:19 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 02:57:19 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 08 Sep 2017 02:57:19 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 08 Sep 2017 02:57:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 03:01:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 03:01:12 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 03:01:12 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 03:01:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 03:01:12 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 03:01:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae83bfb115b97ca1927cb6d849ce9d0f2e8a201166291834fbfdfdd3912a077a`  
		Last Modified: Fri, 08 Sep 2017 02:35:57 GMT  
		Size: 35.2 MB (35183596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88920fd5440d60c166986243b66214d4d8c4b30264fb620a3d79e5b53185cb54`  
		Last Modified: Fri, 08 Sep 2017 02:35:47 GMT  
		Size: 677.1 KB (677069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa114ada7833db1046ab7a7fddb11d4e0073e94f3b338c65778e1f97a19129cd`  
		Last Modified: Fri, 08 Sep 2017 02:35:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfa260d6d0453700f284946564b80acc4d52fbeb4c551204cdbd2172773cd18`  
		Last Modified: Fri, 08 Sep 2017 03:09:18 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd1a12ee197d0047c055808936c0339fb37ff80e642018bebb71bbc4b375ed3`  
		Last Modified: Fri, 08 Sep 2017 03:09:20 GMT  
		Size: 14.7 MB (14718821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91b7962916ea447666a36351c1f9a28e55e8ecfb93d847cf17545f44a6af16c`  
		Last Modified: Fri, 08 Sep 2017 03:09:16 GMT  
		Size: 469.8 KB (469840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8623c6c8f73e033a1f73ba963a8a6ac6f0633dc6a15da2a12d1ec72abf101a0f`  
		Last Modified: Fri, 08 Sep 2017 03:09:15 GMT  
		Size: 8.6 KB (8635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd5c9d41427e36aa9990d5e17b7c71a21dae97f0c19c815c4556d31a6318c59`  
		Last Modified: Fri, 08 Sep 2017 03:09:28 GMT  
		Size: 58.1 MB (58103533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bf8006643e7f7a9feebfdfda54213cd72e7499778c00113655a912c0a37e68`  
		Last Modified: Fri, 08 Sep 2017 03:09:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8265582d6b45fc8fbb4fee2ed08e12f08467a1e8b11af8bdccb3d741486d106`  
		Last Modified: Fri, 08 Sep 2017 03:09:13 GMT  
		Size: 2.4 MB (2390602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060a70ddda62c5ad498623a2a3c72b734b3d18d2251b5780d9787048910f3931`  
		Last Modified: Fri, 08 Sep 2017 03:09:30 GMT  
		Size: 78.0 MB (77989043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885ae79eefb8481cba43ee4f2f0c6b864a7fc4ccec3f15685fc458805e45ddc7`  
		Last Modified: Fri, 08 Sep 2017 03:09:13 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; s390x

```console
$ docker pull redmine@sha256:f664447aceac206f0fe6b9c1b1d4423cdb92631875760f338d49583b21d52098
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258253655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa99ea8a970e457a9e72233ca500196558c1408b2ccf485993eaf9b641340278`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:20:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:20:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 07:26:55 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 07:29:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 07:29:39 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 07:29:40 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 07:29:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 07:29:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 07:29:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:29:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 07:29:41 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 07:50:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 07:50:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:50:12 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:50:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 07:50:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 07:50:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 07:50:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:50:51 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 07:50:51 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 07:50:51 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 08 Sep 2017 07:50:51 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 08 Sep 2017 07:50:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 07:53:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:53:19 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 07:53:19 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 07:53:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:53:20 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 07:53:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7806079690737ed18410be149d70cc3439abe5521f16720649707abbffe2ac`  
		Last Modified: Fri, 08 Sep 2017 07:30:19 GMT  
		Size: 10.0 MB (9959664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4801eb4feb44806d3dbada1c80e2fe522b598975252c8c21a80d3aa8213ff0c3`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb2782d0951cc5fda5902bce6f9d26b6f20760b9f2bf9f689d13a28d879b4cd`  
		Last Modified: Fri, 08 Sep 2017 07:31:17 GMT  
		Size: 37.8 MB (37817597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6788612f913e71256c3f7874e884f26821e1bb73707146fc42cb5f2e1b9910`  
		Last Modified: Fri, 08 Sep 2017 07:31:07 GMT  
		Size: 677.0 KB (677043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2541bfaba3d00ee63606919cd50a6f97f2ef4b50dadeb250f96be70c02f3c8`  
		Last Modified: Fri, 08 Sep 2017 07:31:08 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50320d755447597fcc899e533a55cf086e14e73250b66fb5d0ae9924dd554aa6`  
		Last Modified: Fri, 08 Sep 2017 07:59:00 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aceb70dc7f3fe3fb52ade5a9367fb00e6095b88be80bc2467cfe7e63b34d8295`  
		Last Modified: Fri, 08 Sep 2017 07:59:03 GMT  
		Size: 14.8 MB (14814977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c34b9312fcbbd70527ada3034d454899ba484cdcdf2ca66a5eee2684990291`  
		Last Modified: Fri, 08 Sep 2017 07:58:59 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d80e6a9933f710f1757083cf6f5a2c7dc1ec619fba722efc9898ee12d0f73d9`  
		Last Modified: Fri, 08 Sep 2017 07:58:59 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32b19886b8e0d29474117ec714e9fcbb6c0e21dd15c34f7aa6a54903b0ac28e`  
		Last Modified: Fri, 08 Sep 2017 07:59:10 GMT  
		Size: 59.1 MB (59090489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf6ecb24f72366add5c6a9e7c66878e56824010b4a5ce7abe2202156ea1cb9a`  
		Last Modified: Fri, 08 Sep 2017 07:58:57 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc53014ae5b5ca04b1ff4a98db209d8a4b88b49bb206b55dcaa9feb886002b7`  
		Last Modified: Fri, 08 Sep 2017 07:58:58 GMT  
		Size: 2.4 MB (2390309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135b91abbb16b54e44ebd6312e95aa33186892f1ddd5db3db3f0b03917557b08`  
		Last Modified: Fri, 08 Sep 2017 07:59:11 GMT  
		Size: 80.2 MB (80215020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec33a8f6b66c348ece2ae3a51e06e565bc45e110c134d73991ad0f0d55fb57e`  
		Last Modified: Fri, 08 Sep 2017 07:58:57 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:c6b3342f84ade460841b4e4e98b54f46492afc13cd5a89219209977bcf36c411
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.3` - linux; amd64

```console
$ docker pull redmine@sha256:5083562599c0054c44996e1975f788fded6e6d6039755d4df280395682a9b8a3
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251290234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d42eaa03f8d2f62af04c0adb41f308ef6a75cb97056ed31ae922abecaa5b4e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:56:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:56:35 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:56:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:56:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:56:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:56:39 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:44:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:44:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:20 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:44:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:44:23 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:44:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:44:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:56 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:44:56 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:44:56 GMT
ENV REDMINE_VERSION=3.3.4
# Mon, 11 Sep 2017 17:44:56 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Mon, 11 Sep 2017 17:45:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:47:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:47:14 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:47:14 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:47:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:47:15 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:47:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd23c1a1477e62628e2db3b59168f65b4f63b8f02e282b15f3b3aa60d850ccd`  
		Last Modified: Mon, 11 Sep 2017 15:00:55 GMT  
		Size: 33.9 MB (33916006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82977a3057dd651766f0d236ed4397e0a55f556a7919e9da4e44f58e2afa1013`  
		Last Modified: Mon, 11 Sep 2017 15:00:45 GMT  
		Size: 675.3 KB (675302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173b2ed5254752c314a0727439a434c074ac1329bd44c32b707b3f466da99233`  
		Last Modified: Mon, 11 Sep 2017 15:00:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9eb114932413e6785c9bd262baab48c429ed1e480c7e9663c1d4db6e43a9b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cd78c17c13500b79d71736d5e2541ef6e16521b14406ea27ad964e73f327c2`  
		Last Modified: Mon, 11 Sep 2017 18:05:02 GMT  
		Size: 14.4 MB (14422213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dd1f5182fe6d57f3caf772d8222f198133612f3e0cad89a1ccbeb79410b5b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c80e7730cda1a016898866936d47c81485fcab4718397dd10c7f2b9601f843`  
		Last Modified: Mon, 11 Sep 2017 18:04:55 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb172d1c21633d530f9e52838c99ad862bbc3ac95d5f5d3d082d2eb540d9212`  
		Last Modified: Mon, 11 Sep 2017 18:05:13 GMT  
		Size: 59.2 MB (59237779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d4c6d7ebf0cfc8bc79afb4234e8ab575ccff2289b4fbeb756290acd918eb14`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672140c75ebe4275ba278af102b9c731d38149972e09e2aa2a6fac783412970e`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.4 MB (2390089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b742b494879b4814bb40bb8653457651e0d574c827adcf5714ed95874ae4c`  
		Last Modified: Mon, 11 Sep 2017 18:05:14 GMT  
		Size: 77.4 MB (77378864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6bebd94a1d4b264e91c8e772f45f6c359673cea903d649a553f8772ba009c8`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:fb007614457d56ec9b270e9a43ee8b60523848278611eeeb79c746a42472975e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244462672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b58511f6b82cde47200ae786631ab6e8741d457d4ec83db1a21f771353ede5d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 02:04:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 09 Sep 2017 02:04:39 GMT
ENV RUBY_VERSION=2.2.7
# Sat, 09 Sep 2017 02:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Sat, 09 Sep 2017 02:04:40 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Sat, 09 Sep 2017 02:17:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 09 Sep 2017 02:17:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Sat, 09 Sep 2017 02:17:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 09 Sep 2017 02:17:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 09 Sep 2017 02:17:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 09 Sep 2017 02:17:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 02:17:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 09 Sep 2017 02:17:43 GMT
CMD ["irb"]
# Sat, 09 Sep 2017 04:58:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 09 Sep 2017 04:58:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:58:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 04:58:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Sep 2017 04:58:49 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 09 Sep 2017 04:58:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 09 Sep 2017 05:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 05:01:22 GMT
ENV RAILS_ENV=production
# Sat, 09 Sep 2017 05:01:23 GMT
WORKDIR /usr/src/redmine
# Sat, 09 Sep 2017 05:01:23 GMT
ENV REDMINE_VERSION=3.3.4
# Sat, 09 Sep 2017 05:01:24 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Sat, 09 Sep 2017 05:01:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 09 Sep 2017 05:11:50 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 05:11:51 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 09 Sep 2017 05:11:52 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Sat, 09 Sep 2017 05:11:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 09 Sep 2017 05:11:53 GMT
EXPOSE 3000/tcp
# Sat, 09 Sep 2017 05:11:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac6fa4e2333381e30e5bee4bf3f84be997e6a91c454f51aea3f89ef973ca289`  
		Last Modified: Sat, 09 Sep 2017 02:21:27 GMT  
		Size: 34.3 MB (34309344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceffa176ee927dc52aa7cd8b500a6efeef4eb7933650605e53f49dcaffc0f3fc`  
		Last Modified: Sat, 09 Sep 2017 02:21:11 GMT  
		Size: 677.1 KB (677060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca06a25c81a34b9288346a8ed3bf4504ef66d937f9b88fa7b6f57f964d78522`  
		Last Modified: Sat, 09 Sep 2017 02:21:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc9f4ec5a51b4e42012d7be86d701d2bf13d5303e1bb8fe2bc2fd35a91c5b0e`  
		Last Modified: Sat, 09 Sep 2017 05:34:24 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21222c122f8aef829e1f619c8b59f4c2cbf3f07a4f0cab9bc549b442317ee79`  
		Last Modified: Sat, 09 Sep 2017 05:34:27 GMT  
		Size: 14.5 MB (14462940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9997a4469fc22cc5e2420b0bd3d6c5799902a236888ff31fc25444fc4b00ecdd`  
		Last Modified: Sat, 09 Sep 2017 05:34:21 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186aba3d07b6bd06dcb4d015f9345d4de94a607cdd6c500dac97776e2626353`  
		Last Modified: Sat, 09 Sep 2017 05:34:21 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4115311d74b5be5138b8459550608ba672c872b05d344fd592ba9829803205ae`  
		Last Modified: Sat, 09 Sep 2017 05:34:39 GMT  
		Size: 55.8 MB (55773253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5025c2d2cb0942345c863d815aac2387a5de923de926cbdad9bb1bd2494da2dd`  
		Last Modified: Sat, 09 Sep 2017 05:34:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d34c58dbe1c34b876cab39632bdf64d914312fe9d1012a09fd557a403566d00`  
		Last Modified: Sat, 09 Sep 2017 05:34:20 GMT  
		Size: 2.4 MB (2390314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389e69c1710f22d96b4798b6d6dd92fd6122b0e2fba1454848ccfaa250703bc0`  
		Last Modified: Sat, 09 Sep 2017 05:34:41 GMT  
		Size: 77.1 MB (77106839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a151a4408f1575dc8ad345cb2097e5416d23c2a8412e60c43cca287ff0593026`  
		Last Modified: Sat, 09 Sep 2017 05:34:18 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:ca42c612d96045bfca1d7553f870dbba221ca7b4244a1a37874faaf9ca5bcace
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254644168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff5b69d4b3ca01d9afb4dad04062c358a91d6fd6e439d52eacd47d650e83b5d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:29:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:29:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 17:38:08 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 17:43:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 17:43:07 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 17:43:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 17:43:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 17:43:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 17:43:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:43:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 17:43:11 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 18:18:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 18:18:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:18:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:18:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:18:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 18:18:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 18:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:19:41 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 18:19:42 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 18:19:42 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 08 Sep 2017 18:19:42 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 08 Sep 2017 18:19:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 18:22:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 18:24:13 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 18:24:14 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 18:24:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:24:14 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 18:24:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c17b08c3dfc503b71e3ce2bb63b38c8554fb5bfa8645c3ac17b033c1c024792`  
		Last Modified: Fri, 08 Sep 2017 17:48:46 GMT  
		Size: 14.6 MB (14626939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18227dba261327339ab7f00b157f9d2d57e44b4bd0137e2e3435ebc28d033d3b`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696720f14ba576eebf161a33355f1817f6625a3b11d319a145c989b2b8945c4`  
		Last Modified: Fri, 08 Sep 2017 17:50:31 GMT  
		Size: 31.7 MB (31652913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbd823c72d4f6ecc76094ec09f2890e1e6ef44d0bd842c387ebbc73f7349738`  
		Last Modified: Fri, 08 Sep 2017 17:50:22 GMT  
		Size: 675.3 KB (675346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5dcc7d9a17fe043d13fe7add8e828eb7de1a2cc06e248ea5ba384dca02b1ec6`  
		Last Modified: Fri, 08 Sep 2017 17:50:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c370d25c0a1bd6aa315752022630bb17fe3a03d9da21c4bad12a4661eccea9`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd081c9cb578475738ce8dccf5b0efc9d806f494cbb83e256cabddf27c23a`  
		Last Modified: Fri, 08 Sep 2017 18:39:08 GMT  
		Size: 14.8 MB (14817212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2cf96028c9d8e3b6ac118a125c330d0f6cce68a47a862c141099d33f93146f`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92533a2250c35576aa65b9c85c6d7dea62f930b5062a9cad40617aa911a8bb1a`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16b9504c034c7d0de945edc9e5f785f7000ffb8f009b338eac0f2b5921d53d5`  
		Last Modified: Fri, 08 Sep 2017 18:39:22 GMT  
		Size: 60.1 MB (60115988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e019c10a1433845b5d1d5f52a333885959e64fd5a9ab8a4791bbc48b47538a`  
		Last Modified: Fri, 08 Sep 2017 18:39:04 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c0f884243bf5ed68c4073ecd3ddd0a0bea8523c7491e3c8897f784deb6e499`  
		Last Modified: Fri, 08 Sep 2017 18:39:07 GMT  
		Size: 2.4 MB (2390101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93d4db47472ac565173eff302cfdcf8f7e261bba121f80ac198c69cde464310`  
		Last Modified: Fri, 08 Sep 2017 18:39:24 GMT  
		Size: 77.1 MB (77099114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc099daa3a211da00cc854babc08ecfde2940d210b3c5fedbd95965250f3c45`  
		Last Modified: Fri, 08 Sep 2017 18:39:04 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:5c906052d9905b03593ff100b7be83ea2c1dc31ec0d9c5e62d9cce640a585041
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251486966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfb5b8155ce0b00c9f77861ccaa4b39f6cb0fa6588f97f80ab0f6ec1e6254fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 02:29:48 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 02:33:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 02:33:06 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 02:33:07 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 02:33:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 02:33:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 02:33:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 02:33:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 02:33:11 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 02:56:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 02:56:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:56:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:56:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 02:56:39 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 02:56:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 02:57:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:57:19 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 02:57:19 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 02:57:19 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 08 Sep 2017 02:57:19 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 08 Sep 2017 02:57:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 03:01:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 03:01:12 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 03:01:12 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 03:01:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 03:01:12 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 03:01:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae83bfb115b97ca1927cb6d849ce9d0f2e8a201166291834fbfdfdd3912a077a`  
		Last Modified: Fri, 08 Sep 2017 02:35:57 GMT  
		Size: 35.2 MB (35183596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88920fd5440d60c166986243b66214d4d8c4b30264fb620a3d79e5b53185cb54`  
		Last Modified: Fri, 08 Sep 2017 02:35:47 GMT  
		Size: 677.1 KB (677069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa114ada7833db1046ab7a7fddb11d4e0073e94f3b338c65778e1f97a19129cd`  
		Last Modified: Fri, 08 Sep 2017 02:35:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfa260d6d0453700f284946564b80acc4d52fbeb4c551204cdbd2172773cd18`  
		Last Modified: Fri, 08 Sep 2017 03:09:18 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd1a12ee197d0047c055808936c0339fb37ff80e642018bebb71bbc4b375ed3`  
		Last Modified: Fri, 08 Sep 2017 03:09:20 GMT  
		Size: 14.7 MB (14718821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91b7962916ea447666a36351c1f9a28e55e8ecfb93d847cf17545f44a6af16c`  
		Last Modified: Fri, 08 Sep 2017 03:09:16 GMT  
		Size: 469.8 KB (469840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8623c6c8f73e033a1f73ba963a8a6ac6f0633dc6a15da2a12d1ec72abf101a0f`  
		Last Modified: Fri, 08 Sep 2017 03:09:15 GMT  
		Size: 8.6 KB (8635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd5c9d41427e36aa9990d5e17b7c71a21dae97f0c19c815c4556d31a6318c59`  
		Last Modified: Fri, 08 Sep 2017 03:09:28 GMT  
		Size: 58.1 MB (58103533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bf8006643e7f7a9feebfdfda54213cd72e7499778c00113655a912c0a37e68`  
		Last Modified: Fri, 08 Sep 2017 03:09:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8265582d6b45fc8fbb4fee2ed08e12f08467a1e8b11af8bdccb3d741486d106`  
		Last Modified: Fri, 08 Sep 2017 03:09:13 GMT  
		Size: 2.4 MB (2390602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060a70ddda62c5ad498623a2a3c72b734b3d18d2251b5780d9787048910f3931`  
		Last Modified: Fri, 08 Sep 2017 03:09:30 GMT  
		Size: 78.0 MB (77989043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885ae79eefb8481cba43ee4f2f0c6b864a7fc4ccec3f15685fc458805e45ddc7`  
		Last Modified: Fri, 08 Sep 2017 03:09:13 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:f664447aceac206f0fe6b9c1b1d4423cdb92631875760f338d49583b21d52098
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258253655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa99ea8a970e457a9e72233ca500196558c1408b2ccf485993eaf9b641340278`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:20:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:20:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 07:26:55 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 07:29:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 07:29:39 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 07:29:40 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 07:29:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 07:29:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 07:29:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:29:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 07:29:41 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 07:50:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 07:50:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:50:12 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:50:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 07:50:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 07:50:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 07:50:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:50:51 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 07:50:51 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 07:50:51 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 08 Sep 2017 07:50:51 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 08 Sep 2017 07:50:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 07:53:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:53:19 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 07:53:19 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 07:53:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:53:20 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 07:53:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7806079690737ed18410be149d70cc3439abe5521f16720649707abbffe2ac`  
		Last Modified: Fri, 08 Sep 2017 07:30:19 GMT  
		Size: 10.0 MB (9959664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4801eb4feb44806d3dbada1c80e2fe522b598975252c8c21a80d3aa8213ff0c3`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb2782d0951cc5fda5902bce6f9d26b6f20760b9f2bf9f689d13a28d879b4cd`  
		Last Modified: Fri, 08 Sep 2017 07:31:17 GMT  
		Size: 37.8 MB (37817597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6788612f913e71256c3f7874e884f26821e1bb73707146fc42cb5f2e1b9910`  
		Last Modified: Fri, 08 Sep 2017 07:31:07 GMT  
		Size: 677.0 KB (677043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2541bfaba3d00ee63606919cd50a6f97f2ef4b50dadeb250f96be70c02f3c8`  
		Last Modified: Fri, 08 Sep 2017 07:31:08 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50320d755447597fcc899e533a55cf086e14e73250b66fb5d0ae9924dd554aa6`  
		Last Modified: Fri, 08 Sep 2017 07:59:00 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aceb70dc7f3fe3fb52ade5a9367fb00e6095b88be80bc2467cfe7e63b34d8295`  
		Last Modified: Fri, 08 Sep 2017 07:59:03 GMT  
		Size: 14.8 MB (14814977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c34b9312fcbbd70527ada3034d454899ba484cdcdf2ca66a5eee2684990291`  
		Last Modified: Fri, 08 Sep 2017 07:58:59 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d80e6a9933f710f1757083cf6f5a2c7dc1ec619fba722efc9898ee12d0f73d9`  
		Last Modified: Fri, 08 Sep 2017 07:58:59 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32b19886b8e0d29474117ec714e9fcbb6c0e21dd15c34f7aa6a54903b0ac28e`  
		Last Modified: Fri, 08 Sep 2017 07:59:10 GMT  
		Size: 59.1 MB (59090489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf6ecb24f72366add5c6a9e7c66878e56824010b4a5ce7abe2202156ea1cb9a`  
		Last Modified: Fri, 08 Sep 2017 07:58:57 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc53014ae5b5ca04b1ff4a98db209d8a4b88b49bb206b55dcaa9feb886002b7`  
		Last Modified: Fri, 08 Sep 2017 07:58:58 GMT  
		Size: 2.4 MB (2390309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135b91abbb16b54e44ebd6312e95aa33186892f1ddd5db3db3f0b03917557b08`  
		Last Modified: Fri, 08 Sep 2017 07:59:11 GMT  
		Size: 80.2 MB (80215020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec33a8f6b66c348ece2ae3a51e06e565bc45e110c134d73991ad0f0d55fb57e`  
		Last Modified: Fri, 08 Sep 2017 07:58:57 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4-passenger`

```console
$ docker pull redmine@sha256:3d85fa4f1dd2743dcf5f99e18ce91990163f9860dd09cebb8c59836a4ffbb9e2
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270169375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1fecf4c3be7b0ab40d1c355d019efc8e9b42572ef124116584b0bf24a0fc7e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:56:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:56:35 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:56:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:56:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:56:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:56:39 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:44:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:44:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:20 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:44:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:44:23 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:44:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:44:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:56 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:44:56 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:44:56 GMT
ENV REDMINE_VERSION=3.3.4
# Mon, 11 Sep 2017 17:44:56 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Mon, 11 Sep 2017 17:45:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:47:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:47:14 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:47:14 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:47:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:47:15 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:47:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 11 Sep 2017 17:47:22 GMT
ENV PASSENGER_VERSION=5.1.8
# Mon, 11 Sep 2017 17:47:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:47:47 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 11 Sep 2017 17:47:47 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd23c1a1477e62628e2db3b59168f65b4f63b8f02e282b15f3b3aa60d850ccd`  
		Last Modified: Mon, 11 Sep 2017 15:00:55 GMT  
		Size: 33.9 MB (33916006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82977a3057dd651766f0d236ed4397e0a55f556a7919e9da4e44f58e2afa1013`  
		Last Modified: Mon, 11 Sep 2017 15:00:45 GMT  
		Size: 675.3 KB (675302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173b2ed5254752c314a0727439a434c074ac1329bd44c32b707b3f466da99233`  
		Last Modified: Mon, 11 Sep 2017 15:00:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9eb114932413e6785c9bd262baab48c429ed1e480c7e9663c1d4db6e43a9b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cd78c17c13500b79d71736d5e2541ef6e16521b14406ea27ad964e73f327c2`  
		Last Modified: Mon, 11 Sep 2017 18:05:02 GMT  
		Size: 14.4 MB (14422213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dd1f5182fe6d57f3caf772d8222f198133612f3e0cad89a1ccbeb79410b5b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c80e7730cda1a016898866936d47c81485fcab4718397dd10c7f2b9601f843`  
		Last Modified: Mon, 11 Sep 2017 18:04:55 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb172d1c21633d530f9e52838c99ad862bbc3ac95d5f5d3d082d2eb540d9212`  
		Last Modified: Mon, 11 Sep 2017 18:05:13 GMT  
		Size: 59.2 MB (59237779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d4c6d7ebf0cfc8bc79afb4234e8ab575ccff2289b4fbeb756290acd918eb14`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672140c75ebe4275ba278af102b9c731d38149972e09e2aa2a6fac783412970e`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.4 MB (2390089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b742b494879b4814bb40bb8653457651e0d574c827adcf5714ed95874ae4c`  
		Last Modified: Mon, 11 Sep 2017 18:05:14 GMT  
		Size: 77.4 MB (77378864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6bebd94a1d4b264e91c8e772f45f6c359673cea903d649a553f8772ba009c8`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27d0ba76895a1619b84d1c1208735db6ebf9ee32745e5eccd2c8d3157a8b8ac`  
		Last Modified: Mon, 11 Sep 2017 18:05:52 GMT  
		Size: 14.6 MB (14605225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5bcad93fe9160763cc03a191c08b259284f2591603dd18f77e015e4fbe1bcc3`  
		Last Modified: Mon, 11 Sep 2017 18:05:45 GMT  
		Size: 4.3 MB (4273916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:3d85fa4f1dd2743dcf5f99e18ce91990163f9860dd09cebb8c59836a4ffbb9e2
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270169375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1fecf4c3be7b0ab40d1c355d019efc8e9b42572ef124116584b0bf24a0fc7e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:56:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:56:35 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:56:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:56:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:56:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:56:39 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:44:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:44:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:20 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:44:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:44:23 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:44:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:44:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:56 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:44:56 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:44:56 GMT
ENV REDMINE_VERSION=3.3.4
# Mon, 11 Sep 2017 17:44:56 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Mon, 11 Sep 2017 17:45:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:47:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:47:14 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:47:14 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:47:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:47:15 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:47:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 11 Sep 2017 17:47:22 GMT
ENV PASSENGER_VERSION=5.1.8
# Mon, 11 Sep 2017 17:47:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:47:47 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 11 Sep 2017 17:47:47 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd23c1a1477e62628e2db3b59168f65b4f63b8f02e282b15f3b3aa60d850ccd`  
		Last Modified: Mon, 11 Sep 2017 15:00:55 GMT  
		Size: 33.9 MB (33916006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82977a3057dd651766f0d236ed4397e0a55f556a7919e9da4e44f58e2afa1013`  
		Last Modified: Mon, 11 Sep 2017 15:00:45 GMT  
		Size: 675.3 KB (675302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173b2ed5254752c314a0727439a434c074ac1329bd44c32b707b3f466da99233`  
		Last Modified: Mon, 11 Sep 2017 15:00:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9eb114932413e6785c9bd262baab48c429ed1e480c7e9663c1d4db6e43a9b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cd78c17c13500b79d71736d5e2541ef6e16521b14406ea27ad964e73f327c2`  
		Last Modified: Mon, 11 Sep 2017 18:05:02 GMT  
		Size: 14.4 MB (14422213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dd1f5182fe6d57f3caf772d8222f198133612f3e0cad89a1ccbeb79410b5b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c80e7730cda1a016898866936d47c81485fcab4718397dd10c7f2b9601f843`  
		Last Modified: Mon, 11 Sep 2017 18:04:55 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb172d1c21633d530f9e52838c99ad862bbc3ac95d5f5d3d082d2eb540d9212`  
		Last Modified: Mon, 11 Sep 2017 18:05:13 GMT  
		Size: 59.2 MB (59237779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d4c6d7ebf0cfc8bc79afb4234e8ab575ccff2289b4fbeb756290acd918eb14`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672140c75ebe4275ba278af102b9c731d38149972e09e2aa2a6fac783412970e`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.4 MB (2390089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b742b494879b4814bb40bb8653457651e0d574c827adcf5714ed95874ae4c`  
		Last Modified: Mon, 11 Sep 2017 18:05:14 GMT  
		Size: 77.4 MB (77378864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6bebd94a1d4b264e91c8e772f45f6c359673cea903d649a553f8772ba009c8`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27d0ba76895a1619b84d1c1208735db6ebf9ee32745e5eccd2c8d3157a8b8ac`  
		Last Modified: Mon, 11 Sep 2017 18:05:52 GMT  
		Size: 14.6 MB (14605225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5bcad93fe9160763cc03a191c08b259284f2591603dd18f77e015e4fbe1bcc3`  
		Last Modified: Mon, 11 Sep 2017 18:05:45 GMT  
		Size: 4.3 MB (4273916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7`

```console
$ docker pull redmine@sha256:32f25a81cde3839a68f3967a3bb42813d15e56300336009a131ea2d24316b661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.2.7` - linux; amd64

```console
$ docker pull redmine@sha256:6b121ccb54f6bf0570f4cd50cbb89532dda72d8a1b59f00666068329afd27405
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251247904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c57e90a1676fd809adbdc6400b277ee63b623e115136fab906e60b65da03d855`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:56:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:56:35 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:56:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:56:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:56:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:56:39 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:44:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:44:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:20 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:44:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:44:23 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:44:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:44:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:56 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:44:56 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:47:54 GMT
ENV REDMINE_VERSION=3.2.7
# Mon, 11 Sep 2017 17:47:54 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Mon, 11 Sep 2017 17:47:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:50:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:50:15 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:50:15 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:50:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:50:16 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:50:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd23c1a1477e62628e2db3b59168f65b4f63b8f02e282b15f3b3aa60d850ccd`  
		Last Modified: Mon, 11 Sep 2017 15:00:55 GMT  
		Size: 33.9 MB (33916006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82977a3057dd651766f0d236ed4397e0a55f556a7919e9da4e44f58e2afa1013`  
		Last Modified: Mon, 11 Sep 2017 15:00:45 GMT  
		Size: 675.3 KB (675302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173b2ed5254752c314a0727439a434c074ac1329bd44c32b707b3f466da99233`  
		Last Modified: Mon, 11 Sep 2017 15:00:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9eb114932413e6785c9bd262baab48c429ed1e480c7e9663c1d4db6e43a9b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cd78c17c13500b79d71736d5e2541ef6e16521b14406ea27ad964e73f327c2`  
		Last Modified: Mon, 11 Sep 2017 18:05:02 GMT  
		Size: 14.4 MB (14422213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dd1f5182fe6d57f3caf772d8222f198133612f3e0cad89a1ccbeb79410b5b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c80e7730cda1a016898866936d47c81485fcab4718397dd10c7f2b9601f843`  
		Last Modified: Mon, 11 Sep 2017 18:04:55 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb172d1c21633d530f9e52838c99ad862bbc3ac95d5f5d3d082d2eb540d9212`  
		Last Modified: Mon, 11 Sep 2017 18:05:13 GMT  
		Size: 59.2 MB (59237779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d4c6d7ebf0cfc8bc79afb4234e8ab575ccff2289b4fbeb756290acd918eb14`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6a712157ab9fdc0d61c7cc00d8702149a66dbdd25af5f815dc903bc7c670`  
		Last Modified: Mon, 11 Sep 2017 18:06:22 GMT  
		Size: 2.3 MB (2346954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f36d0be6cff81dc0f526b5aceb56c730161e8af9b0d3a42f9303e3a74718541`  
		Last Modified: Mon, 11 Sep 2017 18:06:37 GMT  
		Size: 77.4 MB (77379668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a4426154322fc4cc21faa161c8e1a7f453b439cc7f462dbe397d5756de1957`  
		Last Modified: Mon, 11 Sep 2017 18:06:20 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:9d5a76877e41b1dafd0e5f8229a08f9a801b3d78e3fbec143544718ceb018a3e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244336297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc033e67321321e522a1d67c5262b1e42c59fe1a0a952a04efb603cc7659fdea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 02:04:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 09 Sep 2017 02:04:39 GMT
ENV RUBY_VERSION=2.2.7
# Sat, 09 Sep 2017 02:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Sat, 09 Sep 2017 02:04:40 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Sat, 09 Sep 2017 02:17:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 09 Sep 2017 02:17:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Sat, 09 Sep 2017 02:17:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 09 Sep 2017 02:17:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 09 Sep 2017 02:17:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 09 Sep 2017 02:17:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 02:17:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 09 Sep 2017 02:17:43 GMT
CMD ["irb"]
# Sat, 09 Sep 2017 04:58:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 09 Sep 2017 04:58:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:58:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 04:58:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Sep 2017 04:58:49 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 09 Sep 2017 04:58:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 09 Sep 2017 05:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 05:01:22 GMT
ENV RAILS_ENV=production
# Sat, 09 Sep 2017 05:01:23 GMT
WORKDIR /usr/src/redmine
# Sat, 09 Sep 2017 05:12:05 GMT
ENV REDMINE_VERSION=3.2.7
# Sat, 09 Sep 2017 05:12:05 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Sat, 09 Sep 2017 05:12:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 09 Sep 2017 05:22:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 05:22:14 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 09 Sep 2017 05:22:15 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Sat, 09 Sep 2017 05:22:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 09 Sep 2017 05:22:16 GMT
EXPOSE 3000/tcp
# Sat, 09 Sep 2017 05:22:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac6fa4e2333381e30e5bee4bf3f84be997e6a91c454f51aea3f89ef973ca289`  
		Last Modified: Sat, 09 Sep 2017 02:21:27 GMT  
		Size: 34.3 MB (34309344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceffa176ee927dc52aa7cd8b500a6efeef4eb7933650605e53f49dcaffc0f3fc`  
		Last Modified: Sat, 09 Sep 2017 02:21:11 GMT  
		Size: 677.1 KB (677060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca06a25c81a34b9288346a8ed3bf4504ef66d937f9b88fa7b6f57f964d78522`  
		Last Modified: Sat, 09 Sep 2017 02:21:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc9f4ec5a51b4e42012d7be86d701d2bf13d5303e1bb8fe2bc2fd35a91c5b0e`  
		Last Modified: Sat, 09 Sep 2017 05:34:24 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21222c122f8aef829e1f619c8b59f4c2cbf3f07a4f0cab9bc549b442317ee79`  
		Last Modified: Sat, 09 Sep 2017 05:34:27 GMT  
		Size: 14.5 MB (14462940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9997a4469fc22cc5e2420b0bd3d6c5799902a236888ff31fc25444fc4b00ecdd`  
		Last Modified: Sat, 09 Sep 2017 05:34:21 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186aba3d07b6bd06dcb4d015f9345d4de94a607cdd6c500dac97776e2626353`  
		Last Modified: Sat, 09 Sep 2017 05:34:21 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4115311d74b5be5138b8459550608ba672c872b05d344fd592ba9829803205ae`  
		Last Modified: Sat, 09 Sep 2017 05:34:39 GMT  
		Size: 55.8 MB (55773253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5025c2d2cb0942345c863d815aac2387a5de923de926cbdad9bb1bd2494da2dd`  
		Last Modified: Sat, 09 Sep 2017 05:34:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60048d0f5660a0e0625bb628b0da309f3f803cf70c409df9632eb8c9754ac667`  
		Last Modified: Sat, 09 Sep 2017 05:35:03 GMT  
		Size: 2.3 MB (2347107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cc0098c952be375de536b9715f84b40ff8508804ba1a6bdf7e04a311a821f0`  
		Last Modified: Sat, 09 Sep 2017 05:35:24 GMT  
		Size: 77.0 MB (77023672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869dfaf636949105361ff56a365b0553c7ddcb079e2cb6213ce6f389421fc307`  
		Last Modified: Sat, 09 Sep 2017 05:35:02 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; 386

```console
$ docker pull redmine@sha256:3fd4bcc597b8adb88e32b666ae779a12ddbbb56e97b23b35758abbd1c1446ee6
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254600077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13579527825a1366b46918a550e82557b0c0cbdf3dc340be77c968641ff8d622`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:29:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:29:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 17:38:08 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 17:43:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 17:43:07 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 17:43:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 17:43:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 17:43:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 17:43:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:43:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 17:43:11 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 18:18:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 18:18:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:18:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:18:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:18:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 18:18:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 18:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:19:41 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 18:19:42 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 18:24:37 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 08 Sep 2017 18:24:37 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 08 Sep 2017 18:24:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 18:27:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 18:30:01 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 18:30:01 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 18:30:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:30:02 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 18:30:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c17b08c3dfc503b71e3ce2bb63b38c8554fb5bfa8645c3ac17b033c1c024792`  
		Last Modified: Fri, 08 Sep 2017 17:48:46 GMT  
		Size: 14.6 MB (14626939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18227dba261327339ab7f00b157f9d2d57e44b4bd0137e2e3435ebc28d033d3b`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696720f14ba576eebf161a33355f1817f6625a3b11d319a145c989b2b8945c4`  
		Last Modified: Fri, 08 Sep 2017 17:50:31 GMT  
		Size: 31.7 MB (31652913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbd823c72d4f6ecc76094ec09f2890e1e6ef44d0bd842c387ebbc73f7349738`  
		Last Modified: Fri, 08 Sep 2017 17:50:22 GMT  
		Size: 675.3 KB (675346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5dcc7d9a17fe043d13fe7add8e828eb7de1a2cc06e248ea5ba384dca02b1ec6`  
		Last Modified: Fri, 08 Sep 2017 17:50:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c370d25c0a1bd6aa315752022630bb17fe3a03d9da21c4bad12a4661eccea9`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd081c9cb578475738ce8dccf5b0efc9d806f494cbb83e256cabddf27c23a`  
		Last Modified: Fri, 08 Sep 2017 18:39:08 GMT  
		Size: 14.8 MB (14817212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2cf96028c9d8e3b6ac118a125c330d0f6cce68a47a862c141099d33f93146f`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92533a2250c35576aa65b9c85c6d7dea62f930b5062a9cad40617aa911a8bb1a`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16b9504c034c7d0de945edc9e5f785f7000ffb8f009b338eac0f2b5921d53d5`  
		Last Modified: Fri, 08 Sep 2017 18:39:22 GMT  
		Size: 60.1 MB (60115988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e019c10a1433845b5d1d5f52a333885959e64fd5a9ab8a4791bbc48b47538a`  
		Last Modified: Fri, 08 Sep 2017 18:39:04 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9ebc748ddab315114b3a2e310d13d077ca1deabeb144d3dec7d3939245c7ae`  
		Last Modified: Fri, 08 Sep 2017 18:40:07 GMT  
		Size: 2.3 MB (2346955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095f6376fbcd5718df606f5cbcd9be5d285fb6f1db632bca3a485cf98da325f8`  
		Last Modified: Fri, 08 Sep 2017 18:40:18 GMT  
		Size: 77.1 MB (77098169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba3514d19d7254fa31b6bc241c0514a10b02864ed95b30cf62cdfd13ea91f14`  
		Last Modified: Fri, 08 Sep 2017 18:40:02 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; ppc64le

```console
$ docker pull redmine@sha256:f291c96c8e55caafe17ce21da4117eef372f48dba7f88cf5144a196aaa50e551
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.4 MB (251444559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ff0e4fbaf9135c6670ad2d56040d4c9f0837958d7faabfc72d1fb5e93fbf8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 02:29:48 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 02:33:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 02:33:06 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 02:33:07 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 02:33:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 02:33:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 02:33:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 02:33:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 02:33:11 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 02:56:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 02:56:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:56:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:56:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 02:56:39 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 02:56:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 02:57:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:57:19 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 02:57:19 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 03:01:16 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 08 Sep 2017 03:01:16 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 08 Sep 2017 03:01:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 03:04:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 03:04:33 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 03:04:34 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 03:04:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 03:04:34 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 03:04:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae83bfb115b97ca1927cb6d849ce9d0f2e8a201166291834fbfdfdd3912a077a`  
		Last Modified: Fri, 08 Sep 2017 02:35:57 GMT  
		Size: 35.2 MB (35183596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88920fd5440d60c166986243b66214d4d8c4b30264fb620a3d79e5b53185cb54`  
		Last Modified: Fri, 08 Sep 2017 02:35:47 GMT  
		Size: 677.1 KB (677069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa114ada7833db1046ab7a7fddb11d4e0073e94f3b338c65778e1f97a19129cd`  
		Last Modified: Fri, 08 Sep 2017 02:35:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfa260d6d0453700f284946564b80acc4d52fbeb4c551204cdbd2172773cd18`  
		Last Modified: Fri, 08 Sep 2017 03:09:18 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd1a12ee197d0047c055808936c0339fb37ff80e642018bebb71bbc4b375ed3`  
		Last Modified: Fri, 08 Sep 2017 03:09:20 GMT  
		Size: 14.7 MB (14718821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91b7962916ea447666a36351c1f9a28e55e8ecfb93d847cf17545f44a6af16c`  
		Last Modified: Fri, 08 Sep 2017 03:09:16 GMT  
		Size: 469.8 KB (469840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8623c6c8f73e033a1f73ba963a8a6ac6f0633dc6a15da2a12d1ec72abf101a0f`  
		Last Modified: Fri, 08 Sep 2017 03:09:15 GMT  
		Size: 8.6 KB (8635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd5c9d41427e36aa9990d5e17b7c71a21dae97f0c19c815c4556d31a6318c59`  
		Last Modified: Fri, 08 Sep 2017 03:09:28 GMT  
		Size: 58.1 MB (58103533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bf8006643e7f7a9feebfdfda54213cd72e7499778c00113655a912c0a37e68`  
		Last Modified: Fri, 08 Sep 2017 03:09:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2123ea046bf5f10320cc795d3383a29c6af35c275efab3067f7518385b5a87`  
		Last Modified: Fri, 08 Sep 2017 03:09:50 GMT  
		Size: 2.3 MB (2347476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b2d5b006f739cda5bf578c8b8f483bc035618209c6eae4632d988fc2e97759`  
		Last Modified: Fri, 08 Sep 2017 03:10:05 GMT  
		Size: 78.0 MB (77989762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64dc1a54b71a89fa914a88b3150e52fb9a7ed6ab5470de1cc12a9c9be737e1e`  
		Last Modified: Fri, 08 Sep 2017 03:09:49 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; s390x

```console
$ docker pull redmine@sha256:3c4bb5467a028fe00faa7d912495f461c352a3a65c4dbffc6d337e66b820ae9b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.2 MB (258210232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fd7d1450add59fb537a0484733c52370d1cf12d048b4b8b9e8c17dc7bfb6600`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:20:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:20:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 07:26:55 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 07:29:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 07:29:39 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 07:29:40 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 07:29:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 07:29:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 07:29:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:29:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 07:29:41 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 07:50:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 07:50:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:50:12 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:50:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 07:50:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 07:50:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 07:50:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:50:51 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 07:50:51 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 07:53:22 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 08 Sep 2017 07:53:22 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 08 Sep 2017 07:53:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 07:55:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:55:45 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 07:55:45 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 07:55:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:55:46 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 07:55:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7806079690737ed18410be149d70cc3439abe5521f16720649707abbffe2ac`  
		Last Modified: Fri, 08 Sep 2017 07:30:19 GMT  
		Size: 10.0 MB (9959664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4801eb4feb44806d3dbada1c80e2fe522b598975252c8c21a80d3aa8213ff0c3`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb2782d0951cc5fda5902bce6f9d26b6f20760b9f2bf9f689d13a28d879b4cd`  
		Last Modified: Fri, 08 Sep 2017 07:31:17 GMT  
		Size: 37.8 MB (37817597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6788612f913e71256c3f7874e884f26821e1bb73707146fc42cb5f2e1b9910`  
		Last Modified: Fri, 08 Sep 2017 07:31:07 GMT  
		Size: 677.0 KB (677043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2541bfaba3d00ee63606919cd50a6f97f2ef4b50dadeb250f96be70c02f3c8`  
		Last Modified: Fri, 08 Sep 2017 07:31:08 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50320d755447597fcc899e533a55cf086e14e73250b66fb5d0ae9924dd554aa6`  
		Last Modified: Fri, 08 Sep 2017 07:59:00 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aceb70dc7f3fe3fb52ade5a9367fb00e6095b88be80bc2467cfe7e63b34d8295`  
		Last Modified: Fri, 08 Sep 2017 07:59:03 GMT  
		Size: 14.8 MB (14814977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c34b9312fcbbd70527ada3034d454899ba484cdcdf2ca66a5eee2684990291`  
		Last Modified: Fri, 08 Sep 2017 07:58:59 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d80e6a9933f710f1757083cf6f5a2c7dc1ec619fba722efc9898ee12d0f73d9`  
		Last Modified: Fri, 08 Sep 2017 07:58:59 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32b19886b8e0d29474117ec714e9fcbb6c0e21dd15c34f7aa6a54903b0ac28e`  
		Last Modified: Fri, 08 Sep 2017 07:59:10 GMT  
		Size: 59.1 MB (59090489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf6ecb24f72366add5c6a9e7c66878e56824010b4a5ce7abe2202156ea1cb9a`  
		Last Modified: Fri, 08 Sep 2017 07:58:57 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb40908d9ed66cc2744f66a4c7af3ff02ff9a36dddfb7d601c7e3e3a4e1712c`  
		Last Modified: Fri, 08 Sep 2017 07:59:19 GMT  
		Size: 2.3 MB (2347109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6257b2e466159f598e392f225d1223d5f39cc80a107f83665398d5ac4532a02`  
		Last Modified: Fri, 08 Sep 2017 07:59:31 GMT  
		Size: 80.2 MB (80214797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32215a2922403f9bfee1b0a68ad502f08cedd9fd1739eb961e1977cafc744d91`  
		Last Modified: Fri, 08 Sep 2017 07:59:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:32f25a81cde3839a68f3967a3bb42813d15e56300336009a131ea2d24316b661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.2` - linux; amd64

```console
$ docker pull redmine@sha256:6b121ccb54f6bf0570f4cd50cbb89532dda72d8a1b59f00666068329afd27405
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251247904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c57e90a1676fd809adbdc6400b277ee63b623e115136fab906e60b65da03d855`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:56:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:56:35 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:56:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:56:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:56:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:56:39 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:44:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:44:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:20 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:44:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:44:23 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:44:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:44:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:56 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:44:56 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:47:54 GMT
ENV REDMINE_VERSION=3.2.7
# Mon, 11 Sep 2017 17:47:54 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Mon, 11 Sep 2017 17:47:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:50:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:50:15 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:50:15 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:50:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:50:16 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:50:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd23c1a1477e62628e2db3b59168f65b4f63b8f02e282b15f3b3aa60d850ccd`  
		Last Modified: Mon, 11 Sep 2017 15:00:55 GMT  
		Size: 33.9 MB (33916006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82977a3057dd651766f0d236ed4397e0a55f556a7919e9da4e44f58e2afa1013`  
		Last Modified: Mon, 11 Sep 2017 15:00:45 GMT  
		Size: 675.3 KB (675302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173b2ed5254752c314a0727439a434c074ac1329bd44c32b707b3f466da99233`  
		Last Modified: Mon, 11 Sep 2017 15:00:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9eb114932413e6785c9bd262baab48c429ed1e480c7e9663c1d4db6e43a9b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cd78c17c13500b79d71736d5e2541ef6e16521b14406ea27ad964e73f327c2`  
		Last Modified: Mon, 11 Sep 2017 18:05:02 GMT  
		Size: 14.4 MB (14422213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dd1f5182fe6d57f3caf772d8222f198133612f3e0cad89a1ccbeb79410b5b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c80e7730cda1a016898866936d47c81485fcab4718397dd10c7f2b9601f843`  
		Last Modified: Mon, 11 Sep 2017 18:04:55 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb172d1c21633d530f9e52838c99ad862bbc3ac95d5f5d3d082d2eb540d9212`  
		Last Modified: Mon, 11 Sep 2017 18:05:13 GMT  
		Size: 59.2 MB (59237779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d4c6d7ebf0cfc8bc79afb4234e8ab575ccff2289b4fbeb756290acd918eb14`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6a712157ab9fdc0d61c7cc00d8702149a66dbdd25af5f815dc903bc7c670`  
		Last Modified: Mon, 11 Sep 2017 18:06:22 GMT  
		Size: 2.3 MB (2346954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f36d0be6cff81dc0f526b5aceb56c730161e8af9b0d3a42f9303e3a74718541`  
		Last Modified: Mon, 11 Sep 2017 18:06:37 GMT  
		Size: 77.4 MB (77379668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a4426154322fc4cc21faa161c8e1a7f453b439cc7f462dbe397d5756de1957`  
		Last Modified: Mon, 11 Sep 2017 18:06:20 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:9d5a76877e41b1dafd0e5f8229a08f9a801b3d78e3fbec143544718ceb018a3e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244336297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc033e67321321e522a1d67c5262b1e42c59fe1a0a952a04efb603cc7659fdea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 02:04:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 09 Sep 2017 02:04:39 GMT
ENV RUBY_VERSION=2.2.7
# Sat, 09 Sep 2017 02:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Sat, 09 Sep 2017 02:04:40 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Sat, 09 Sep 2017 02:17:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 09 Sep 2017 02:17:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Sat, 09 Sep 2017 02:17:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 09 Sep 2017 02:17:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 09 Sep 2017 02:17:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 09 Sep 2017 02:17:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 02:17:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 09 Sep 2017 02:17:43 GMT
CMD ["irb"]
# Sat, 09 Sep 2017 04:58:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 09 Sep 2017 04:58:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:58:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 04:58:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Sep 2017 04:58:49 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 09 Sep 2017 04:58:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 09 Sep 2017 05:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 05:01:22 GMT
ENV RAILS_ENV=production
# Sat, 09 Sep 2017 05:01:23 GMT
WORKDIR /usr/src/redmine
# Sat, 09 Sep 2017 05:12:05 GMT
ENV REDMINE_VERSION=3.2.7
# Sat, 09 Sep 2017 05:12:05 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Sat, 09 Sep 2017 05:12:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 09 Sep 2017 05:22:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 05:22:14 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 09 Sep 2017 05:22:15 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Sat, 09 Sep 2017 05:22:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 09 Sep 2017 05:22:16 GMT
EXPOSE 3000/tcp
# Sat, 09 Sep 2017 05:22:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac6fa4e2333381e30e5bee4bf3f84be997e6a91c454f51aea3f89ef973ca289`  
		Last Modified: Sat, 09 Sep 2017 02:21:27 GMT  
		Size: 34.3 MB (34309344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceffa176ee927dc52aa7cd8b500a6efeef4eb7933650605e53f49dcaffc0f3fc`  
		Last Modified: Sat, 09 Sep 2017 02:21:11 GMT  
		Size: 677.1 KB (677060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca06a25c81a34b9288346a8ed3bf4504ef66d937f9b88fa7b6f57f964d78522`  
		Last Modified: Sat, 09 Sep 2017 02:21:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc9f4ec5a51b4e42012d7be86d701d2bf13d5303e1bb8fe2bc2fd35a91c5b0e`  
		Last Modified: Sat, 09 Sep 2017 05:34:24 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21222c122f8aef829e1f619c8b59f4c2cbf3f07a4f0cab9bc549b442317ee79`  
		Last Modified: Sat, 09 Sep 2017 05:34:27 GMT  
		Size: 14.5 MB (14462940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9997a4469fc22cc5e2420b0bd3d6c5799902a236888ff31fc25444fc4b00ecdd`  
		Last Modified: Sat, 09 Sep 2017 05:34:21 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186aba3d07b6bd06dcb4d015f9345d4de94a607cdd6c500dac97776e2626353`  
		Last Modified: Sat, 09 Sep 2017 05:34:21 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4115311d74b5be5138b8459550608ba672c872b05d344fd592ba9829803205ae`  
		Last Modified: Sat, 09 Sep 2017 05:34:39 GMT  
		Size: 55.8 MB (55773253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5025c2d2cb0942345c863d815aac2387a5de923de926cbdad9bb1bd2494da2dd`  
		Last Modified: Sat, 09 Sep 2017 05:34:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60048d0f5660a0e0625bb628b0da309f3f803cf70c409df9632eb8c9754ac667`  
		Last Modified: Sat, 09 Sep 2017 05:35:03 GMT  
		Size: 2.3 MB (2347107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cc0098c952be375de536b9715f84b40ff8508804ba1a6bdf7e04a311a821f0`  
		Last Modified: Sat, 09 Sep 2017 05:35:24 GMT  
		Size: 77.0 MB (77023672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869dfaf636949105361ff56a365b0553c7ddcb079e2cb6213ce6f389421fc307`  
		Last Modified: Sat, 09 Sep 2017 05:35:02 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; 386

```console
$ docker pull redmine@sha256:3fd4bcc597b8adb88e32b666ae779a12ddbbb56e97b23b35758abbd1c1446ee6
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254600077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13579527825a1366b46918a550e82557b0c0cbdf3dc340be77c968641ff8d622`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:29:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:29:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 17:38:08 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 17:43:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 17:43:07 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 17:43:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 17:43:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 17:43:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 17:43:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:43:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 17:43:11 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 18:18:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 18:18:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:18:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:18:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:18:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 18:18:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 18:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:19:41 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 18:19:42 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 18:24:37 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 08 Sep 2017 18:24:37 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 08 Sep 2017 18:24:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 18:27:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 18:30:01 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 18:30:01 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 18:30:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:30:02 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 18:30:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c17b08c3dfc503b71e3ce2bb63b38c8554fb5bfa8645c3ac17b033c1c024792`  
		Last Modified: Fri, 08 Sep 2017 17:48:46 GMT  
		Size: 14.6 MB (14626939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18227dba261327339ab7f00b157f9d2d57e44b4bd0137e2e3435ebc28d033d3b`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696720f14ba576eebf161a33355f1817f6625a3b11d319a145c989b2b8945c4`  
		Last Modified: Fri, 08 Sep 2017 17:50:31 GMT  
		Size: 31.7 MB (31652913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbd823c72d4f6ecc76094ec09f2890e1e6ef44d0bd842c387ebbc73f7349738`  
		Last Modified: Fri, 08 Sep 2017 17:50:22 GMT  
		Size: 675.3 KB (675346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5dcc7d9a17fe043d13fe7add8e828eb7de1a2cc06e248ea5ba384dca02b1ec6`  
		Last Modified: Fri, 08 Sep 2017 17:50:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c370d25c0a1bd6aa315752022630bb17fe3a03d9da21c4bad12a4661eccea9`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd081c9cb578475738ce8dccf5b0efc9d806f494cbb83e256cabddf27c23a`  
		Last Modified: Fri, 08 Sep 2017 18:39:08 GMT  
		Size: 14.8 MB (14817212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2cf96028c9d8e3b6ac118a125c330d0f6cce68a47a862c141099d33f93146f`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92533a2250c35576aa65b9c85c6d7dea62f930b5062a9cad40617aa911a8bb1a`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16b9504c034c7d0de945edc9e5f785f7000ffb8f009b338eac0f2b5921d53d5`  
		Last Modified: Fri, 08 Sep 2017 18:39:22 GMT  
		Size: 60.1 MB (60115988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e019c10a1433845b5d1d5f52a333885959e64fd5a9ab8a4791bbc48b47538a`  
		Last Modified: Fri, 08 Sep 2017 18:39:04 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9ebc748ddab315114b3a2e310d13d077ca1deabeb144d3dec7d3939245c7ae`  
		Last Modified: Fri, 08 Sep 2017 18:40:07 GMT  
		Size: 2.3 MB (2346955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095f6376fbcd5718df606f5cbcd9be5d285fb6f1db632bca3a485cf98da325f8`  
		Last Modified: Fri, 08 Sep 2017 18:40:18 GMT  
		Size: 77.1 MB (77098169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba3514d19d7254fa31b6bc241c0514a10b02864ed95b30cf62cdfd13ea91f14`  
		Last Modified: Fri, 08 Sep 2017 18:40:02 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:f291c96c8e55caafe17ce21da4117eef372f48dba7f88cf5144a196aaa50e551
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.4 MB (251444559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ff0e4fbaf9135c6670ad2d56040d4c9f0837958d7faabfc72d1fb5e93fbf8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 02:29:48 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 02:33:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 02:33:06 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 02:33:07 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 02:33:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 02:33:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 02:33:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 02:33:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 02:33:11 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 02:56:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 02:56:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:56:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:56:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 02:56:39 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 02:56:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 02:57:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:57:19 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 02:57:19 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 03:01:16 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 08 Sep 2017 03:01:16 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 08 Sep 2017 03:01:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 03:04:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 03:04:33 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 03:04:34 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 03:04:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 03:04:34 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 03:04:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae83bfb115b97ca1927cb6d849ce9d0f2e8a201166291834fbfdfdd3912a077a`  
		Last Modified: Fri, 08 Sep 2017 02:35:57 GMT  
		Size: 35.2 MB (35183596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88920fd5440d60c166986243b66214d4d8c4b30264fb620a3d79e5b53185cb54`  
		Last Modified: Fri, 08 Sep 2017 02:35:47 GMT  
		Size: 677.1 KB (677069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa114ada7833db1046ab7a7fddb11d4e0073e94f3b338c65778e1f97a19129cd`  
		Last Modified: Fri, 08 Sep 2017 02:35:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfa260d6d0453700f284946564b80acc4d52fbeb4c551204cdbd2172773cd18`  
		Last Modified: Fri, 08 Sep 2017 03:09:18 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd1a12ee197d0047c055808936c0339fb37ff80e642018bebb71bbc4b375ed3`  
		Last Modified: Fri, 08 Sep 2017 03:09:20 GMT  
		Size: 14.7 MB (14718821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91b7962916ea447666a36351c1f9a28e55e8ecfb93d847cf17545f44a6af16c`  
		Last Modified: Fri, 08 Sep 2017 03:09:16 GMT  
		Size: 469.8 KB (469840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8623c6c8f73e033a1f73ba963a8a6ac6f0633dc6a15da2a12d1ec72abf101a0f`  
		Last Modified: Fri, 08 Sep 2017 03:09:15 GMT  
		Size: 8.6 KB (8635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd5c9d41427e36aa9990d5e17b7c71a21dae97f0c19c815c4556d31a6318c59`  
		Last Modified: Fri, 08 Sep 2017 03:09:28 GMT  
		Size: 58.1 MB (58103533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bf8006643e7f7a9feebfdfda54213cd72e7499778c00113655a912c0a37e68`  
		Last Modified: Fri, 08 Sep 2017 03:09:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2123ea046bf5f10320cc795d3383a29c6af35c275efab3067f7518385b5a87`  
		Last Modified: Fri, 08 Sep 2017 03:09:50 GMT  
		Size: 2.3 MB (2347476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b2d5b006f739cda5bf578c8b8f483bc035618209c6eae4632d988fc2e97759`  
		Last Modified: Fri, 08 Sep 2017 03:10:05 GMT  
		Size: 78.0 MB (77989762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64dc1a54b71a89fa914a88b3150e52fb9a7ed6ab5470de1cc12a9c9be737e1e`  
		Last Modified: Fri, 08 Sep 2017 03:09:49 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; s390x

```console
$ docker pull redmine@sha256:3c4bb5467a028fe00faa7d912495f461c352a3a65c4dbffc6d337e66b820ae9b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.2 MB (258210232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fd7d1450add59fb537a0484733c52370d1cf12d048b4b8b9e8c17dc7bfb6600`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:20:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:20:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 07:26:55 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 07:29:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 07:29:39 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 07:29:40 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 07:29:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 07:29:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 07:29:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:29:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 07:29:41 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 07:50:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 07:50:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:50:12 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:50:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 07:50:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 07:50:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 07:50:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:50:51 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 07:50:51 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 07:53:22 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 08 Sep 2017 07:53:22 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 08 Sep 2017 07:53:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 07:55:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:55:45 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 07:55:45 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 07:55:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:55:46 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 07:55:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7806079690737ed18410be149d70cc3439abe5521f16720649707abbffe2ac`  
		Last Modified: Fri, 08 Sep 2017 07:30:19 GMT  
		Size: 10.0 MB (9959664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4801eb4feb44806d3dbada1c80e2fe522b598975252c8c21a80d3aa8213ff0c3`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb2782d0951cc5fda5902bce6f9d26b6f20760b9f2bf9f689d13a28d879b4cd`  
		Last Modified: Fri, 08 Sep 2017 07:31:17 GMT  
		Size: 37.8 MB (37817597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6788612f913e71256c3f7874e884f26821e1bb73707146fc42cb5f2e1b9910`  
		Last Modified: Fri, 08 Sep 2017 07:31:07 GMT  
		Size: 677.0 KB (677043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2541bfaba3d00ee63606919cd50a6f97f2ef4b50dadeb250f96be70c02f3c8`  
		Last Modified: Fri, 08 Sep 2017 07:31:08 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50320d755447597fcc899e533a55cf086e14e73250b66fb5d0ae9924dd554aa6`  
		Last Modified: Fri, 08 Sep 2017 07:59:00 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aceb70dc7f3fe3fb52ade5a9367fb00e6095b88be80bc2467cfe7e63b34d8295`  
		Last Modified: Fri, 08 Sep 2017 07:59:03 GMT  
		Size: 14.8 MB (14814977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c34b9312fcbbd70527ada3034d454899ba484cdcdf2ca66a5eee2684990291`  
		Last Modified: Fri, 08 Sep 2017 07:58:59 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d80e6a9933f710f1757083cf6f5a2c7dc1ec619fba722efc9898ee12d0f73d9`  
		Last Modified: Fri, 08 Sep 2017 07:58:59 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32b19886b8e0d29474117ec714e9fcbb6c0e21dd15c34f7aa6a54903b0ac28e`  
		Last Modified: Fri, 08 Sep 2017 07:59:10 GMT  
		Size: 59.1 MB (59090489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf6ecb24f72366add5c6a9e7c66878e56824010b4a5ce7abe2202156ea1cb9a`  
		Last Modified: Fri, 08 Sep 2017 07:58:57 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb40908d9ed66cc2744f66a4c7af3ff02ff9a36dddfb7d601c7e3e3a4e1712c`  
		Last Modified: Fri, 08 Sep 2017 07:59:19 GMT  
		Size: 2.3 MB (2347109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6257b2e466159f598e392f225d1223d5f39cc80a107f83665398d5ac4532a02`  
		Last Modified: Fri, 08 Sep 2017 07:59:31 GMT  
		Size: 80.2 MB (80214797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32215a2922403f9bfee1b0a68ad502f08cedd9fd1739eb961e1977cafc744d91`  
		Last Modified: Fri, 08 Sep 2017 07:59:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7-passenger`

```console
$ docker pull redmine@sha256:308ad77548e769dec4d6abacfb21ef1f12fdf70e7dee6200b5f9ac75a29aa7a3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270126990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc27ccd1a67c17e154b95cb93109df0008f299a67bba3995f28d4b491e0d2da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:56:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:56:35 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:56:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:56:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:56:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:56:39 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:44:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:44:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:20 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:44:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:44:23 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:44:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:44:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:56 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:44:56 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:47:54 GMT
ENV REDMINE_VERSION=3.2.7
# Mon, 11 Sep 2017 17:47:54 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Mon, 11 Sep 2017 17:47:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:50:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:50:15 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:50:15 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:50:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:50:16 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:50:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 11 Sep 2017 17:50:23 GMT
ENV PASSENGER_VERSION=5.1.8
# Mon, 11 Sep 2017 17:50:47 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:50:48 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 11 Sep 2017 17:50:48 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd23c1a1477e62628e2db3b59168f65b4f63b8f02e282b15f3b3aa60d850ccd`  
		Last Modified: Mon, 11 Sep 2017 15:00:55 GMT  
		Size: 33.9 MB (33916006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82977a3057dd651766f0d236ed4397e0a55f556a7919e9da4e44f58e2afa1013`  
		Last Modified: Mon, 11 Sep 2017 15:00:45 GMT  
		Size: 675.3 KB (675302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173b2ed5254752c314a0727439a434c074ac1329bd44c32b707b3f466da99233`  
		Last Modified: Mon, 11 Sep 2017 15:00:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9eb114932413e6785c9bd262baab48c429ed1e480c7e9663c1d4db6e43a9b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cd78c17c13500b79d71736d5e2541ef6e16521b14406ea27ad964e73f327c2`  
		Last Modified: Mon, 11 Sep 2017 18:05:02 GMT  
		Size: 14.4 MB (14422213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dd1f5182fe6d57f3caf772d8222f198133612f3e0cad89a1ccbeb79410b5b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c80e7730cda1a016898866936d47c81485fcab4718397dd10c7f2b9601f843`  
		Last Modified: Mon, 11 Sep 2017 18:04:55 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb172d1c21633d530f9e52838c99ad862bbc3ac95d5f5d3d082d2eb540d9212`  
		Last Modified: Mon, 11 Sep 2017 18:05:13 GMT  
		Size: 59.2 MB (59237779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d4c6d7ebf0cfc8bc79afb4234e8ab575ccff2289b4fbeb756290acd918eb14`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6a712157ab9fdc0d61c7cc00d8702149a66dbdd25af5f815dc903bc7c670`  
		Last Modified: Mon, 11 Sep 2017 18:06:22 GMT  
		Size: 2.3 MB (2346954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f36d0be6cff81dc0f526b5aceb56c730161e8af9b0d3a42f9303e3a74718541`  
		Last Modified: Mon, 11 Sep 2017 18:06:37 GMT  
		Size: 77.4 MB (77379668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a4426154322fc4cc21faa161c8e1a7f453b439cc7f462dbe397d5756de1957`  
		Last Modified: Mon, 11 Sep 2017 18:06:20 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e0cbbe012bdcab71ca6a1bce0df0dcd10539b4f824845ff029f798d76fd437`  
		Last Modified: Mon, 11 Sep 2017 18:07:08 GMT  
		Size: 14.6 MB (14605178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5487f399cf85f0d051b1339f376d6d2a9760e7dae5dd549b66ea2f4e725a9df1`  
		Last Modified: Mon, 11 Sep 2017 18:07:04 GMT  
		Size: 4.3 MB (4273908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:308ad77548e769dec4d6abacfb21ef1f12fdf70e7dee6200b5f9ac75a29aa7a3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270126990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc27ccd1a67c17e154b95cb93109df0008f299a67bba3995f28d4b491e0d2da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:56:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:56:35 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:56:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:56:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:56:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:56:39 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:44:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:44:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:20 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:44:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:44:23 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:44:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:44:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:56 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:44:56 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:47:54 GMT
ENV REDMINE_VERSION=3.2.7
# Mon, 11 Sep 2017 17:47:54 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Mon, 11 Sep 2017 17:47:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:50:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:50:15 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:50:15 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:50:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:50:16 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:50:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 11 Sep 2017 17:50:23 GMT
ENV PASSENGER_VERSION=5.1.8
# Mon, 11 Sep 2017 17:50:47 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:50:48 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 11 Sep 2017 17:50:48 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd23c1a1477e62628e2db3b59168f65b4f63b8f02e282b15f3b3aa60d850ccd`  
		Last Modified: Mon, 11 Sep 2017 15:00:55 GMT  
		Size: 33.9 MB (33916006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82977a3057dd651766f0d236ed4397e0a55f556a7919e9da4e44f58e2afa1013`  
		Last Modified: Mon, 11 Sep 2017 15:00:45 GMT  
		Size: 675.3 KB (675302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173b2ed5254752c314a0727439a434c074ac1329bd44c32b707b3f466da99233`  
		Last Modified: Mon, 11 Sep 2017 15:00:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9eb114932413e6785c9bd262baab48c429ed1e480c7e9663c1d4db6e43a9b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cd78c17c13500b79d71736d5e2541ef6e16521b14406ea27ad964e73f327c2`  
		Last Modified: Mon, 11 Sep 2017 18:05:02 GMT  
		Size: 14.4 MB (14422213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dd1f5182fe6d57f3caf772d8222f198133612f3e0cad89a1ccbeb79410b5b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c80e7730cda1a016898866936d47c81485fcab4718397dd10c7f2b9601f843`  
		Last Modified: Mon, 11 Sep 2017 18:04:55 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb172d1c21633d530f9e52838c99ad862bbc3ac95d5f5d3d082d2eb540d9212`  
		Last Modified: Mon, 11 Sep 2017 18:05:13 GMT  
		Size: 59.2 MB (59237779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d4c6d7ebf0cfc8bc79afb4234e8ab575ccff2289b4fbeb756290acd918eb14`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6a712157ab9fdc0d61c7cc00d8702149a66dbdd25af5f815dc903bc7c670`  
		Last Modified: Mon, 11 Sep 2017 18:06:22 GMT  
		Size: 2.3 MB (2346954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f36d0be6cff81dc0f526b5aceb56c730161e8af9b0d3a42f9303e3a74718541`  
		Last Modified: Mon, 11 Sep 2017 18:06:37 GMT  
		Size: 77.4 MB (77379668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a4426154322fc4cc21faa161c8e1a7f453b439cc7f462dbe397d5756de1957`  
		Last Modified: Mon, 11 Sep 2017 18:06:20 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e0cbbe012bdcab71ca6a1bce0df0dcd10539b4f824845ff029f798d76fd437`  
		Last Modified: Mon, 11 Sep 2017 18:07:08 GMT  
		Size: 14.6 MB (14605178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5487f399cf85f0d051b1339f376d6d2a9760e7dae5dd549b66ea2f4e725a9df1`  
		Last Modified: Mon, 11 Sep 2017 18:07:04 GMT  
		Size: 4.3 MB (4273908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:1b29cbb6d22c20d7064cd72aedb81d12f2f1b636f42dc3d238b8bde1f8593180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.1.7` - linux; amd64

```console
$ docker pull redmine@sha256:4af6be8eb3b66d9e40a2d9b826cc85cc9614ce7b50ef827e56465b1466780414
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.1 MB (242124283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf36c652d412469c8328b99f8c39fa4d543c960a164cd004863c16095e77eb6f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:56:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:56:35 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:56:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:56:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:56:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:56:39 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:44:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:44:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:20 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:44:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:44:23 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:44:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:44:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:56 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:44:56 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:50:55 GMT
ENV REDMINE_VERSION=3.1.7
# Mon, 11 Sep 2017 17:50:55 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Mon, 11 Sep 2017 17:50:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:53:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:53:18 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:53:19 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:53:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:53:19 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:53:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd23c1a1477e62628e2db3b59168f65b4f63b8f02e282b15f3b3aa60d850ccd`  
		Last Modified: Mon, 11 Sep 2017 15:00:55 GMT  
		Size: 33.9 MB (33916006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82977a3057dd651766f0d236ed4397e0a55f556a7919e9da4e44f58e2afa1013`  
		Last Modified: Mon, 11 Sep 2017 15:00:45 GMT  
		Size: 675.3 KB (675302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173b2ed5254752c314a0727439a434c074ac1329bd44c32b707b3f466da99233`  
		Last Modified: Mon, 11 Sep 2017 15:00:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9eb114932413e6785c9bd262baab48c429ed1e480c7e9663c1d4db6e43a9b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cd78c17c13500b79d71736d5e2541ef6e16521b14406ea27ad964e73f327c2`  
		Last Modified: Mon, 11 Sep 2017 18:05:02 GMT  
		Size: 14.4 MB (14422213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dd1f5182fe6d57f3caf772d8222f198133612f3e0cad89a1ccbeb79410b5b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c80e7730cda1a016898866936d47c81485fcab4718397dd10c7f2b9601f843`  
		Last Modified: Mon, 11 Sep 2017 18:04:55 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb172d1c21633d530f9e52838c99ad862bbc3ac95d5f5d3d082d2eb540d9212`  
		Last Modified: Mon, 11 Sep 2017 18:05:13 GMT  
		Size: 59.2 MB (59237779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d4c6d7ebf0cfc8bc79afb4234e8ab575ccff2289b4fbeb756290acd918eb14`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850187a89e1bc7203c8ff8a38838ade9fe06b2a4c0723f89fba172e029c4476e`  
		Last Modified: Mon, 11 Sep 2017 18:07:39 GMT  
		Size: 2.3 MB (2281377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea20d968de718bc9cd6acf74c27446b4e3c625699841709f9d1d0614a27eb50`  
		Last Modified: Mon, 11 Sep 2017 18:07:56 GMT  
		Size: 68.3 MB (68321624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9854a271ea69faff4c1c5b55da9e6a52239473f8f1a64a8194eb2afde2fe6776`  
		Last Modified: Mon, 11 Sep 2017 18:07:39 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.1.7` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:219324791ef320d4fc5a90f44c741240db811c296f961a0e2931a36a74cd6149
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234840119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835382d777034c2eafe6d646883a5381e29deb46a03b1bef1d33e5092bafc38a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 02:04:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 09 Sep 2017 02:04:39 GMT
ENV RUBY_VERSION=2.2.7
# Sat, 09 Sep 2017 02:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Sat, 09 Sep 2017 02:04:40 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Sat, 09 Sep 2017 02:17:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 09 Sep 2017 02:17:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Sat, 09 Sep 2017 02:17:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 09 Sep 2017 02:17:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 09 Sep 2017 02:17:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 09 Sep 2017 02:17:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 02:17:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 09 Sep 2017 02:17:43 GMT
CMD ["irb"]
# Sat, 09 Sep 2017 04:58:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 09 Sep 2017 04:58:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:58:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 04:58:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Sep 2017 04:58:49 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 09 Sep 2017 04:58:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 09 Sep 2017 05:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 05:01:22 GMT
ENV RAILS_ENV=production
# Sat, 09 Sep 2017 05:01:23 GMT
WORKDIR /usr/src/redmine
# Sat, 09 Sep 2017 05:22:23 GMT
ENV REDMINE_VERSION=3.1.7
# Sat, 09 Sep 2017 05:22:24 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Sat, 09 Sep 2017 05:22:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 09 Sep 2017 05:32:55 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 05:32:57 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 09 Sep 2017 05:32:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Sat, 09 Sep 2017 05:32:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 09 Sep 2017 05:32:59 GMT
EXPOSE 3000/tcp
# Sat, 09 Sep 2017 05:32:59 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac6fa4e2333381e30e5bee4bf3f84be997e6a91c454f51aea3f89ef973ca289`  
		Last Modified: Sat, 09 Sep 2017 02:21:27 GMT  
		Size: 34.3 MB (34309344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceffa176ee927dc52aa7cd8b500a6efeef4eb7933650605e53f49dcaffc0f3fc`  
		Last Modified: Sat, 09 Sep 2017 02:21:11 GMT  
		Size: 677.1 KB (677060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca06a25c81a34b9288346a8ed3bf4504ef66d937f9b88fa7b6f57f964d78522`  
		Last Modified: Sat, 09 Sep 2017 02:21:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc9f4ec5a51b4e42012d7be86d701d2bf13d5303e1bb8fe2bc2fd35a91c5b0e`  
		Last Modified: Sat, 09 Sep 2017 05:34:24 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21222c122f8aef829e1f619c8b59f4c2cbf3f07a4f0cab9bc549b442317ee79`  
		Last Modified: Sat, 09 Sep 2017 05:34:27 GMT  
		Size: 14.5 MB (14462940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9997a4469fc22cc5e2420b0bd3d6c5799902a236888ff31fc25444fc4b00ecdd`  
		Last Modified: Sat, 09 Sep 2017 05:34:21 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186aba3d07b6bd06dcb4d015f9345d4de94a607cdd6c500dac97776e2626353`  
		Last Modified: Sat, 09 Sep 2017 05:34:21 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4115311d74b5be5138b8459550608ba672c872b05d344fd592ba9829803205ae`  
		Last Modified: Sat, 09 Sep 2017 05:34:39 GMT  
		Size: 55.8 MB (55773253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5025c2d2cb0942345c863d815aac2387a5de923de926cbdad9bb1bd2494da2dd`  
		Last Modified: Sat, 09 Sep 2017 05:34:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d2c0f4875ae218762b90f7d9ecbed91a90f3409f78fa50d242aa89c4869f8e`  
		Last Modified: Sat, 09 Sep 2017 05:35:48 GMT  
		Size: 2.3 MB (2281527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257cffe2eeb0baa935c58ee935d25b2fd3700480f29262dc5b0c4901aa14a61a`  
		Last Modified: Sat, 09 Sep 2017 05:36:08 GMT  
		Size: 67.6 MB (67593074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1bb1d14b1b4f626c03d85513a36c13c416a358fa1dc0edec7c262914ef24d4`  
		Last Modified: Sat, 09 Sep 2017 05:35:47 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.1.7` - linux; 386

```console
$ docker pull redmine@sha256:885496099edae794aab7837c4697db1c2e3d59d0d831458802c5a1fecf8bc006
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (245049278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50aad412d06d0a3b1f94607350f1722b7607cd5612a88b4a918969c35dcf5016`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:29:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:29:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 17:38:08 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 17:43:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 17:43:07 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 17:43:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 17:43:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 17:43:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 17:43:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:43:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 17:43:11 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 18:18:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 18:18:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:18:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:18:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:18:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 18:18:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 18:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:19:41 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 18:19:42 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 18:30:07 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 08 Sep 2017 18:30:07 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 08 Sep 2017 18:30:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 18:33:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 18:33:19 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 18:33:19 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 18:33:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:33:19 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 18:33:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c17b08c3dfc503b71e3ce2bb63b38c8554fb5bfa8645c3ac17b033c1c024792`  
		Last Modified: Fri, 08 Sep 2017 17:48:46 GMT  
		Size: 14.6 MB (14626939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18227dba261327339ab7f00b157f9d2d57e44b4bd0137e2e3435ebc28d033d3b`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696720f14ba576eebf161a33355f1817f6625a3b11d319a145c989b2b8945c4`  
		Last Modified: Fri, 08 Sep 2017 17:50:31 GMT  
		Size: 31.7 MB (31652913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbd823c72d4f6ecc76094ec09f2890e1e6ef44d0bd842c387ebbc73f7349738`  
		Last Modified: Fri, 08 Sep 2017 17:50:22 GMT  
		Size: 675.3 KB (675346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5dcc7d9a17fe043d13fe7add8e828eb7de1a2cc06e248ea5ba384dca02b1ec6`  
		Last Modified: Fri, 08 Sep 2017 17:50:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c370d25c0a1bd6aa315752022630bb17fe3a03d9da21c4bad12a4661eccea9`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd081c9cb578475738ce8dccf5b0efc9d806f494cbb83e256cabddf27c23a`  
		Last Modified: Fri, 08 Sep 2017 18:39:08 GMT  
		Size: 14.8 MB (14817212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2cf96028c9d8e3b6ac118a125c330d0f6cce68a47a862c141099d33f93146f`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92533a2250c35576aa65b9c85c6d7dea62f930b5062a9cad40617aa911a8bb1a`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16b9504c034c7d0de945edc9e5f785f7000ffb8f009b338eac0f2b5921d53d5`  
		Last Modified: Fri, 08 Sep 2017 18:39:22 GMT  
		Size: 60.1 MB (60115988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e019c10a1433845b5d1d5f52a333885959e64fd5a9ab8a4791bbc48b47538a`  
		Last Modified: Fri, 08 Sep 2017 18:39:04 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e290bf84b8687a83b45463413ba724a59d6903a4632257bb35e644df5b09d3`  
		Last Modified: Fri, 08 Sep 2017 18:40:38 GMT  
		Size: 2.3 MB (2281384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d240f483c04574ec2cb933714a08c3763655b82d87e93e611fb29d3bc3a13892`  
		Last Modified: Fri, 08 Sep 2017 18:40:51 GMT  
		Size: 67.6 MB (67612941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c9146bee4dbf961e9f41f0c4c9468ef6a708130a5fc3daa0201b7ec5c2fb23`  
		Last Modified: Fri, 08 Sep 2017 18:40:34 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.1.7` - linux; ppc64le

```console
$ docker pull redmine@sha256:c13f747e64b5a13d5528750d397057d5e29e79b9f801ddea072d0db98678a6cd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241858055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc61ff5098d636ad4b8915f4bb370b67fb52d6ce69d4a6982ea6980053e730ff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 02:29:48 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 02:33:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 02:33:06 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 02:33:07 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 02:33:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 02:33:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 02:33:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 02:33:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 02:33:11 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 02:56:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 02:56:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:56:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:56:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 02:56:39 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 02:56:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 02:57:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:57:19 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 02:57:19 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 03:04:38 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 08 Sep 2017 03:04:38 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 08 Sep 2017 03:04:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 03:08:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 03:08:01 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 03:08:01 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 03:08:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 03:08:02 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 03:08:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae83bfb115b97ca1927cb6d849ce9d0f2e8a201166291834fbfdfdd3912a077a`  
		Last Modified: Fri, 08 Sep 2017 02:35:57 GMT  
		Size: 35.2 MB (35183596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88920fd5440d60c166986243b66214d4d8c4b30264fb620a3d79e5b53185cb54`  
		Last Modified: Fri, 08 Sep 2017 02:35:47 GMT  
		Size: 677.1 KB (677069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa114ada7833db1046ab7a7fddb11d4e0073e94f3b338c65778e1f97a19129cd`  
		Last Modified: Fri, 08 Sep 2017 02:35:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfa260d6d0453700f284946564b80acc4d52fbeb4c551204cdbd2172773cd18`  
		Last Modified: Fri, 08 Sep 2017 03:09:18 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd1a12ee197d0047c055808936c0339fb37ff80e642018bebb71bbc4b375ed3`  
		Last Modified: Fri, 08 Sep 2017 03:09:20 GMT  
		Size: 14.7 MB (14718821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91b7962916ea447666a36351c1f9a28e55e8ecfb93d847cf17545f44a6af16c`  
		Last Modified: Fri, 08 Sep 2017 03:09:16 GMT  
		Size: 469.8 KB (469840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8623c6c8f73e033a1f73ba963a8a6ac6f0633dc6a15da2a12d1ec72abf101a0f`  
		Last Modified: Fri, 08 Sep 2017 03:09:15 GMT  
		Size: 8.6 KB (8635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd5c9d41427e36aa9990d5e17b7c71a21dae97f0c19c815c4556d31a6318c59`  
		Last Modified: Fri, 08 Sep 2017 03:09:28 GMT  
		Size: 58.1 MB (58103533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bf8006643e7f7a9feebfdfda54213cd72e7499778c00113655a912c0a37e68`  
		Last Modified: Fri, 08 Sep 2017 03:09:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ade5ad60c5ea0e71a14ccda6f3839bb1648d788de67f6b354afe31b1230f8fe`  
		Last Modified: Fri, 08 Sep 2017 03:10:27 GMT  
		Size: 2.3 MB (2281816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fc0627a42a4e580c67e2cb9b7363dc201cea1ae5714af442603de3f26af9d4`  
		Last Modified: Fri, 08 Sep 2017 03:10:41 GMT  
		Size: 68.5 MB (68468918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a75f2d46520ad2523308eb62bc8080de6516a4c28fd7fbfd611130601662a66`  
		Last Modified: Fri, 08 Sep 2017 03:10:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.1.7` - linux; s390x

```console
$ docker pull redmine@sha256:f12daf2480da6e9b5dd188a0b5e2abaed4a2c03caca9d3661b06275832582339
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248610582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d54344b93b6218421b74f0c1d3a893c62e1ab504f5f26ce7275737bc02761c6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:20:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:20:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 07:26:55 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 07:29:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 07:29:39 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 07:29:40 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 07:29:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 07:29:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 07:29:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:29:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 07:29:41 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 07:50:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 07:50:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:50:12 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:50:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 07:50:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 07:50:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 07:50:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:50:51 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 07:50:51 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 07:55:48 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 08 Sep 2017 07:55:48 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 08 Sep 2017 07:55:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 07:58:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:58:13 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 07:58:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 07:58:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:58:13 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 07:58:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7806079690737ed18410be149d70cc3439abe5521f16720649707abbffe2ac`  
		Last Modified: Fri, 08 Sep 2017 07:30:19 GMT  
		Size: 10.0 MB (9959664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4801eb4feb44806d3dbada1c80e2fe522b598975252c8c21a80d3aa8213ff0c3`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb2782d0951cc5fda5902bce6f9d26b6f20760b9f2bf9f689d13a28d879b4cd`  
		Last Modified: Fri, 08 Sep 2017 07:31:17 GMT  
		Size: 37.8 MB (37817597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6788612f913e71256c3f7874e884f26821e1bb73707146fc42cb5f2e1b9910`  
		Last Modified: Fri, 08 Sep 2017 07:31:07 GMT  
		Size: 677.0 KB (677043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2541bfaba3d00ee63606919cd50a6f97f2ef4b50dadeb250f96be70c02f3c8`  
		Last Modified: Fri, 08 Sep 2017 07:31:08 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50320d755447597fcc899e533a55cf086e14e73250b66fb5d0ae9924dd554aa6`  
		Last Modified: Fri, 08 Sep 2017 07:59:00 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aceb70dc7f3fe3fb52ade5a9367fb00e6095b88be80bc2467cfe7e63b34d8295`  
		Last Modified: Fri, 08 Sep 2017 07:59:03 GMT  
		Size: 14.8 MB (14814977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c34b9312fcbbd70527ada3034d454899ba484cdcdf2ca66a5eee2684990291`  
		Last Modified: Fri, 08 Sep 2017 07:58:59 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d80e6a9933f710f1757083cf6f5a2c7dc1ec619fba722efc9898ee12d0f73d9`  
		Last Modified: Fri, 08 Sep 2017 07:58:59 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32b19886b8e0d29474117ec714e9fcbb6c0e21dd15c34f7aa6a54903b0ac28e`  
		Last Modified: Fri, 08 Sep 2017 07:59:10 GMT  
		Size: 59.1 MB (59090489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf6ecb24f72366add5c6a9e7c66878e56824010b4a5ce7abe2202156ea1cb9a`  
		Last Modified: Fri, 08 Sep 2017 07:58:57 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f49eeb8f8c95bc90143b7c814cffa3d28e7dfeedcec3a9927f158a32979becd`  
		Last Modified: Fri, 08 Sep 2017 07:59:41 GMT  
		Size: 2.3 MB (2281536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89881e41a7a4355497449b04cfd13343680b28c57ed9ba403581ca3028b93335`  
		Last Modified: Fri, 08 Sep 2017 07:59:55 GMT  
		Size: 70.7 MB (70680720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57513d9690eb109716bde07db749e00d7c82e4520e7f591b39b595cf68c5b4ff`  
		Last Modified: Fri, 08 Sep 2017 07:59:40 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:1b29cbb6d22c20d7064cd72aedb81d12f2f1b636f42dc3d238b8bde1f8593180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.1` - linux; amd64

```console
$ docker pull redmine@sha256:4af6be8eb3b66d9e40a2d9b826cc85cc9614ce7b50ef827e56465b1466780414
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.1 MB (242124283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf36c652d412469c8328b99f8c39fa4d543c960a164cd004863c16095e77eb6f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:56:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:56:35 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:56:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:56:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:56:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:56:39 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:44:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:44:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:20 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:44:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:44:23 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:44:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:44:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:56 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:44:56 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:50:55 GMT
ENV REDMINE_VERSION=3.1.7
# Mon, 11 Sep 2017 17:50:55 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Mon, 11 Sep 2017 17:50:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:53:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:53:18 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:53:19 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:53:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:53:19 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:53:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd23c1a1477e62628e2db3b59168f65b4f63b8f02e282b15f3b3aa60d850ccd`  
		Last Modified: Mon, 11 Sep 2017 15:00:55 GMT  
		Size: 33.9 MB (33916006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82977a3057dd651766f0d236ed4397e0a55f556a7919e9da4e44f58e2afa1013`  
		Last Modified: Mon, 11 Sep 2017 15:00:45 GMT  
		Size: 675.3 KB (675302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173b2ed5254752c314a0727439a434c074ac1329bd44c32b707b3f466da99233`  
		Last Modified: Mon, 11 Sep 2017 15:00:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9eb114932413e6785c9bd262baab48c429ed1e480c7e9663c1d4db6e43a9b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cd78c17c13500b79d71736d5e2541ef6e16521b14406ea27ad964e73f327c2`  
		Last Modified: Mon, 11 Sep 2017 18:05:02 GMT  
		Size: 14.4 MB (14422213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dd1f5182fe6d57f3caf772d8222f198133612f3e0cad89a1ccbeb79410b5b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c80e7730cda1a016898866936d47c81485fcab4718397dd10c7f2b9601f843`  
		Last Modified: Mon, 11 Sep 2017 18:04:55 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb172d1c21633d530f9e52838c99ad862bbc3ac95d5f5d3d082d2eb540d9212`  
		Last Modified: Mon, 11 Sep 2017 18:05:13 GMT  
		Size: 59.2 MB (59237779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d4c6d7ebf0cfc8bc79afb4234e8ab575ccff2289b4fbeb756290acd918eb14`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850187a89e1bc7203c8ff8a38838ade9fe06b2a4c0723f89fba172e029c4476e`  
		Last Modified: Mon, 11 Sep 2017 18:07:39 GMT  
		Size: 2.3 MB (2281377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea20d968de718bc9cd6acf74c27446b4e3c625699841709f9d1d0614a27eb50`  
		Last Modified: Mon, 11 Sep 2017 18:07:56 GMT  
		Size: 68.3 MB (68321624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9854a271ea69faff4c1c5b55da9e6a52239473f8f1a64a8194eb2afde2fe6776`  
		Last Modified: Mon, 11 Sep 2017 18:07:39 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.1` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:219324791ef320d4fc5a90f44c741240db811c296f961a0e2931a36a74cd6149
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234840119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835382d777034c2eafe6d646883a5381e29deb46a03b1bef1d33e5092bafc38a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 02:04:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 09 Sep 2017 02:04:39 GMT
ENV RUBY_VERSION=2.2.7
# Sat, 09 Sep 2017 02:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Sat, 09 Sep 2017 02:04:40 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Sat, 09 Sep 2017 02:17:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 09 Sep 2017 02:17:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Sat, 09 Sep 2017 02:17:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 09 Sep 2017 02:17:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 09 Sep 2017 02:17:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 09 Sep 2017 02:17:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 02:17:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 09 Sep 2017 02:17:43 GMT
CMD ["irb"]
# Sat, 09 Sep 2017 04:58:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 09 Sep 2017 04:58:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 04:58:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 04:58:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Sep 2017 04:58:49 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 09 Sep 2017 04:58:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 09 Sep 2017 05:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 05:01:22 GMT
ENV RAILS_ENV=production
# Sat, 09 Sep 2017 05:01:23 GMT
WORKDIR /usr/src/redmine
# Sat, 09 Sep 2017 05:22:23 GMT
ENV REDMINE_VERSION=3.1.7
# Sat, 09 Sep 2017 05:22:24 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Sat, 09 Sep 2017 05:22:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 09 Sep 2017 05:32:55 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 05:32:57 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 09 Sep 2017 05:32:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Sat, 09 Sep 2017 05:32:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 09 Sep 2017 05:32:59 GMT
EXPOSE 3000/tcp
# Sat, 09 Sep 2017 05:32:59 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac6fa4e2333381e30e5bee4bf3f84be997e6a91c454f51aea3f89ef973ca289`  
		Last Modified: Sat, 09 Sep 2017 02:21:27 GMT  
		Size: 34.3 MB (34309344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceffa176ee927dc52aa7cd8b500a6efeef4eb7933650605e53f49dcaffc0f3fc`  
		Last Modified: Sat, 09 Sep 2017 02:21:11 GMT  
		Size: 677.1 KB (677060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca06a25c81a34b9288346a8ed3bf4504ef66d937f9b88fa7b6f57f964d78522`  
		Last Modified: Sat, 09 Sep 2017 02:21:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc9f4ec5a51b4e42012d7be86d701d2bf13d5303e1bb8fe2bc2fd35a91c5b0e`  
		Last Modified: Sat, 09 Sep 2017 05:34:24 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21222c122f8aef829e1f619c8b59f4c2cbf3f07a4f0cab9bc549b442317ee79`  
		Last Modified: Sat, 09 Sep 2017 05:34:27 GMT  
		Size: 14.5 MB (14462940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9997a4469fc22cc5e2420b0bd3d6c5799902a236888ff31fc25444fc4b00ecdd`  
		Last Modified: Sat, 09 Sep 2017 05:34:21 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b186aba3d07b6bd06dcb4d015f9345d4de94a607cdd6c500dac97776e2626353`  
		Last Modified: Sat, 09 Sep 2017 05:34:21 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4115311d74b5be5138b8459550608ba672c872b05d344fd592ba9829803205ae`  
		Last Modified: Sat, 09 Sep 2017 05:34:39 GMT  
		Size: 55.8 MB (55773253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5025c2d2cb0942345c863d815aac2387a5de923de926cbdad9bb1bd2494da2dd`  
		Last Modified: Sat, 09 Sep 2017 05:34:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d2c0f4875ae218762b90f7d9ecbed91a90f3409f78fa50d242aa89c4869f8e`  
		Last Modified: Sat, 09 Sep 2017 05:35:48 GMT  
		Size: 2.3 MB (2281527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257cffe2eeb0baa935c58ee935d25b2fd3700480f29262dc5b0c4901aa14a61a`  
		Last Modified: Sat, 09 Sep 2017 05:36:08 GMT  
		Size: 67.6 MB (67593074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1bb1d14b1b4f626c03d85513a36c13c416a358fa1dc0edec7c262914ef24d4`  
		Last Modified: Sat, 09 Sep 2017 05:35:47 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.1` - linux; 386

```console
$ docker pull redmine@sha256:885496099edae794aab7837c4697db1c2e3d59d0d831458802c5a1fecf8bc006
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (245049278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50aad412d06d0a3b1f94607350f1722b7607cd5612a88b4a918969c35dcf5016`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:29:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:29:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 17:38:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 17:38:08 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 17:43:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 17:43:07 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 17:43:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 17:43:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 17:43:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 17:43:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:43:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 17:43:11 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 18:18:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 18:18:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:18:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:18:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:18:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 18:18:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 18:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:19:41 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 18:19:42 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 18:30:07 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 08 Sep 2017 18:30:07 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 08 Sep 2017 18:30:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 18:33:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 18:33:19 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 18:33:19 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 18:33:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:33:19 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 18:33:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c17b08c3dfc503b71e3ce2bb63b38c8554fb5bfa8645c3ac17b033c1c024792`  
		Last Modified: Fri, 08 Sep 2017 17:48:46 GMT  
		Size: 14.6 MB (14626939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18227dba261327339ab7f00b157f9d2d57e44b4bd0137e2e3435ebc28d033d3b`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696720f14ba576eebf161a33355f1817f6625a3b11d319a145c989b2b8945c4`  
		Last Modified: Fri, 08 Sep 2017 17:50:31 GMT  
		Size: 31.7 MB (31652913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbd823c72d4f6ecc76094ec09f2890e1e6ef44d0bd842c387ebbc73f7349738`  
		Last Modified: Fri, 08 Sep 2017 17:50:22 GMT  
		Size: 675.3 KB (675346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5dcc7d9a17fe043d13fe7add8e828eb7de1a2cc06e248ea5ba384dca02b1ec6`  
		Last Modified: Fri, 08 Sep 2017 17:50:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c370d25c0a1bd6aa315752022630bb17fe3a03d9da21c4bad12a4661eccea9`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd081c9cb578475738ce8dccf5b0efc9d806f494cbb83e256cabddf27c23a`  
		Last Modified: Fri, 08 Sep 2017 18:39:08 GMT  
		Size: 14.8 MB (14817212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2cf96028c9d8e3b6ac118a125c330d0f6cce68a47a862c141099d33f93146f`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92533a2250c35576aa65b9c85c6d7dea62f930b5062a9cad40617aa911a8bb1a`  
		Last Modified: Fri, 08 Sep 2017 18:39:05 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16b9504c034c7d0de945edc9e5f785f7000ffb8f009b338eac0f2b5921d53d5`  
		Last Modified: Fri, 08 Sep 2017 18:39:22 GMT  
		Size: 60.1 MB (60115988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e019c10a1433845b5d1d5f52a333885959e64fd5a9ab8a4791bbc48b47538a`  
		Last Modified: Fri, 08 Sep 2017 18:39:04 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e290bf84b8687a83b45463413ba724a59d6903a4632257bb35e644df5b09d3`  
		Last Modified: Fri, 08 Sep 2017 18:40:38 GMT  
		Size: 2.3 MB (2281384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d240f483c04574ec2cb933714a08c3763655b82d87e93e611fb29d3bc3a13892`  
		Last Modified: Fri, 08 Sep 2017 18:40:51 GMT  
		Size: 67.6 MB (67612941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c9146bee4dbf961e9f41f0c4c9468ef6a708130a5fc3daa0201b7ec5c2fb23`  
		Last Modified: Fri, 08 Sep 2017 18:40:34 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.1` - linux; ppc64le

```console
$ docker pull redmine@sha256:c13f747e64b5a13d5528750d397057d5e29e79b9f801ddea072d0db98678a6cd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241858055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc61ff5098d636ad4b8915f4bb370b67fb52d6ce69d4a6982ea6980053e730ff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 02:29:47 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 02:29:48 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 02:33:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 02:33:06 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 02:33:07 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 02:33:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 02:33:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 02:33:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 02:33:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 02:33:11 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 02:56:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 02:56:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:56:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:56:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 02:56:39 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 02:56:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 02:57:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:57:19 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 02:57:19 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 03:04:38 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 08 Sep 2017 03:04:38 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 08 Sep 2017 03:04:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 03:08:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 03:08:01 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 03:08:01 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 03:08:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 03:08:02 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 03:08:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae83bfb115b97ca1927cb6d849ce9d0f2e8a201166291834fbfdfdd3912a077a`  
		Last Modified: Fri, 08 Sep 2017 02:35:57 GMT  
		Size: 35.2 MB (35183596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88920fd5440d60c166986243b66214d4d8c4b30264fb620a3d79e5b53185cb54`  
		Last Modified: Fri, 08 Sep 2017 02:35:47 GMT  
		Size: 677.1 KB (677069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa114ada7833db1046ab7a7fddb11d4e0073e94f3b338c65778e1f97a19129cd`  
		Last Modified: Fri, 08 Sep 2017 02:35:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfa260d6d0453700f284946564b80acc4d52fbeb4c551204cdbd2172773cd18`  
		Last Modified: Fri, 08 Sep 2017 03:09:18 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd1a12ee197d0047c055808936c0339fb37ff80e642018bebb71bbc4b375ed3`  
		Last Modified: Fri, 08 Sep 2017 03:09:20 GMT  
		Size: 14.7 MB (14718821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91b7962916ea447666a36351c1f9a28e55e8ecfb93d847cf17545f44a6af16c`  
		Last Modified: Fri, 08 Sep 2017 03:09:16 GMT  
		Size: 469.8 KB (469840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8623c6c8f73e033a1f73ba963a8a6ac6f0633dc6a15da2a12d1ec72abf101a0f`  
		Last Modified: Fri, 08 Sep 2017 03:09:15 GMT  
		Size: 8.6 KB (8635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd5c9d41427e36aa9990d5e17b7c71a21dae97f0c19c815c4556d31a6318c59`  
		Last Modified: Fri, 08 Sep 2017 03:09:28 GMT  
		Size: 58.1 MB (58103533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bf8006643e7f7a9feebfdfda54213cd72e7499778c00113655a912c0a37e68`  
		Last Modified: Fri, 08 Sep 2017 03:09:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ade5ad60c5ea0e71a14ccda6f3839bb1648d788de67f6b354afe31b1230f8fe`  
		Last Modified: Fri, 08 Sep 2017 03:10:27 GMT  
		Size: 2.3 MB (2281816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fc0627a42a4e580c67e2cb9b7363dc201cea1ae5714af442603de3f26af9d4`  
		Last Modified: Fri, 08 Sep 2017 03:10:41 GMT  
		Size: 68.5 MB (68468918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a75f2d46520ad2523308eb62bc8080de6516a4c28fd7fbfd611130601662a66`  
		Last Modified: Fri, 08 Sep 2017 03:10:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.1` - linux; s390x

```console
$ docker pull redmine@sha256:f12daf2480da6e9b5dd188a0b5e2abaed4a2c03caca9d3661b06275832582339
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248610582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d54344b93b6218421b74f0c1d3a893c62e1ab504f5f26ce7275737bc02761c6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:20:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:20:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 07:26:55 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 07:26:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 07:29:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 07:29:39 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 07:29:40 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 07:29:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 07:29:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 07:29:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:29:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 07:29:41 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 07:50:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 08 Sep 2017 07:50:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:50:12 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:50:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 07:50:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 08 Sep 2017 07:50:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 08 Sep 2017 07:50:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:50:51 GMT
ENV RAILS_ENV=production
# Fri, 08 Sep 2017 07:50:51 GMT
WORKDIR /usr/src/redmine
# Fri, 08 Sep 2017 07:55:48 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 08 Sep 2017 07:55:48 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 08 Sep 2017 07:55:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 08 Sep 2017 07:58:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:58:13 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 08 Sep 2017 07:58:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 08 Sep 2017 07:58:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:58:13 GMT
EXPOSE 3000/tcp
# Fri, 08 Sep 2017 07:58:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7806079690737ed18410be149d70cc3439abe5521f16720649707abbffe2ac`  
		Last Modified: Fri, 08 Sep 2017 07:30:19 GMT  
		Size: 10.0 MB (9959664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4801eb4feb44806d3dbada1c80e2fe522b598975252c8c21a80d3aa8213ff0c3`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb2782d0951cc5fda5902bce6f9d26b6f20760b9f2bf9f689d13a28d879b4cd`  
		Last Modified: Fri, 08 Sep 2017 07:31:17 GMT  
		Size: 37.8 MB (37817597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6788612f913e71256c3f7874e884f26821e1bb73707146fc42cb5f2e1b9910`  
		Last Modified: Fri, 08 Sep 2017 07:31:07 GMT  
		Size: 677.0 KB (677043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2541bfaba3d00ee63606919cd50a6f97f2ef4b50dadeb250f96be70c02f3c8`  
		Last Modified: Fri, 08 Sep 2017 07:31:08 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50320d755447597fcc899e533a55cf086e14e73250b66fb5d0ae9924dd554aa6`  
		Last Modified: Fri, 08 Sep 2017 07:59:00 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aceb70dc7f3fe3fb52ade5a9367fb00e6095b88be80bc2467cfe7e63b34d8295`  
		Last Modified: Fri, 08 Sep 2017 07:59:03 GMT  
		Size: 14.8 MB (14814977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c34b9312fcbbd70527ada3034d454899ba484cdcdf2ca66a5eee2684990291`  
		Last Modified: Fri, 08 Sep 2017 07:58:59 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d80e6a9933f710f1757083cf6f5a2c7dc1ec619fba722efc9898ee12d0f73d9`  
		Last Modified: Fri, 08 Sep 2017 07:58:59 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32b19886b8e0d29474117ec714e9fcbb6c0e21dd15c34f7aa6a54903b0ac28e`  
		Last Modified: Fri, 08 Sep 2017 07:59:10 GMT  
		Size: 59.1 MB (59090489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf6ecb24f72366add5c6a9e7c66878e56824010b4a5ce7abe2202156ea1cb9a`  
		Last Modified: Fri, 08 Sep 2017 07:58:57 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f49eeb8f8c95bc90143b7c814cffa3d28e7dfeedcec3a9927f158a32979becd`  
		Last Modified: Fri, 08 Sep 2017 07:59:41 GMT  
		Size: 2.3 MB (2281536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89881e41a7a4355497449b04cfd13343680b28c57ed9ba403581ca3028b93335`  
		Last Modified: Fri, 08 Sep 2017 07:59:55 GMT  
		Size: 70.7 MB (70680720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57513d9690eb109716bde07db749e00d7c82e4520e7f591b39b595cf68c5b4ff`  
		Last Modified: Fri, 08 Sep 2017 07:59:40 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:c4c7c0389704bc7cf6849a6c40aeddd22391f009a258f286ec9b2e7d2c653485
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (261003465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b51339f71d316cac5d90df631ee59027fd39b8649183c154aac216f6fefdbbbe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:56:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:56:35 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:56:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:56:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:56:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:56:39 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:44:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:44:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:20 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:44:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:44:23 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:44:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:44:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:56 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:44:56 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:50:55 GMT
ENV REDMINE_VERSION=3.1.7
# Mon, 11 Sep 2017 17:50:55 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Mon, 11 Sep 2017 17:50:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:53:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:53:18 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:53:19 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:53:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:53:19 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:53:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 11 Sep 2017 17:53:27 GMT
ENV PASSENGER_VERSION=5.1.8
# Mon, 11 Sep 2017 17:53:52 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:53:57 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 11 Sep 2017 17:53:57 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd23c1a1477e62628e2db3b59168f65b4f63b8f02e282b15f3b3aa60d850ccd`  
		Last Modified: Mon, 11 Sep 2017 15:00:55 GMT  
		Size: 33.9 MB (33916006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82977a3057dd651766f0d236ed4397e0a55f556a7919e9da4e44f58e2afa1013`  
		Last Modified: Mon, 11 Sep 2017 15:00:45 GMT  
		Size: 675.3 KB (675302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173b2ed5254752c314a0727439a434c074ac1329bd44c32b707b3f466da99233`  
		Last Modified: Mon, 11 Sep 2017 15:00:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9eb114932413e6785c9bd262baab48c429ed1e480c7e9663c1d4db6e43a9b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cd78c17c13500b79d71736d5e2541ef6e16521b14406ea27ad964e73f327c2`  
		Last Modified: Mon, 11 Sep 2017 18:05:02 GMT  
		Size: 14.4 MB (14422213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dd1f5182fe6d57f3caf772d8222f198133612f3e0cad89a1ccbeb79410b5b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c80e7730cda1a016898866936d47c81485fcab4718397dd10c7f2b9601f843`  
		Last Modified: Mon, 11 Sep 2017 18:04:55 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb172d1c21633d530f9e52838c99ad862bbc3ac95d5f5d3d082d2eb540d9212`  
		Last Modified: Mon, 11 Sep 2017 18:05:13 GMT  
		Size: 59.2 MB (59237779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d4c6d7ebf0cfc8bc79afb4234e8ab575ccff2289b4fbeb756290acd918eb14`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850187a89e1bc7203c8ff8a38838ade9fe06b2a4c0723f89fba172e029c4476e`  
		Last Modified: Mon, 11 Sep 2017 18:07:39 GMT  
		Size: 2.3 MB (2281377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea20d968de718bc9cd6acf74c27446b4e3c625699841709f9d1d0614a27eb50`  
		Last Modified: Mon, 11 Sep 2017 18:07:56 GMT  
		Size: 68.3 MB (68321624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9854a271ea69faff4c1c5b55da9e6a52239473f8f1a64a8194eb2afde2fe6776`  
		Last Modified: Mon, 11 Sep 2017 18:07:39 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8366ff7e6bacd29c0758a293f00bd9c074550915fd7c967882df0e6c4a4818`  
		Last Modified: Mon, 11 Sep 2017 18:08:30 GMT  
		Size: 14.6 MB (14605274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea045eab5238f68cea59d5f6b85da01e3bc17c479a654627289cfff9e5cce1d7`  
		Last Modified: Mon, 11 Sep 2017 18:08:28 GMT  
		Size: 4.3 MB (4273908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:c4c7c0389704bc7cf6849a6c40aeddd22391f009a258f286ec9b2e7d2c653485
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (261003465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b51339f71d316cac5d90df631ee59027fd39b8649183c154aac216f6fefdbbbe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_MAJOR=2.2
# Fri, 08 Sep 2017 10:53:49 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 08 Sep 2017 10:53:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:56:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:56:35 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:56:37 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:56:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:56:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:56:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:56:39 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:44:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:44:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:20 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:44:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:44:23 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:44:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:44:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:44:56 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:44:56 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:50:55 GMT
ENV REDMINE_VERSION=3.1.7
# Mon, 11 Sep 2017 17:50:55 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Mon, 11 Sep 2017 17:50:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:53:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:53:18 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:53:19 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:53:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:53:19 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:53:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 11 Sep 2017 17:53:27 GMT
ENV PASSENGER_VERSION=5.1.8
# Mon, 11 Sep 2017 17:53:52 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:53:57 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 11 Sep 2017 17:53:57 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd23c1a1477e62628e2db3b59168f65b4f63b8f02e282b15f3b3aa60d850ccd`  
		Last Modified: Mon, 11 Sep 2017 15:00:55 GMT  
		Size: 33.9 MB (33916006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82977a3057dd651766f0d236ed4397e0a55f556a7919e9da4e44f58e2afa1013`  
		Last Modified: Mon, 11 Sep 2017 15:00:45 GMT  
		Size: 675.3 KB (675302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173b2ed5254752c314a0727439a434c074ac1329bd44c32b707b3f466da99233`  
		Last Modified: Mon, 11 Sep 2017 15:00:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9eb114932413e6785c9bd262baab48c429ed1e480c7e9663c1d4db6e43a9b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cd78c17c13500b79d71736d5e2541ef6e16521b14406ea27ad964e73f327c2`  
		Last Modified: Mon, 11 Sep 2017 18:05:02 GMT  
		Size: 14.4 MB (14422213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dd1f5182fe6d57f3caf772d8222f198133612f3e0cad89a1ccbeb79410b5b`  
		Last Modified: Mon, 11 Sep 2017 18:04:58 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c80e7730cda1a016898866936d47c81485fcab4718397dd10c7f2b9601f843`  
		Last Modified: Mon, 11 Sep 2017 18:04:55 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb172d1c21633d530f9e52838c99ad862bbc3ac95d5f5d3d082d2eb540d9212`  
		Last Modified: Mon, 11 Sep 2017 18:05:13 GMT  
		Size: 59.2 MB (59237779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d4c6d7ebf0cfc8bc79afb4234e8ab575ccff2289b4fbeb756290acd918eb14`  
		Last Modified: Mon, 11 Sep 2017 18:04:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850187a89e1bc7203c8ff8a38838ade9fe06b2a4c0723f89fba172e029c4476e`  
		Last Modified: Mon, 11 Sep 2017 18:07:39 GMT  
		Size: 2.3 MB (2281377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea20d968de718bc9cd6acf74c27446b4e3c625699841709f9d1d0614a27eb50`  
		Last Modified: Mon, 11 Sep 2017 18:07:56 GMT  
		Size: 68.3 MB (68321624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9854a271ea69faff4c1c5b55da9e6a52239473f8f1a64a8194eb2afde2fe6776`  
		Last Modified: Mon, 11 Sep 2017 18:07:39 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8366ff7e6bacd29c0758a293f00bd9c074550915fd7c967882df0e6c4a4818`  
		Last Modified: Mon, 11 Sep 2017 18:08:30 GMT  
		Size: 14.6 MB (14605274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea045eab5238f68cea59d5f6b85da01e3bc17c479a654627289cfff9e5cce1d7`  
		Last Modified: Mon, 11 Sep 2017 18:08:28 GMT  
		Size: 4.3 MB (4273908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
