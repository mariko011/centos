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
$ docker pull redmine@sha256:0cd68aabd4cbb2c35786c5f41169fb1a734385736dc4cbe04b4e5acb23bb719c
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.2` - linux; amd64

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

## `redmine:3.4`

```console
$ docker pull redmine@sha256:0cd68aabd4cbb2c35786c5f41169fb1a734385736dc4cbe04b4e5acb23bb719c
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4` - linux; amd64

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

## `redmine:3`

```console
$ docker pull redmine@sha256:0cd68aabd4cbb2c35786c5f41169fb1a734385736dc4cbe04b4e5acb23bb719c
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

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

## `redmine:latest`

```console
$ docker pull redmine@sha256:0cd68aabd4cbb2c35786c5f41169fb1a734385736dc4cbe04b4e5acb23bb719c
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

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
$ docker pull redmine@sha256:5083562599c0054c44996e1975f788fded6e6d6039755d4df280395682a9b8a3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4` - linux; amd64

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

## `redmine:3.3`

```console
$ docker pull redmine@sha256:5083562599c0054c44996e1975f788fded6e6d6039755d4df280395682a9b8a3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

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
$ docker pull redmine@sha256:6b121ccb54f6bf0570f4cd50cbb89532dda72d8a1b59f00666068329afd27405
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7` - linux; amd64

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

## `redmine:3.2`

```console
$ docker pull redmine@sha256:6b121ccb54f6bf0570f4cd50cbb89532dda72d8a1b59f00666068329afd27405
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

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
$ docker pull redmine@sha256:4af6be8eb3b66d9e40a2d9b826cc85cc9614ce7b50ef827e56465b1466780414
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

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

## `redmine:3.1`

```console
$ docker pull redmine@sha256:4af6be8eb3b66d9e40a2d9b826cc85cc9614ce7b50ef827e56465b1466780414
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

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
