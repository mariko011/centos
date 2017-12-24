<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.8`](#redmine328)
-	[`redmine:3.2.8-passenger`](#redmine328-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.5`](#redmine335)
-	[`redmine:3.3.5-passenger`](#redmine335-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3.4.3`](#redmine343)
-	[`redmine:3.4.3-passenger`](#redmine343-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3`

```console
$ docker pull redmine@sha256:d2450d424c155071ec0ca82a75719012f55504815dc0ef5b4d4e96d829a1dbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3` - linux; amd64

```console
$ docker pull redmine@sha256:6ff626e3de671421559517e852349bb315962a553b8a8c3b11d6d446bf3b2f92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242198058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70c41140b038be6fe637b6849f95c7f80553d1f21396c0619e4ae287c1a90b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:17:16 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:20:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:20:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:20:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:20:29 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:34:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:34:37 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:34:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:34:42 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:34:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:35:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:35:19 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:35:19 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 17:35:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:37:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:37:55 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:37:55 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:37:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:37:55 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:37:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd469839a6522fbd1f08ba2bdecdc44ef90a60f368e05b019a4e696d611e39f`  
		Last Modified: Sat, 23 Dec 2017 17:05:45 GMT  
		Size: 24.7 MB (24740339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d7c36754eed3ef8090b44e3cc9d7a10441ade1dc2171fe17e0ff9cd498a405`  
		Last Modified: Sat, 23 Dec 2017 17:05:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6062536746c95547fdd48b07faa60669935da8a346fce6da19338108f4741`  
		Last Modified: Sat, 23 Dec 2017 17:57:42 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81c38880660541e6eda1038c0d184389663487afc5d9e076fed2bbb25514299`  
		Last Modified: Sat, 23 Dec 2017 17:57:44 GMT  
		Size: 14.7 MB (14650284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913a93200e1eed8fd8db0b7867200373c89a89fe0bf2ab7ff73085e40efbdcca`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b726ccac287e7d1fda4939a4f770ec7fd37d42e8e52f236698cff58b8730d7`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7092d9a5b5212023e23052f67ff850075f83886fcb6df19adaa4d7eba75cf44b`  
		Last Modified: Sat, 23 Dec 2017 17:57:52 GMT  
		Size: 59.3 MB (59267135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cb2fbcc5a13b3a9ffc1f86c226ebf45782a1e269ba86d908e551969d506b90`  
		Last Modified: Sat, 23 Dec 2017 17:57:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa6bc798a3037cbfca7ff52b986727b738ad46a8da3dda90a651168f6b602ae`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32b3dbce00433a55c43bb548c62ebb3e40f622d8317057ed098bfde3ea804ce`  
		Last Modified: Sat, 23 Dec 2017 17:57:54 GMT  
		Size: 77.8 MB (77792518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3db6b583188625dfb29ffc383fa6c9f9bf8ef6f22aa767194514e19e4c3221`  
		Last Modified: Sat, 23 Dec 2017 17:57:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:10753649f2559473153e27b37c305e130f253917cd8c4c389ac7c53ead241935
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.3 MB (235339480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314499549bf8c9ca125614164afc13048f40bbc848696daa4cd62abee1fda055`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:20:44 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 02:44:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:44:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:50:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:50:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:50:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:50:46 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:29:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:30:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:30:17 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:30:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:30:20 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:30:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:31:27 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:31:27 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:31:27 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 03:31:28 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 03:31:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:36:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:36:06 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 19 Dec 2017 23:33:31 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Tue, 19 Dec 2017 23:33:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Dec 2017 23:33:31 GMT
EXPOSE 3000/tcp
# Tue, 19 Dec 2017 23:33:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ed72ef746915a188cc7e630cfea8bd0599efb6d0646e2e79ae01a971b2d1f7`  
		Last Modified: Sat, 16 Dec 2017 03:11:47 GMT  
		Size: 24.5 MB (24494687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c00cc9670c6ef7915e209234c19cac53fef6d374a11e5e74559c0c682fc57`  
		Last Modified: Sat, 16 Dec 2017 03:11:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee7d475924fc070199caeb9e98c181afd4f02cfe258f6ee04fb3b1cff15ae60`  
		Last Modified: Sat, 16 Dec 2017 03:47:30 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fed1f2a791a1a2841412624abe5604d500a40e7b2d71742150568d38343399d`  
		Last Modified: Sat, 16 Dec 2017 03:47:34 GMT  
		Size: 14.3 MB (14347484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be321b14a2e1fee25f2892a5e2beae9ed40f72ecffc505dcf0b8ad7eb784ae84`  
		Last Modified: Sat, 16 Dec 2017 03:47:28 GMT  
		Size: 491.1 KB (491122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cce1975a860ab1caf36b03ca05d8e4bbeeb192c017c8e1e1b21b5a907eb256`  
		Last Modified: Sat, 16 Dec 2017 03:47:28 GMT  
		Size: 7.8 KB (7840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd43b2c0a4ecee8db6f2ad170a8d7c6ebaae33583be4b6aabf9a3177bff58f0f`  
		Last Modified: Sat, 16 Dec 2017 03:47:46 GMT  
		Size: 56.6 MB (56603824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaa8db3843a5eebcea5414da88b08cf372ae410d51529cd01ecaaa77817fd77`  
		Last Modified: Sat, 16 Dec 2017 03:47:27 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbace6c51e02aedb7b77b6d42b81ea71bf7ff044bca471c477611b8258e13f37`  
		Last Modified: Sat, 16 Dec 2017 03:47:28 GMT  
		Size: 2.5 MB (2450397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80d5d79f583ec90305d3025295d29ebbe5040399d8b50e0d1f19a6097aae16f`  
		Last Modified: Sat, 16 Dec 2017 03:47:46 GMT  
		Size: 76.9 MB (76924725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd279afb6b7fd49bd55321164014bda3e7c429ccb3d592495619fec84556df`  
		Last Modified: Tue, 19 Dec 2017 23:33:53 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:fe61984bd99511d9a531081d036134e6e22a5c7f7e8f4caa69a8d7367e09bb38
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229634670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e87941872c6d1d2f614670fefd1d92bb4c8443d712547ad5094437a4681156df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:08:23 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 02:32:50 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:32:50 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:38:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:38:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:38:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:38:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:38:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:38:20 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:16:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:17:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:17:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:17:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:17:15 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:17:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:18:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:18:10 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:18:10 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:18:10 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 03:18:10 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 03:18:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:22:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:22:25 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:38:26 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:38:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:38:27 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:38:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96bd6afd81903325c3620104a65b1880f48d45f043444d92ab61fb03d2dd3e7`  
		Last Modified: Sat, 16 Dec 2017 02:58:37 GMT  
		Size: 24.4 MB (24367759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1088a3e93a97702c3b9b0a7c7099419b31eee6b7bc212d91bf5fba0ef87a09`  
		Last Modified: Sat, 16 Dec 2017 02:58:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7854a626b2922bd93017d58132d17abccb46b8a00e5a99b3d631b2a69a113572`  
		Last Modified: Sat, 16 Dec 2017 03:33:15 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6bd951d2ab0aea342b3b5f0b5aaf1284d75e8dfb35530f929880892791833e`  
		Last Modified: Sat, 16 Dec 2017 03:33:19 GMT  
		Size: 14.1 MB (14134534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ec95bbea37c5d856c131393911bf3c08ad5a7e71b4c72bc7d01897cdb8fd47`  
		Last Modified: Sat, 16 Dec 2017 03:33:14 GMT  
		Size: 475.3 KB (475270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f5e854136e151cacf5cef51a7db31416c9362f9b583cff2a890970c3020e4c`  
		Last Modified: Sat, 16 Dec 2017 03:33:14 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d63aaff3871b4821844f1d116393ba3f3858febe246ac085477f0bc8eedb06`  
		Last Modified: Sat, 16 Dec 2017 03:33:29 GMT  
		Size: 54.3 MB (54344971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2019b8c9934ba6cffbb578ddd2f0ee804de91c9223e5130d180d6099b3f39b89`  
		Last Modified: Sat, 16 Dec 2017 03:33:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992e59d8a803995e25a8aa670e5cdb8d93a108e1c64864199f25edc45bb1114e`  
		Last Modified: Sat, 16 Dec 2017 03:33:14 GMT  
		Size: 2.5 MB (2450398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2454dba8ce8caa9170193c1357ceac7ce07c833f10e76c6d57d8cf4fd34080b`  
		Last Modified: Sat, 16 Dec 2017 03:33:30 GMT  
		Size: 76.4 MB (76374165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbd8a2ea58ebb3670ca59752ea924f4894423c3d80b08f9577068bb7f8c994f`  
		Last Modified: Wed, 20 Dec 2017 11:38:48 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b17a0f9257a6948dc53913c9b803eb05d507882214432c18f7a6fd20499a4523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234187855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757c61dea8c6ced66debc13be112ff6c3e209779244b73f7bcb27c7cc39a4eb4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:58:30 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 07:25:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 07:25:37 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 07:25:38 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 22:20:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 22:29:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 22:29:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 22:29:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 22:29:42 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 23:41:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 23:41:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:41:48 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 23:41:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 23:41:53 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 23:41:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 23:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:43:42 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 23:43:43 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 23:43:43 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 23:43:44 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 23:43:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 23:52:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 23:52:35 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 23:52:35 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 23:52:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 23:52:37 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 23:52:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8673c51c001a9bf984638ff32ca9b69fa55a922346ec362712f527ef8e90e004`  
		Last Modified: Sat, 23 Dec 2017 23:18:55 GMT  
		Size: 24.7 MB (24690330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312aafa818a3dfc76b9218fd4ca103e51b3a22b7f2b54eed603e2c8681819a14`  
		Last Modified: Sat, 23 Dec 2017 23:18:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0f66ef40a62d6b4a4dedc2cb19d378d137333c9d381fc1cd6ed8cb4a4c58eb`  
		Last Modified: Sun, 24 Dec 2017 00:16:27 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc4aff65cbd5771a1380192a68b0e8d8a8c4fa75d03bdb9dddb81b9d609ea`  
		Last Modified: Sun, 24 Dec 2017 00:16:32 GMT  
		Size: 14.5 MB (14462615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f3f2e8c9e1fbc6c4eadd4a743a4983504129bce2f5075ccb02f5c4a0630f79`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727fe3851448999b0543d69f71c0028d2c5ae5ea53638fa8a27c675422bf8a7a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f6c5c343c2354301d6c766b2f7617190aba81d8b02f09a04003cd694d1cf13`  
		Last Modified: Sun, 24 Dec 2017 00:16:44 GMT  
		Size: 55.8 MB (55784093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1fb5b33bc1a9f117df393b3a1e3ea4648faf0bf79be03ecc0077b454e75878`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aabb1abccd026bf5fba3d080bdc7787892e69773bbe8edcb12c78160a80079a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c655ead65d625ac898875e056beb27e00ac5a3016e5e12169134dab1bf36b889`  
		Last Modified: Sun, 24 Dec 2017 00:16:46 GMT  
		Size: 77.0 MB (77038232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e91657b9404f53c5e9abbec3f5d5120a622ffe8ecf04f3d2c0b5abf7dbbef8`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:e9e7089b899280227b06704914c27200aad4ff546c3b6e24d518152973b27762
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246074063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ceb90ed0c1cbfa43852aa0f4e17eb49fdc0789467e32c125d025eecdb08c7fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:03:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 04:21:37 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 04:25:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 04:25:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 04:25:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 04:25:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 04:25:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 04:25:48 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 05:52:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 05:53:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 05:53:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 05:53:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 05:53:24 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 05:53:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 05:54:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 05:54:18 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 05:54:18 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 05:54:19 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 05:54:19 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 05:54:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 05:57:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 05:57:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:09:46 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:09:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:09:47 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:09:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedb168488ef385764fefa9492e3416579caf66b505c1013056747f2e2646d56`  
		Last Modified: Sat, 16 Dec 2017 05:24:02 GMT  
		Size: 23.7 MB (23729301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da863ac6556bc896e343deb5897bd853823b33f68fccc98ae8f8b24c72c46cc`  
		Last Modified: Sat, 16 Dec 2017 05:23:52 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f604d96b83184ec8627df7cf65f7b75a3e22d821f285ca46291842c7aeabd`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c599acc9a0e94fe90b62e25c46f91cd45d400b3966eb9cd6e3e6de2633270e`  
		Last Modified: Sat, 16 Dec 2017 06:27:06 GMT  
		Size: 14.8 MB (14817506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c108d683f3f3cf17778f1dea4cc92d603a5aa6724c3cb249cc3e7960a9da5385`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760e53909e79ab1314b658dab0969637da0e2cb198574c60a062d6007e6768ba`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0fd31d5b5dee7275e8c10a45a1d2908ad4f3ddea82d0a932d29ae22e20f14f`  
		Last Modified: Sat, 16 Dec 2017 06:27:24 GMT  
		Size: 60.1 MB (60138793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0519e82e66d2882753f11109065df52817c3b75c52bb254f1142d509418dc4`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcf7bbaee03f465969af21e25ab6a0932a84fe2e6072171532c9d6e50a449c8`  
		Last Modified: Sat, 16 Dec 2017 06:27:06 GMT  
		Size: 2.4 MB (2449733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fc3684c9ce0205e1b1cb18edcfc971ca5d192fc161e8dafc1ebae27b109966`  
		Last Modified: Sat, 16 Dec 2017 06:27:22 GMT  
		Size: 77.0 MB (77019626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49393338443c23b28659f81a7bbdcc983c3ba456aa054ea79d037231e627f80`  
		Last Modified: Wed, 20 Dec 2017 11:10:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:8623a2cddde89caf3311ca409acf067b4a24430609d70ffa908f26227aa7b974
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240801782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108c532b50f39fa7d861f2e6169086ec50359b0567166bb7a4ebcd09490bb9b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:31:17 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 02:06:19 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:06:20 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:14:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:14:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:14:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:14:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:14:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:14:44 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:15:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:15:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:15:44 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:15:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:15:54 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:15:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:19:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:19:01 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:19:03 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:19:05 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 03:19:06 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 03:19:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:38:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:38:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 14:48:25 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 14:48:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 14:48:29 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 14:48:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1280a0c3a29f18b35966d72ec2c3205327d2397be1a40d1f3230f4b9bd81bba`  
		Last Modified: Sat, 16 Dec 2017 02:55:09 GMT  
		Size: 25.2 MB (25180250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3d394822bc4380d26b639f96913d425e9fdcc7044db2dc4b71385da1679ba8`  
		Last Modified: Sat, 16 Dec 2017 02:55:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a757469dfdb2fd943ff16fe23a0b67ffbec61903cdb8854dffc14f469e9bb83e`  
		Last Modified: Sat, 16 Dec 2017 04:17:08 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03140562c7ec0e4316469efb8d1f6c07828927bba4c860cafa387d26f678bd8`  
		Last Modified: Sat, 16 Dec 2017 04:17:09 GMT  
		Size: 14.7 MB (14720274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210575da7856a03347a536ac5d861390b1645a795408962ebb252fb3c53185a0`  
		Last Modified: Sat, 16 Dec 2017 04:17:05 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f5494253bf23f0bd93d8076b0cf534296e3585e83fee3f382a8a4cd7f49b28`  
		Last Modified: Sat, 16 Dec 2017 04:17:05 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2622a9a7f39898687d7cce76e6212d1f5bf54b3883cf12931507f94779759d8`  
		Last Modified: Sat, 16 Dec 2017 04:17:28 GMT  
		Size: 58.1 MB (58126030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2333cd0366778b94a014a36190a3298cc0c65be5b2efc3a8a2bf0346ab3b17`  
		Last Modified: Sat, 16 Dec 2017 04:17:01 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4769495f0b69270cdf2efb4d996676fe565b2ee8bc033abc41eecaf22319a59`  
		Last Modified: Sat, 16 Dec 2017 04:17:03 GMT  
		Size: 2.5 MB (2450390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e3f51e74dde4921c82ec66a3bcf73fc565222fec4f1ae480417febae4cf91d`  
		Last Modified: Sat, 16 Dec 2017 04:17:17 GMT  
		Size: 77.9 MB (77876929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab32d9f3224dbed03ac28d5de2c38e1400026838c1749bce8d4ddd1c1d2f2f9`  
		Last Modified: Wed, 20 Dec 2017 14:49:05 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:5427407fea74009d757762b807075c30871317b91f9ec1df560a75cbde3bd29f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244737088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c668a254a4bdd63e46f6e2227a1323576949f2f4cae692d2b7807600bfc1e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:59:56 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 09:45:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 09:45:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 09:49:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 09:49:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 09:49:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 09:49:02 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:26:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:26:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:26:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:26:46 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:26:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:27:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:27:21 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:27:21 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 10:27:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:29:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:29:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:29:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:29:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:29:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d4ee3f2152ec599a26f35e14003e134c639db2f56399563c1726a8b7a8d29a`  
		Last Modified: Wed, 29 Nov 2017 10:07:07 GMT  
		Size: 25.1 MB (25111185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951848c9263d526779afb0312759897b5d73819b19ac1c2f12c68ccc05a977af`  
		Last Modified: Wed, 29 Nov 2017 10:07:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe2550444116bdfc46721f26860f83c0422bc33bcef6ae8b9f3bf3ed8ea5c1`  
		Last Modified: Wed, 29 Nov 2017 10:36:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a53223f31c10d034019dc8488f9dfdeb46f2b9429098d6c65b8600ca2146c`  
		Last Modified: Wed, 29 Nov 2017 10:36:13 GMT  
		Size: 14.8 MB (14815027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639d76a25bbb1bf06d9c487892a8fbf3e296a2092f5ce2386481188b883a3b3`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384c1671418080426f0bfbe9e5f1fb477aa230e26f16add728b943e7aa110d1`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25ea638c611e9ac4370c065dcf7c96dd948eaa929af93a4987c15e30ae5041`  
		Last Modified: Wed, 29 Nov 2017 10:36:20 GMT  
		Size: 59.1 MB (59082388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cac7b2191e12520e7d79b4d3181176f37aa11dc9b83516e15a1d22ff7be7496`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604cd9a3a7a58f7575f3dbbdda98a97ef30bdad45c3fd0882bfc4d00c1919b35`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 2.4 MB (2449744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7dc1025ef8f402bce9c33dcf7b8deed5d54a790d5498120ec36c1397807bc`  
		Last Modified: Wed, 29 Nov 2017 10:36:24 GMT  
		Size: 80.0 MB (80029892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b060c1b16c6a3d0a51649ba9382c820351a8a386d6828b571fa3825bf621ea1`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:2e41b5a27e8bc22fabd20e5681f14be80376648cd7060cfcb5d0a09f41968e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.2` - linux; amd64

```console
$ docker pull redmine@sha256:f827e2ce9c70fe84df57cb7c9c6c83e7b14a3d6bf73febd25fd3614e8864f8f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253364829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a96dff1e4902ea537472c106fc63b95ca07733dfbf7b5a9505ab9ca361d018`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:42:53 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:45:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:45:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:45:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:45:27 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:45:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:45:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:45:29 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:45:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:55 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:45:55 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:53:58 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 23 Dec 2017 17:53:58 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 23 Dec 2017 17:54:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:56:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:56:14 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:56:14 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:56:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:56:15 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:56:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735aca31891341352266e3ea23b8c6e7699e729e9bcf06ab0e78f3930a8e4e8`  
		Last Modified: Sat, 23 Dec 2017 17:15:32 GMT  
		Size: 35.3 MB (35329522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f49679e315aceb5064276950121a64b85873fe147b04c568a584027792adae`  
		Last Modified: Sat, 23 Dec 2017 17:15:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec24383faaa33e931d9d4af21807939699cf94762250226054db2fe9bf6a5f8`  
		Last Modified: Sat, 23 Dec 2017 17:59:38 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15624b6f36d6e6d3a4a07da7d43459f75621df58ccf7ae6a263ff6643fb59f45`  
		Last Modified: Sat, 23 Dec 2017 17:59:41 GMT  
		Size: 14.7 MB (14650307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934cd1911d72662c182eb2447a805427f18bc1f456315fb5ea912e1216ee5aa`  
		Last Modified: Sat, 23 Dec 2017 17:59:36 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8031035112101af588296424194d8853817ce392d9dfe611f0e03b526f483483`  
		Last Modified: Sat, 23 Dec 2017 17:59:35 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e19378baaf2b9fc84cccf68fc81161e18c8d1c08c95240f73ef6c08e0b9dcc0`  
		Last Modified: Sat, 23 Dec 2017 17:59:47 GMT  
		Size: 59.3 MB (59266496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449bc95d3b73501cef1df5dd3b5a2e61578bd7e6bc171f9bf4f01634b97885f4`  
		Last Modified: Sat, 23 Dec 2017 17:59:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e49fed2a210c80afd42779cac61438a05a836b3c3498c59bf15cb7fdd4406f`  
		Last Modified: Sat, 23 Dec 2017 18:00:50 GMT  
		Size: 2.3 MB (2347000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464f34b90da525b4c1a358ce76317ca6e4cbc8e319d50fba55c2ce0b06ef0bb5`  
		Last Modified: Sat, 23 Dec 2017 18:01:05 GMT  
		Size: 78.5 MB (78473467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b511e587317e106a5d9a088a702f13575eccc5fcc90562dae9bfc654d05fddef`  
		Last Modified: Sat, 23 Dec 2017 18:00:48 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v5

```console
$ docker pull redmine@sha256:6cec351d558a6f66643d17cdae8369836184af646eeda363d74b074d0fbb0a81
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245694192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d075b45089d16299e32c04ff2b04fea7eefc3c78d28d4fab7134f57829172a84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:32:48 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 03:04:41 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 03:04:41 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 03:09:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 03:09:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 03:09:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 03:09:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 03:09:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 03:09:04 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:36:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:36:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:36:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:36:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:36:59 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:37:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:37:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:37:59 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:37:59 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:42:47 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 16 Dec 2017 03:42:47 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 16 Dec 2017 03:42:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:47:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:47:17 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 19 Dec 2017 23:33:42 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Tue, 19 Dec 2017 23:33:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Dec 2017 23:33:43 GMT
EXPOSE 3000/tcp
# Tue, 19 Dec 2017 23:33:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de064d70e4b4dfdad56b2cd3afeb53dec46b4cc98505a22d8d620f75afc777e`  
		Last Modified: Sat, 16 Dec 2017 03:14:07 GMT  
		Size: 34.2 MB (34241566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfcd6d456ff5cf9cad0e42d42d19c94f7ff7cba299d7cb3285edec59c0932e7`  
		Last Modified: Sat, 16 Dec 2017 03:13:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d0aeb326cb19eed3f216e065157c8642842b8e416ba69704982254d0a110d9`  
		Last Modified: Sat, 16 Dec 2017 03:48:02 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60338e4dedf066edcf78d8707fceae88b7810bb7c58a8431a944df5ff4ce6e6`  
		Last Modified: Sat, 16 Dec 2017 03:48:06 GMT  
		Size: 14.3 MB (14347463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeeef6676b399c6e07765fe322e7d01b2e2fc9d92baa4f38732cf5d6bdaa4aa6`  
		Last Modified: Sat, 16 Dec 2017 03:48:01 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e554040c2f9375a475fbecf4bef8707807c2d400565a78bbfad7614fa313bc`  
		Last Modified: Sat, 16 Dec 2017 03:48:00 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566cc456eadd54684cbb7df64e07181c30573e9cff96f67c822c508222fc768d`  
		Last Modified: Sat, 16 Dec 2017 03:48:19 GMT  
		Size: 56.6 MB (56603680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3ff85b8af8557ebc775f486493bc2606be7d497902c4ca296a41e6190aed47`  
		Last Modified: Sat, 16 Dec 2017 03:47:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518b9e2b811c7254b0f560ccb20730d124124cfe8818d5966e7532aaa01984fb`  
		Last Modified: Sat, 16 Dec 2017 03:48:27 GMT  
		Size: 2.3 MB (2347349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6927025317e8f52ea0fdfdeb1c3f1f7dbcf0089ae334a715efc4e4b7e5d81f6e`  
		Last Modified: Sat, 16 Dec 2017 03:48:44 GMT  
		Size: 77.6 MB (77635753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d29e991e8ae3ad63d10a40ae7188a577f9a0c9478f0c231fa3e9e7871093c9`  
		Last Modified: Tue, 19 Dec 2017 23:34:13 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:4cea41355bcc434701696ead55341c953de34c6f6f657a1a3a2d5294bf1bcee9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.9 MB (239895200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c47d66ca216e223b33bc11f82d73759ed93491abd4a596d60b4a155cc8e6a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:51:48 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:55:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:55:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:55:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:55:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:55:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:55:56 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:22:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:23:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:23:05 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:23:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:23:08 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:23:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:24:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:24:06 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:24:06 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:28:26 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 16 Dec 2017 03:28:27 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 16 Dec 2017 03:28:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:32:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:32:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:38:39 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:38:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:38:39 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:38:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7223d09f1cb793cbe643d94a5715772a997c89d08b3ec7091e4069f60394b8e`  
		Last Modified: Sat, 16 Dec 2017 03:00:55 GMT  
		Size: 34.0 MB (34036289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278edb26af50a7865c9da57b0a2241e09eae93dbdd861a77f190b3e300f662f4`  
		Last Modified: Sat, 16 Dec 2017 03:00:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfd0541a373a4fe7d7d0a43dd869ce10b0bdcc4d360087feb4d0d295b168dea`  
		Last Modified: Sat, 16 Dec 2017 03:33:46 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6391b17736085fc4ca056f8d53adc5317bae47737612dc0f0322590728dff2bc`  
		Last Modified: Sat, 16 Dec 2017 03:33:50 GMT  
		Size: 14.1 MB (14134531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d003e972b961ffc769a3feeeeb76427cda3bcff43e3ce79899b968eb1168dee1`  
		Last Modified: Sat, 16 Dec 2017 03:33:45 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf907fe7dbbd982fc758566b9c6ad1c76ece2880b3aee73fcfb53c9b1bc038`  
		Last Modified: Sat, 16 Dec 2017 03:33:45 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405baf35336d45897b5b92cb45237ae12d3a1174c726ef5b872b600df81b529d`  
		Last Modified: Sat, 16 Dec 2017 03:34:01 GMT  
		Size: 54.3 MB (54344910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3196bc25555b80ea8dee43bceaaa2071ce3f87effa226392f8cf2d8081f2c7f2`  
		Last Modified: Sat, 16 Dec 2017 03:33:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c698615e57ac1a78ef4615b52eeb4ec341d6e14d5e6d5b52e917469782b565da`  
		Last Modified: Sat, 16 Dec 2017 03:34:12 GMT  
		Size: 2.3 MB (2347345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04a94fd3a29e90908f39ce8203e3a14f77852058f2a8357542be813a0e90c0c`  
		Last Modified: Sat, 16 Dec 2017 03:34:29 GMT  
		Size: 77.1 MB (77069292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103a2691e5e4c1a60fcc48440da8d10e4c3c5b515bd292c856ef38706d6b1915`  
		Last Modified: Wed, 20 Dec 2017 11:39:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:481d496bf8b63af51607e64d4a5317301af99bfb55a95e88993fc165f9272d31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245492752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:913fc532558946e192f59d8230cbfc518ad7145701089a1e9263906727c75dd9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:17:37 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 08:10:58 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 08:10:59 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 08:11:00 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 08:11:00 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 08:18:20 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 08:18:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 08:18:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 08:18:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 08:18:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 08:18:25 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 09:41:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 09:42:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 09:42:18 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 09:42:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 09:42:24 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 09:42:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 09:44:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 09:44:39 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 09:44:40 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 09:56:14 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 16 Dec 2017 09:56:14 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 16 Dec 2017 09:56:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 10:06:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 10:06:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 07:38:59 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 07:38:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 07:39:00 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 07:39:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a53e0a8e02799d5ead42088144c13484b28b82955c2a96de580e4bdc62bb858`  
		Last Modified: Sat, 16 Dec 2017 08:28:12 GMT  
		Size: 35.5 MB (35463429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cec577dcdd91dfc791267268517ee58d40c5e66e65b6e668f3516e8fa27fea`  
		Last Modified: Sat, 16 Dec 2017 08:27:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb563a25d606ba84c3aecba7423a42f1d45c68341b243f00694e9561ccd523e5`  
		Last Modified: Sat, 16 Dec 2017 10:08:05 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a76f5fb4856f981c405bb2a3177c1c9c544e4ad8de8c06aa41bb54c064707f`  
		Last Modified: Sat, 16 Dec 2017 10:08:09 GMT  
		Size: 14.5 MB (14462688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dd6441fc7c7e8b3f32f26eef12bac5728375c490e892722fe541949c87a72a`  
		Last Modified: Sat, 16 Dec 2017 10:08:05 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b994561f73635fb83395384a045e10ad649c0b7af274aad357d8346ee305d3`  
		Last Modified: Sat, 16 Dec 2017 10:08:03 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408f9c4ce41de66dc7b39dda1a05de3991b8fd6c6d7aae697ff1a4d82c76d6b6`  
		Last Modified: Sat, 16 Dec 2017 10:08:21 GMT  
		Size: 55.8 MB (55784436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c15fe9a13535c8dbc9f78e09d663487fa6f0eca180432d7ab298dd0e3622e`  
		Last Modified: Sat, 16 Dec 2017 10:08:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a19050a02956adca5e6fd75e0aad0de7633c9197106b9d9600742c851238ec0`  
		Last Modified: Sat, 16 Dec 2017 10:08:44 GMT  
		Size: 2.3 MB (2347001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05e944146bcc22c5c87b4a9b1924e7730af0ae64fa817c89b67fbd077ade065`  
		Last Modified: Sat, 16 Dec 2017 10:09:05 GMT  
		Size: 77.7 MB (77672357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1026a03a5e853022e7d03ecd71b3d80ada3c3d0933d2c65c5d00268002e5bd5d`  
		Last Modified: Wed, 20 Dec 2017 07:39:56 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; 386

```console
$ docker pull redmine@sha256:01cd410b9d252407274f661c7c9ad1b9aeeb236a7c7cdb9c6f553a26238ac4b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.7 MB (255732829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c8fcd1428051ef8bc66767c5e7c3f94ecca6dbe9deeb1d7789b1bdb67aaed5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:32:29 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 05:06:29 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 05:06:29 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 05:10:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 05:10:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 05:10:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 05:10:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 05:10:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 05:10:02 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 06:04:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 06:04:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 06:04:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 06:04:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 06:04:59 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 06:05:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 06:06:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 06:06:06 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 06:06:06 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 06:16:44 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 16 Dec 2017 06:16:44 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 16 Dec 2017 06:16:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 06:19:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 06:19:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:10:09 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:10:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:10:09 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:10:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa3e02d70eda581cdc0f6c422538656a3972a1a93c9fd550013b2ed8f8a8e09`  
		Last Modified: Sat, 16 Dec 2017 05:34:29 GMT  
		Size: 32.8 MB (32832977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f970bb94a090cc26727e081ee8e1a61d3d446a1d691ca6f7346b7f823a09e2`  
		Last Modified: Sat, 16 Dec 2017 05:34:17 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b86562eb92651d812d914a4e71c28f1e892ea37f0796b1719787e97c5b0311`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b114877509f9cd45baedd81db0360f1d614e7fa6ed1caffdf2968c4df9a9de75`  
		Last Modified: Sat, 16 Dec 2017 06:29:21 GMT  
		Size: 14.8 MB (14817524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73404a4a29089cd0ff493b0c574382c07680e348d2decc327c46fb0f723e3f9f`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5183d46266274aeca8440b8d460a2c8a03ceb52da08b6d5da9867b36e3b5fda9`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817e8b412bd124fbaf2c69636008e0cd20e9d69920628a6e7e4330e8f6829193`  
		Last Modified: Sat, 16 Dec 2017 06:29:38 GMT  
		Size: 60.1 MB (60138793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabb14b5b7a4b9ce3747b0745049b26e051b849215eae3ef97b9e33cec4f2000`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6a86e8b1a43cbfcc818098a636dd304970d1a5beb389c84ad3020af7bd3d4`  
		Last Modified: Sat, 16 Dec 2017 06:36:46 GMT  
		Size: 2.3 MB (2347000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281a347f614a55d787b3cdaf9b2c4970e306acf0c9ca888c6af4ae55d4491b9f`  
		Last Modified: Sat, 16 Dec 2017 06:37:02 GMT  
		Size: 77.7 MB (77677428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a46e0475fd8adbadd4badc4c4737f3e3646143c071c42f60d94ce808b01103e`  
		Last Modified: Wed, 20 Dec 2017 11:11:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:b41d473a781f92474bef0ea627f486e44538e14ef409f7271e4d297d28dd2ee0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252553076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61021c5857f6e0a9784f853a07bb724f97d9e04d9682893ae101e3ad796c6f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:12:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:44:02 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:44:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 02:44:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:44:06 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:50:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:50:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:50:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:50:50 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:39:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:40:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:40:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:40:28 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:40:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:46:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:46:38 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:46:39 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 04:01:39 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 16 Dec 2017 04:01:40 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 16 Dec 2017 04:01:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 04:16:27 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 04:16:30 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 14:48:49 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 14:48:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 14:48:53 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 14:48:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e055298f66bd4d0135b6650424bbadb683f545e8d944638147a9bdba4e2fa4d5`  
		Last Modified: Sat, 16 Dec 2017 02:59:06 GMT  
		Size: 36.4 MB (36350809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960c41563af25a171ae4f416858e03ae68dce73e0536fabfb58580895e729d33`  
		Last Modified: Sat, 16 Dec 2017 02:58:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbb02c012a1bdb60de8e9b4cae5c454375c44a73853aa51e907d48825ca8c9a`  
		Last Modified: Sat, 16 Dec 2017 04:17:55 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c193da2e6e450685baf92f41fb5d1e6a74af690d2444110a886535693b5aed`  
		Last Modified: Sat, 16 Dec 2017 04:17:59 GMT  
		Size: 14.7 MB (14720291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6706acf587ac8abd6806d87ee9a274a55fcbc594602d9de20952359b0561cbc`  
		Last Modified: Sat, 16 Dec 2017 04:17:54 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bef4ce346eade32ae6c5af0ffc242f6a3d4fca8706984056f38a7120255e522`  
		Last Modified: Sat, 16 Dec 2017 04:17:53 GMT  
		Size: 8.6 KB (8635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5dd7041fbbc308bcd96ee36c6c5c70f26c2a50de82acc663e243de9aff5cae`  
		Last Modified: Sat, 16 Dec 2017 04:18:07 GMT  
		Size: 58.1 MB (58126517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a019ba0696a1f60fbeab48be4087a5b3709d3fbdd4f0b75fbebc36f38a68c60`  
		Last Modified: Sat, 16 Dec 2017 04:17:50 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417dd5e2ad1d07c99bef45b958963059d7c378fc53216b860d643d0bfa195199`  
		Last Modified: Sat, 16 Dec 2017 04:18:23 GMT  
		Size: 2.3 MB (2347350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f10216267cc5f7f91adfaaae5d877f080ac58342203a28c659d6ab7cd3eaa15`  
		Last Modified: Sat, 16 Dec 2017 04:18:37 GMT  
		Size: 78.6 MB (78560199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a9d2833efd00fe635143e67107ece14173520b4601dcad26c1d892b4bb1c4a`  
		Last Modified: Wed, 20 Dec 2017 14:49:42 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; s390x

```console
$ docker pull redmine@sha256:1ebe61e156d1c4e487becce430ffe5552eed7b0195eafd8f32c8a207e5460118
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259098016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ba5558d2ecc3540f4f39a1b3f7289a5b2f37bb27d07d6d77bfe1e910bf0454`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:11:57 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 10:00:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 10:00:05 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 10:02:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 10:02:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 10:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 10:02:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:30:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:30:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:30:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:30:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:53 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:30:53 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:33:29 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 10:33:29 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 10:33:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:35:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:35:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:35:45 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:35:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:35:45 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:35:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aecf1643b640bfe6355e9a2f45baaf98e042116267d7ea16b31c167433d75cc`  
		Last Modified: Wed, 29 Nov 2017 10:10:34 GMT  
		Size: 39.0 MB (38970539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af488ae7dbb0e3a499062c8f775e79ce5d5e8fb499cc3c32b68a5d2a96061e4`  
		Last Modified: Wed, 29 Nov 2017 10:10:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48259d29197d3370c94aa00fc20d073bc2176fcff0458a37fc7a93ccf2e2ba`  
		Last Modified: Wed, 29 Nov 2017 10:36:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68951b2cc3e0b486d49f2bf1a604dfc72920bb910b0f3a92beb255ab27ce1bc1`  
		Last Modified: Wed, 29 Nov 2017 10:36:52 GMT  
		Size: 14.8 MB (14815095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad8e9b077eeb77d47e6d422e4c7502c0bc698030e3d5a5a8983255ef3427e4`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b7991629e300e835043dfabe52cb7257b8c5e742b9e0a70a0545b2d1b7133f`  
		Last Modified: Wed, 29 Nov 2017 10:36:47 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1189eb3a43b5dcb29ce876b13411ed03bf2c90037856f4c340a91cf1a07471`  
		Last Modified: Wed, 29 Nov 2017 10:36:58 GMT  
		Size: 59.1 MB (59081157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e138f3c639fc2c03cc809c5c719e41f68c01a9f20c0d935ee50cfd5258dae3e2`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577331182a33b55ded369cd171053fb8cc16581c9aca29b6b3b0d0612849973e`  
		Last Modified: Wed, 29 Nov 2017 10:37:12 GMT  
		Size: 2.3 MB (2347001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e3e3b2f2a888aaf2fa791d7df219b6625a4e900f6a89e2b373f840e21aeb6e`  
		Last Modified: Wed, 29 Nov 2017 10:37:23 GMT  
		Size: 80.6 MB (80635377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4a8aad7e42b845e507039f6c4e485a258111be94f68b2a1fd5a36dbc951ca9`  
		Last Modified: Wed, 29 Nov 2017 10:37:11 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.8`

```console
$ docker pull redmine@sha256:2e41b5a27e8bc22fabd20e5681f14be80376648cd7060cfcb5d0a09f41968e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.2.8` - linux; amd64

```console
$ docker pull redmine@sha256:f827e2ce9c70fe84df57cb7c9c6c83e7b14a3d6bf73febd25fd3614e8864f8f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253364829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a96dff1e4902ea537472c106fc63b95ca07733dfbf7b5a9505ab9ca361d018`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:42:53 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:45:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:45:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:45:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:45:27 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:45:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:45:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:45:29 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:45:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:55 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:45:55 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:53:58 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 23 Dec 2017 17:53:58 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 23 Dec 2017 17:54:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:56:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:56:14 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:56:14 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:56:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:56:15 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:56:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735aca31891341352266e3ea23b8c6e7699e729e9bcf06ab0e78f3930a8e4e8`  
		Last Modified: Sat, 23 Dec 2017 17:15:32 GMT  
		Size: 35.3 MB (35329522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f49679e315aceb5064276950121a64b85873fe147b04c568a584027792adae`  
		Last Modified: Sat, 23 Dec 2017 17:15:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec24383faaa33e931d9d4af21807939699cf94762250226054db2fe9bf6a5f8`  
		Last Modified: Sat, 23 Dec 2017 17:59:38 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15624b6f36d6e6d3a4a07da7d43459f75621df58ccf7ae6a263ff6643fb59f45`  
		Last Modified: Sat, 23 Dec 2017 17:59:41 GMT  
		Size: 14.7 MB (14650307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934cd1911d72662c182eb2447a805427f18bc1f456315fb5ea912e1216ee5aa`  
		Last Modified: Sat, 23 Dec 2017 17:59:36 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8031035112101af588296424194d8853817ce392d9dfe611f0e03b526f483483`  
		Last Modified: Sat, 23 Dec 2017 17:59:35 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e19378baaf2b9fc84cccf68fc81161e18c8d1c08c95240f73ef6c08e0b9dcc0`  
		Last Modified: Sat, 23 Dec 2017 17:59:47 GMT  
		Size: 59.3 MB (59266496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449bc95d3b73501cef1df5dd3b5a2e61578bd7e6bc171f9bf4f01634b97885f4`  
		Last Modified: Sat, 23 Dec 2017 17:59:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e49fed2a210c80afd42779cac61438a05a836b3c3498c59bf15cb7fdd4406f`  
		Last Modified: Sat, 23 Dec 2017 18:00:50 GMT  
		Size: 2.3 MB (2347000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464f34b90da525b4c1a358ce76317ca6e4cbc8e319d50fba55c2ce0b06ef0bb5`  
		Last Modified: Sat, 23 Dec 2017 18:01:05 GMT  
		Size: 78.5 MB (78473467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b511e587317e106a5d9a088a702f13575eccc5fcc90562dae9bfc654d05fddef`  
		Last Modified: Sat, 23 Dec 2017 18:00:48 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm variant v5

```console
$ docker pull redmine@sha256:6cec351d558a6f66643d17cdae8369836184af646eeda363d74b074d0fbb0a81
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245694192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d075b45089d16299e32c04ff2b04fea7eefc3c78d28d4fab7134f57829172a84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:32:48 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 03:04:41 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 03:04:41 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 03:09:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 03:09:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 03:09:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 03:09:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 03:09:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 03:09:04 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:36:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:36:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:36:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:36:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:36:59 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:37:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:37:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:37:59 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:37:59 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:42:47 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 16 Dec 2017 03:42:47 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 16 Dec 2017 03:42:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:47:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:47:17 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 19 Dec 2017 23:33:42 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Tue, 19 Dec 2017 23:33:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Dec 2017 23:33:43 GMT
EXPOSE 3000/tcp
# Tue, 19 Dec 2017 23:33:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de064d70e4b4dfdad56b2cd3afeb53dec46b4cc98505a22d8d620f75afc777e`  
		Last Modified: Sat, 16 Dec 2017 03:14:07 GMT  
		Size: 34.2 MB (34241566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfcd6d456ff5cf9cad0e42d42d19c94f7ff7cba299d7cb3285edec59c0932e7`  
		Last Modified: Sat, 16 Dec 2017 03:13:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d0aeb326cb19eed3f216e065157c8642842b8e416ba69704982254d0a110d9`  
		Last Modified: Sat, 16 Dec 2017 03:48:02 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60338e4dedf066edcf78d8707fceae88b7810bb7c58a8431a944df5ff4ce6e6`  
		Last Modified: Sat, 16 Dec 2017 03:48:06 GMT  
		Size: 14.3 MB (14347463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeeef6676b399c6e07765fe322e7d01b2e2fc9d92baa4f38732cf5d6bdaa4aa6`  
		Last Modified: Sat, 16 Dec 2017 03:48:01 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e554040c2f9375a475fbecf4bef8707807c2d400565a78bbfad7614fa313bc`  
		Last Modified: Sat, 16 Dec 2017 03:48:00 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566cc456eadd54684cbb7df64e07181c30573e9cff96f67c822c508222fc768d`  
		Last Modified: Sat, 16 Dec 2017 03:48:19 GMT  
		Size: 56.6 MB (56603680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3ff85b8af8557ebc775f486493bc2606be7d497902c4ca296a41e6190aed47`  
		Last Modified: Sat, 16 Dec 2017 03:47:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518b9e2b811c7254b0f560ccb20730d124124cfe8818d5966e7532aaa01984fb`  
		Last Modified: Sat, 16 Dec 2017 03:48:27 GMT  
		Size: 2.3 MB (2347349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6927025317e8f52ea0fdfdeb1c3f1f7dbcf0089ae334a715efc4e4b7e5d81f6e`  
		Last Modified: Sat, 16 Dec 2017 03:48:44 GMT  
		Size: 77.6 MB (77635753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d29e991e8ae3ad63d10a40ae7188a577f9a0c9478f0c231fa3e9e7871093c9`  
		Last Modified: Tue, 19 Dec 2017 23:34:13 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm variant v7

```console
$ docker pull redmine@sha256:4cea41355bcc434701696ead55341c953de34c6f6f657a1a3a2d5294bf1bcee9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.9 MB (239895200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c47d66ca216e223b33bc11f82d73759ed93491abd4a596d60b4a155cc8e6a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:51:48 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:55:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:55:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:55:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:55:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:55:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:55:56 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:22:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:23:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:23:05 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:23:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:23:08 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:23:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:24:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:24:06 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:24:06 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:28:26 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 16 Dec 2017 03:28:27 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 16 Dec 2017 03:28:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:32:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:32:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:38:39 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:38:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:38:39 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:38:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7223d09f1cb793cbe643d94a5715772a997c89d08b3ec7091e4069f60394b8e`  
		Last Modified: Sat, 16 Dec 2017 03:00:55 GMT  
		Size: 34.0 MB (34036289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278edb26af50a7865c9da57b0a2241e09eae93dbdd861a77f190b3e300f662f4`  
		Last Modified: Sat, 16 Dec 2017 03:00:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfd0541a373a4fe7d7d0a43dd869ce10b0bdcc4d360087feb4d0d295b168dea`  
		Last Modified: Sat, 16 Dec 2017 03:33:46 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6391b17736085fc4ca056f8d53adc5317bae47737612dc0f0322590728dff2bc`  
		Last Modified: Sat, 16 Dec 2017 03:33:50 GMT  
		Size: 14.1 MB (14134531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d003e972b961ffc769a3feeeeb76427cda3bcff43e3ce79899b968eb1168dee1`  
		Last Modified: Sat, 16 Dec 2017 03:33:45 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf907fe7dbbd982fc758566b9c6ad1c76ece2880b3aee73fcfb53c9b1bc038`  
		Last Modified: Sat, 16 Dec 2017 03:33:45 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405baf35336d45897b5b92cb45237ae12d3a1174c726ef5b872b600df81b529d`  
		Last Modified: Sat, 16 Dec 2017 03:34:01 GMT  
		Size: 54.3 MB (54344910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3196bc25555b80ea8dee43bceaaa2071ce3f87effa226392f8cf2d8081f2c7f2`  
		Last Modified: Sat, 16 Dec 2017 03:33:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c698615e57ac1a78ef4615b52eeb4ec341d6e14d5e6d5b52e917469782b565da`  
		Last Modified: Sat, 16 Dec 2017 03:34:12 GMT  
		Size: 2.3 MB (2347345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04a94fd3a29e90908f39ce8203e3a14f77852058f2a8357542be813a0e90c0c`  
		Last Modified: Sat, 16 Dec 2017 03:34:29 GMT  
		Size: 77.1 MB (77069292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103a2691e5e4c1a60fcc48440da8d10e4c3c5b515bd292c856ef38706d6b1915`  
		Last Modified: Wed, 20 Dec 2017 11:39:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:481d496bf8b63af51607e64d4a5317301af99bfb55a95e88993fc165f9272d31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245492752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:913fc532558946e192f59d8230cbfc518ad7145701089a1e9263906727c75dd9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:17:37 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 08:10:58 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 08:10:59 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 08:11:00 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 08:11:00 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 08:18:20 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 08:18:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 08:18:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 08:18:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 08:18:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 08:18:25 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 09:41:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 09:42:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 09:42:18 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 09:42:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 09:42:24 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 09:42:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 09:44:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 09:44:39 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 09:44:40 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 09:56:14 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 16 Dec 2017 09:56:14 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 16 Dec 2017 09:56:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 10:06:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 10:06:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 07:38:59 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 07:38:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 07:39:00 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 07:39:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a53e0a8e02799d5ead42088144c13484b28b82955c2a96de580e4bdc62bb858`  
		Last Modified: Sat, 16 Dec 2017 08:28:12 GMT  
		Size: 35.5 MB (35463429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cec577dcdd91dfc791267268517ee58d40c5e66e65b6e668f3516e8fa27fea`  
		Last Modified: Sat, 16 Dec 2017 08:27:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb563a25d606ba84c3aecba7423a42f1d45c68341b243f00694e9561ccd523e5`  
		Last Modified: Sat, 16 Dec 2017 10:08:05 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a76f5fb4856f981c405bb2a3177c1c9c544e4ad8de8c06aa41bb54c064707f`  
		Last Modified: Sat, 16 Dec 2017 10:08:09 GMT  
		Size: 14.5 MB (14462688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dd6441fc7c7e8b3f32f26eef12bac5728375c490e892722fe541949c87a72a`  
		Last Modified: Sat, 16 Dec 2017 10:08:05 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b994561f73635fb83395384a045e10ad649c0b7af274aad357d8346ee305d3`  
		Last Modified: Sat, 16 Dec 2017 10:08:03 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408f9c4ce41de66dc7b39dda1a05de3991b8fd6c6d7aae697ff1a4d82c76d6b6`  
		Last Modified: Sat, 16 Dec 2017 10:08:21 GMT  
		Size: 55.8 MB (55784436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c15fe9a13535c8dbc9f78e09d663487fa6f0eca180432d7ab298dd0e3622e`  
		Last Modified: Sat, 16 Dec 2017 10:08:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a19050a02956adca5e6fd75e0aad0de7633c9197106b9d9600742c851238ec0`  
		Last Modified: Sat, 16 Dec 2017 10:08:44 GMT  
		Size: 2.3 MB (2347001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05e944146bcc22c5c87b4a9b1924e7730af0ae64fa817c89b67fbd077ade065`  
		Last Modified: Sat, 16 Dec 2017 10:09:05 GMT  
		Size: 77.7 MB (77672357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1026a03a5e853022e7d03ecd71b3d80ada3c3d0933d2c65c5d00268002e5bd5d`  
		Last Modified: Wed, 20 Dec 2017 07:39:56 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; 386

```console
$ docker pull redmine@sha256:01cd410b9d252407274f661c7c9ad1b9aeeb236a7c7cdb9c6f553a26238ac4b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.7 MB (255732829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c8fcd1428051ef8bc66767c5e7c3f94ecca6dbe9deeb1d7789b1bdb67aaed5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:32:29 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 05:06:29 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 05:06:29 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 05:10:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 05:10:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 05:10:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 05:10:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 05:10:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 05:10:02 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 06:04:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 06:04:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 06:04:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 06:04:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 06:04:59 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 06:05:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 06:06:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 06:06:06 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 06:06:06 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 06:16:44 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 16 Dec 2017 06:16:44 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 16 Dec 2017 06:16:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 06:19:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 06:19:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:10:09 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:10:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:10:09 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:10:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa3e02d70eda581cdc0f6c422538656a3972a1a93c9fd550013b2ed8f8a8e09`  
		Last Modified: Sat, 16 Dec 2017 05:34:29 GMT  
		Size: 32.8 MB (32832977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f970bb94a090cc26727e081ee8e1a61d3d446a1d691ca6f7346b7f823a09e2`  
		Last Modified: Sat, 16 Dec 2017 05:34:17 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b86562eb92651d812d914a4e71c28f1e892ea37f0796b1719787e97c5b0311`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b114877509f9cd45baedd81db0360f1d614e7fa6ed1caffdf2968c4df9a9de75`  
		Last Modified: Sat, 16 Dec 2017 06:29:21 GMT  
		Size: 14.8 MB (14817524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73404a4a29089cd0ff493b0c574382c07680e348d2decc327c46fb0f723e3f9f`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5183d46266274aeca8440b8d460a2c8a03ceb52da08b6d5da9867b36e3b5fda9`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817e8b412bd124fbaf2c69636008e0cd20e9d69920628a6e7e4330e8f6829193`  
		Last Modified: Sat, 16 Dec 2017 06:29:38 GMT  
		Size: 60.1 MB (60138793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabb14b5b7a4b9ce3747b0745049b26e051b849215eae3ef97b9e33cec4f2000`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6a86e8b1a43cbfcc818098a636dd304970d1a5beb389c84ad3020af7bd3d4`  
		Last Modified: Sat, 16 Dec 2017 06:36:46 GMT  
		Size: 2.3 MB (2347000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281a347f614a55d787b3cdaf9b2c4970e306acf0c9ca888c6af4ae55d4491b9f`  
		Last Modified: Sat, 16 Dec 2017 06:37:02 GMT  
		Size: 77.7 MB (77677428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a46e0475fd8adbadd4badc4c4737f3e3646143c071c42f60d94ce808b01103e`  
		Last Modified: Wed, 20 Dec 2017 11:11:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; ppc64le

```console
$ docker pull redmine@sha256:b41d473a781f92474bef0ea627f486e44538e14ef409f7271e4d297d28dd2ee0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252553076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61021c5857f6e0a9784f853a07bb724f97d9e04d9682893ae101e3ad796c6f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:12:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:44:02 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:44:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 02:44:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:44:06 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:50:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:50:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:50:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:50:50 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:39:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:40:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:40:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:40:28 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:40:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:46:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:46:38 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:46:39 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 04:01:39 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 16 Dec 2017 04:01:40 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 16 Dec 2017 04:01:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 04:16:27 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 04:16:30 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 14:48:49 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 14:48:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 14:48:53 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 14:48:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e055298f66bd4d0135b6650424bbadb683f545e8d944638147a9bdba4e2fa4d5`  
		Last Modified: Sat, 16 Dec 2017 02:59:06 GMT  
		Size: 36.4 MB (36350809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960c41563af25a171ae4f416858e03ae68dce73e0536fabfb58580895e729d33`  
		Last Modified: Sat, 16 Dec 2017 02:58:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbb02c012a1bdb60de8e9b4cae5c454375c44a73853aa51e907d48825ca8c9a`  
		Last Modified: Sat, 16 Dec 2017 04:17:55 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c193da2e6e450685baf92f41fb5d1e6a74af690d2444110a886535693b5aed`  
		Last Modified: Sat, 16 Dec 2017 04:17:59 GMT  
		Size: 14.7 MB (14720291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6706acf587ac8abd6806d87ee9a274a55fcbc594602d9de20952359b0561cbc`  
		Last Modified: Sat, 16 Dec 2017 04:17:54 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bef4ce346eade32ae6c5af0ffc242f6a3d4fca8706984056f38a7120255e522`  
		Last Modified: Sat, 16 Dec 2017 04:17:53 GMT  
		Size: 8.6 KB (8635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5dd7041fbbc308bcd96ee36c6c5c70f26c2a50de82acc663e243de9aff5cae`  
		Last Modified: Sat, 16 Dec 2017 04:18:07 GMT  
		Size: 58.1 MB (58126517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a019ba0696a1f60fbeab48be4087a5b3709d3fbdd4f0b75fbebc36f38a68c60`  
		Last Modified: Sat, 16 Dec 2017 04:17:50 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417dd5e2ad1d07c99bef45b958963059d7c378fc53216b860d643d0bfa195199`  
		Last Modified: Sat, 16 Dec 2017 04:18:23 GMT  
		Size: 2.3 MB (2347350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f10216267cc5f7f91adfaaae5d877f080ac58342203a28c659d6ab7cd3eaa15`  
		Last Modified: Sat, 16 Dec 2017 04:18:37 GMT  
		Size: 78.6 MB (78560199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a9d2833efd00fe635143e67107ece14173520b4601dcad26c1d892b4bb1c4a`  
		Last Modified: Wed, 20 Dec 2017 14:49:42 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; s390x

```console
$ docker pull redmine@sha256:1ebe61e156d1c4e487becce430ffe5552eed7b0195eafd8f32c8a207e5460118
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259098016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ba5558d2ecc3540f4f39a1b3f7289a5b2f37bb27d07d6d77bfe1e910bf0454`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:11:57 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 10:00:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 10:00:05 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 10:02:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 10:02:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 10:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 10:02:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:30:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:30:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:30:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:30:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:53 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:30:53 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:33:29 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 10:33:29 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 10:33:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:35:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:35:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:35:45 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:35:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:35:45 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:35:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aecf1643b640bfe6355e9a2f45baaf98e042116267d7ea16b31c167433d75cc`  
		Last Modified: Wed, 29 Nov 2017 10:10:34 GMT  
		Size: 39.0 MB (38970539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af488ae7dbb0e3a499062c8f775e79ce5d5e8fb499cc3c32b68a5d2a96061e4`  
		Last Modified: Wed, 29 Nov 2017 10:10:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48259d29197d3370c94aa00fc20d073bc2176fcff0458a37fc7a93ccf2e2ba`  
		Last Modified: Wed, 29 Nov 2017 10:36:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68951b2cc3e0b486d49f2bf1a604dfc72920bb910b0f3a92beb255ab27ce1bc1`  
		Last Modified: Wed, 29 Nov 2017 10:36:52 GMT  
		Size: 14.8 MB (14815095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad8e9b077eeb77d47e6d422e4c7502c0bc698030e3d5a5a8983255ef3427e4`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b7991629e300e835043dfabe52cb7257b8c5e742b9e0a70a0545b2d1b7133f`  
		Last Modified: Wed, 29 Nov 2017 10:36:47 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1189eb3a43b5dcb29ce876b13411ed03bf2c90037856f4c340a91cf1a07471`  
		Last Modified: Wed, 29 Nov 2017 10:36:58 GMT  
		Size: 59.1 MB (59081157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e138f3c639fc2c03cc809c5c719e41f68c01a9f20c0d935ee50cfd5258dae3e2`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577331182a33b55ded369cd171053fb8cc16581c9aca29b6b3b0d0612849973e`  
		Last Modified: Wed, 29 Nov 2017 10:37:12 GMT  
		Size: 2.3 MB (2347001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e3e3b2f2a888aaf2fa791d7df219b6625a4e900f6a89e2b373f840e21aeb6e`  
		Last Modified: Wed, 29 Nov 2017 10:37:23 GMT  
		Size: 80.6 MB (80635377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4a8aad7e42b845e507039f6c4e485a258111be94f68b2a1fd5a36dbc951ca9`  
		Last Modified: Wed, 29 Nov 2017 10:37:11 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.8-passenger`

```console
$ docker pull redmine@sha256:bbfb991eecb1e8c4f2ae535955fc08d71f336c8badfd9954c44b7ac42b966aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.8-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:86493c8d114846a29ab654298b3c632b0fc8775d98691331d6cf73fbc7af34eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfcb88717224c66a1898762a5361a269667503fa4c3f87ae7fc2c0bc3847e35`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:42:53 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:45:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:45:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:45:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:45:27 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:45:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:45:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:45:29 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:45:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:55 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:45:55 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:53:58 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 23 Dec 2017 17:53:58 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 23 Dec 2017 17:54:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:56:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:56:14 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:56:14 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:56:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:56:15 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:56:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 23 Dec 2017 17:57:03 GMT
ENV PASSENGER_VERSION=5.1.12
# Sat, 23 Dec 2017 17:57:19 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:57:20 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 23 Dec 2017 17:57:20 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735aca31891341352266e3ea23b8c6e7699e729e9bcf06ab0e78f3930a8e4e8`  
		Last Modified: Sat, 23 Dec 2017 17:15:32 GMT  
		Size: 35.3 MB (35329522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f49679e315aceb5064276950121a64b85873fe147b04c568a584027792adae`  
		Last Modified: Sat, 23 Dec 2017 17:15:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec24383faaa33e931d9d4af21807939699cf94762250226054db2fe9bf6a5f8`  
		Last Modified: Sat, 23 Dec 2017 17:59:38 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15624b6f36d6e6d3a4a07da7d43459f75621df58ccf7ae6a263ff6643fb59f45`  
		Last Modified: Sat, 23 Dec 2017 17:59:41 GMT  
		Size: 14.7 MB (14650307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934cd1911d72662c182eb2447a805427f18bc1f456315fb5ea912e1216ee5aa`  
		Last Modified: Sat, 23 Dec 2017 17:59:36 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8031035112101af588296424194d8853817ce392d9dfe611f0e03b526f483483`  
		Last Modified: Sat, 23 Dec 2017 17:59:35 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e19378baaf2b9fc84cccf68fc81161e18c8d1c08c95240f73ef6c08e0b9dcc0`  
		Last Modified: Sat, 23 Dec 2017 17:59:47 GMT  
		Size: 59.3 MB (59266496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449bc95d3b73501cef1df5dd3b5a2e61578bd7e6bc171f9bf4f01634b97885f4`  
		Last Modified: Sat, 23 Dec 2017 17:59:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e49fed2a210c80afd42779cac61438a05a836b3c3498c59bf15cb7fdd4406f`  
		Last Modified: Sat, 23 Dec 2017 18:00:50 GMT  
		Size: 2.3 MB (2347000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464f34b90da525b4c1a358ce76317ca6e4cbc8e319d50fba55c2ce0b06ef0bb5`  
		Last Modified: Sat, 23 Dec 2017 18:01:05 GMT  
		Size: 78.5 MB (78473467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b511e587317e106a5d9a088a702f13575eccc5fcc90562dae9bfc654d05fddef`  
		Last Modified: Sat, 23 Dec 2017 18:00:48 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16211b5193341a49912a9db764b20cba4af3127fe2f3521730c2f682569ff042`  
		Last Modified: Sat, 23 Dec 2017 18:01:35 GMT  
		Size: 12.8 MB (12752716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6df63acf3f9d66bd2b78788b3b50a0e24d245a3bcd0678b85d6fd70bd715b51`  
		Last Modified: Sat, 23 Dec 2017 18:01:31 GMT  
		Size: 4.1 MB (4076916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:bbfb991eecb1e8c4f2ae535955fc08d71f336c8badfd9954c44b7ac42b966aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:86493c8d114846a29ab654298b3c632b0fc8775d98691331d6cf73fbc7af34eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfcb88717224c66a1898762a5361a269667503fa4c3f87ae7fc2c0bc3847e35`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:42:53 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:45:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:45:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:45:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:45:27 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:45:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:45:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:45:29 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:45:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:55 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:45:55 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:53:58 GMT
ENV REDMINE_VERSION=3.2.8
# Sat, 23 Dec 2017 17:53:58 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sat, 23 Dec 2017 17:54:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:56:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:56:14 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:56:14 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:56:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:56:15 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:56:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 23 Dec 2017 17:57:03 GMT
ENV PASSENGER_VERSION=5.1.12
# Sat, 23 Dec 2017 17:57:19 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:57:20 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 23 Dec 2017 17:57:20 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735aca31891341352266e3ea23b8c6e7699e729e9bcf06ab0e78f3930a8e4e8`  
		Last Modified: Sat, 23 Dec 2017 17:15:32 GMT  
		Size: 35.3 MB (35329522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f49679e315aceb5064276950121a64b85873fe147b04c568a584027792adae`  
		Last Modified: Sat, 23 Dec 2017 17:15:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec24383faaa33e931d9d4af21807939699cf94762250226054db2fe9bf6a5f8`  
		Last Modified: Sat, 23 Dec 2017 17:59:38 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15624b6f36d6e6d3a4a07da7d43459f75621df58ccf7ae6a263ff6643fb59f45`  
		Last Modified: Sat, 23 Dec 2017 17:59:41 GMT  
		Size: 14.7 MB (14650307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934cd1911d72662c182eb2447a805427f18bc1f456315fb5ea912e1216ee5aa`  
		Last Modified: Sat, 23 Dec 2017 17:59:36 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8031035112101af588296424194d8853817ce392d9dfe611f0e03b526f483483`  
		Last Modified: Sat, 23 Dec 2017 17:59:35 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e19378baaf2b9fc84cccf68fc81161e18c8d1c08c95240f73ef6c08e0b9dcc0`  
		Last Modified: Sat, 23 Dec 2017 17:59:47 GMT  
		Size: 59.3 MB (59266496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449bc95d3b73501cef1df5dd3b5a2e61578bd7e6bc171f9bf4f01634b97885f4`  
		Last Modified: Sat, 23 Dec 2017 17:59:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e49fed2a210c80afd42779cac61438a05a836b3c3498c59bf15cb7fdd4406f`  
		Last Modified: Sat, 23 Dec 2017 18:00:50 GMT  
		Size: 2.3 MB (2347000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464f34b90da525b4c1a358ce76317ca6e4cbc8e319d50fba55c2ce0b06ef0bb5`  
		Last Modified: Sat, 23 Dec 2017 18:01:05 GMT  
		Size: 78.5 MB (78473467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b511e587317e106a5d9a088a702f13575eccc5fcc90562dae9bfc654d05fddef`  
		Last Modified: Sat, 23 Dec 2017 18:00:48 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16211b5193341a49912a9db764b20cba4af3127fe2f3521730c2f682569ff042`  
		Last Modified: Sat, 23 Dec 2017 18:01:35 GMT  
		Size: 12.8 MB (12752716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6df63acf3f9d66bd2b78788b3b50a0e24d245a3bcd0678b85d6fd70bd715b51`  
		Last Modified: Sat, 23 Dec 2017 18:01:31 GMT  
		Size: 4.1 MB (4076916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:7b8cb0445c0dcb8c5031ec6232a5c3bdb6ec8875613f0dbc72f9e4bbc1047f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.3` - linux; amd64

```console
$ docker pull redmine@sha256:dddb4eb22bb646fb366852e272ee8529388852850105e3d506e35d7e6a39f4af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253408504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ca4500677bc08a281bfbe2be622a3635f4f305261363db0810d6f086178235`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:42:53 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:45:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:45:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:45:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:45:27 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:45:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:45:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:45:29 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:45:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:55 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:45:55 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:45:55 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 23 Dec 2017 17:45:55 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 23 Dec 2017 17:46:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:48:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:48:08 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:48:08 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:48:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:48:08 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:48:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735aca31891341352266e3ea23b8c6e7699e729e9bcf06ab0e78f3930a8e4e8`  
		Last Modified: Sat, 23 Dec 2017 17:15:32 GMT  
		Size: 35.3 MB (35329522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f49679e315aceb5064276950121a64b85873fe147b04c568a584027792adae`  
		Last Modified: Sat, 23 Dec 2017 17:15:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec24383faaa33e931d9d4af21807939699cf94762250226054db2fe9bf6a5f8`  
		Last Modified: Sat, 23 Dec 2017 17:59:38 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15624b6f36d6e6d3a4a07da7d43459f75621df58ccf7ae6a263ff6643fb59f45`  
		Last Modified: Sat, 23 Dec 2017 17:59:41 GMT  
		Size: 14.7 MB (14650307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934cd1911d72662c182eb2447a805427f18bc1f456315fb5ea912e1216ee5aa`  
		Last Modified: Sat, 23 Dec 2017 17:59:36 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8031035112101af588296424194d8853817ce392d9dfe611f0e03b526f483483`  
		Last Modified: Sat, 23 Dec 2017 17:59:35 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e19378baaf2b9fc84cccf68fc81161e18c8d1c08c95240f73ef6c08e0b9dcc0`  
		Last Modified: Sat, 23 Dec 2017 17:59:47 GMT  
		Size: 59.3 MB (59266496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449bc95d3b73501cef1df5dd3b5a2e61578bd7e6bc171f9bf4f01634b97885f4`  
		Last Modified: Sat, 23 Dec 2017 17:59:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee6d35225a010115dc2c2e7a6f3717da8223c073e89c497e04da4e00bbeffcd`  
		Last Modified: Sat, 23 Dec 2017 17:59:36 GMT  
		Size: 2.4 MB (2390737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c422fd6735f4ad123e8f0eed3604e7d4f1902deadd71c4610327f7cdf840f74`  
		Last Modified: Sat, 23 Dec 2017 17:59:50 GMT  
		Size: 78.5 MB (78473405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9be53855b3297cee4c1b88e411cabec9c350b1d8e92c6805cd53bda8923419`  
		Last Modified: Sat, 23 Dec 2017 17:59:33 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:c88360b16e5410af377c201bedfd5c4d8b28dea4852195cabee0c43e0c3789a2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245739665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed800b3fab5a392653d23cafda4921b632dbbed3482f6d8b3180ad2441170dd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:32:48 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 03:04:41 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 03:04:41 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 03:09:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 03:09:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 03:09:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 03:09:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 03:09:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 03:09:04 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:36:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:36:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:36:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:36:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:36:59 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:37:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:37:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:37:59 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:37:59 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:37:59 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 16 Dec 2017 03:37:59 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 16 Dec 2017 03:38:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:42:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:42:30 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 19 Dec 2017 23:33:37 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Tue, 19 Dec 2017 23:33:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Dec 2017 23:33:37 GMT
EXPOSE 3000/tcp
# Tue, 19 Dec 2017 23:33:37 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de064d70e4b4dfdad56b2cd3afeb53dec46b4cc98505a22d8d620f75afc777e`  
		Last Modified: Sat, 16 Dec 2017 03:14:07 GMT  
		Size: 34.2 MB (34241566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfcd6d456ff5cf9cad0e42d42d19c94f7ff7cba299d7cb3285edec59c0932e7`  
		Last Modified: Sat, 16 Dec 2017 03:13:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d0aeb326cb19eed3f216e065157c8642842b8e416ba69704982254d0a110d9`  
		Last Modified: Sat, 16 Dec 2017 03:48:02 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60338e4dedf066edcf78d8707fceae88b7810bb7c58a8431a944df5ff4ce6e6`  
		Last Modified: Sat, 16 Dec 2017 03:48:06 GMT  
		Size: 14.3 MB (14347463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeeef6676b399c6e07765fe322e7d01b2e2fc9d92baa4f38732cf5d6bdaa4aa6`  
		Last Modified: Sat, 16 Dec 2017 03:48:01 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e554040c2f9375a475fbecf4bef8707807c2d400565a78bbfad7614fa313bc`  
		Last Modified: Sat, 16 Dec 2017 03:48:00 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566cc456eadd54684cbb7df64e07181c30573e9cff96f67c822c508222fc768d`  
		Last Modified: Sat, 16 Dec 2017 03:48:19 GMT  
		Size: 56.6 MB (56603680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3ff85b8af8557ebc775f486493bc2606be7d497902c4ca296a41e6190aed47`  
		Last Modified: Sat, 16 Dec 2017 03:47:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a057b45234603b1b4ec8bdbd8932673130f764e4821cdf2b6a3d350b5f90f0a0`  
		Last Modified: Sat, 16 Dec 2017 03:48:00 GMT  
		Size: 2.4 MB (2390999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a958fcd10317bc58a09e05ef42ce0072511e952e409ec43685534e370731ade`  
		Last Modified: Sat, 16 Dec 2017 03:48:18 GMT  
		Size: 77.6 MB (77637576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f638905b39afb1dde5feeceb620609e5f978040d35d5bcfea672320e1dfbec7`  
		Last Modified: Tue, 19 Dec 2017 23:34:05 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:4dde2344243839bbb9b2975458a0fece2840dda0dd7e155ecd78594e306d0927
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.9 MB (239938717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e25085112b6e72efc2e317106029df940414de045ba0b529c789bcb32a6b03f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:51:48 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:55:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:55:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:55:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:55:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:55:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:55:56 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:22:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:23:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:23:05 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:23:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:23:08 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:23:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:24:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:24:06 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:24:06 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:24:06 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 16 Dec 2017 03:24:07 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 16 Dec 2017 03:24:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:28:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:28:14 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:38:32 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:38:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:38:33 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:38:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7223d09f1cb793cbe643d94a5715772a997c89d08b3ec7091e4069f60394b8e`  
		Last Modified: Sat, 16 Dec 2017 03:00:55 GMT  
		Size: 34.0 MB (34036289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278edb26af50a7865c9da57b0a2241e09eae93dbdd861a77f190b3e300f662f4`  
		Last Modified: Sat, 16 Dec 2017 03:00:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfd0541a373a4fe7d7d0a43dd869ce10b0bdcc4d360087feb4d0d295b168dea`  
		Last Modified: Sat, 16 Dec 2017 03:33:46 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6391b17736085fc4ca056f8d53adc5317bae47737612dc0f0322590728dff2bc`  
		Last Modified: Sat, 16 Dec 2017 03:33:50 GMT  
		Size: 14.1 MB (14134531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d003e972b961ffc769a3feeeeb76427cda3bcff43e3ce79899b968eb1168dee1`  
		Last Modified: Sat, 16 Dec 2017 03:33:45 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf907fe7dbbd982fc758566b9c6ad1c76ece2880b3aee73fcfb53c9b1bc038`  
		Last Modified: Sat, 16 Dec 2017 03:33:45 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405baf35336d45897b5b92cb45237ae12d3a1174c726ef5b872b600df81b529d`  
		Last Modified: Sat, 16 Dec 2017 03:34:01 GMT  
		Size: 54.3 MB (54344910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3196bc25555b80ea8dee43bceaaa2071ce3f87effa226392f8cf2d8081f2c7f2`  
		Last Modified: Sat, 16 Dec 2017 03:33:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734778f60a2f223c918cd5edce9d5b1f2366edcf1afb1e7d5aef164ab8cabbad`  
		Last Modified: Sat, 16 Dec 2017 03:33:46 GMT  
		Size: 2.4 MB (2391002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8f8faf8fc849687a2230beb0e3167153e6a6597f2c07e5a160ffae3b1b1aca`  
		Last Modified: Sat, 16 Dec 2017 03:34:02 GMT  
		Size: 77.1 MB (77069153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965295325d8c64044f215b9e6d6d4ee41ddb3a43d131c99fbb4f1546cfe89062`  
		Last Modified: Wed, 20 Dec 2017 11:39:03 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:a25a99b41132247be263a6a1dc72b3fddf7f950cc0f963df43f4f6263ef87151
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245536873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c87dc0b847c261f21ef782283a22940e79e10c72ff870cfccde1fdf1aef5af3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:17:37 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 08:10:58 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 08:10:59 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 08:11:00 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 08:11:00 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 08:18:20 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 08:18:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 08:18:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 08:18:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 08:18:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 08:18:25 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 09:41:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 09:42:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 09:42:18 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 09:42:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 09:42:24 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 09:42:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 09:44:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 09:44:39 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 09:44:40 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 09:44:41 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 16 Dec 2017 09:44:41 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 16 Dec 2017 09:44:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 09:55:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 09:56:01 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 07:38:49 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 07:38:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 07:38:50 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 07:38:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a53e0a8e02799d5ead42088144c13484b28b82955c2a96de580e4bdc62bb858`  
		Last Modified: Sat, 16 Dec 2017 08:28:12 GMT  
		Size: 35.5 MB (35463429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cec577dcdd91dfc791267268517ee58d40c5e66e65b6e668f3516e8fa27fea`  
		Last Modified: Sat, 16 Dec 2017 08:27:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb563a25d606ba84c3aecba7423a42f1d45c68341b243f00694e9561ccd523e5`  
		Last Modified: Sat, 16 Dec 2017 10:08:05 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a76f5fb4856f981c405bb2a3177c1c9c544e4ad8de8c06aa41bb54c064707f`  
		Last Modified: Sat, 16 Dec 2017 10:08:09 GMT  
		Size: 14.5 MB (14462688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dd6441fc7c7e8b3f32f26eef12bac5728375c490e892722fe541949c87a72a`  
		Last Modified: Sat, 16 Dec 2017 10:08:05 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b994561f73635fb83395384a045e10ad649c0b7af274aad357d8346ee305d3`  
		Last Modified: Sat, 16 Dec 2017 10:08:03 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408f9c4ce41de66dc7b39dda1a05de3991b8fd6c6d7aae697ff1a4d82c76d6b6`  
		Last Modified: Sat, 16 Dec 2017 10:08:21 GMT  
		Size: 55.8 MB (55784436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c15fe9a13535c8dbc9f78e09d663487fa6f0eca180432d7ab298dd0e3622e`  
		Last Modified: Sat, 16 Dec 2017 10:08:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b4075593ef05dcbffde6e85f9dc574e5e1ac9c6c4e11b454b56a2579141758`  
		Last Modified: Sat, 16 Dec 2017 10:08:03 GMT  
		Size: 2.4 MB (2390741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d5003ae62bae3279cc6f7744d70107657f3da040cd07d45b54cea408e9d937`  
		Last Modified: Sat, 16 Dec 2017 10:08:24 GMT  
		Size: 77.7 MB (77672739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365415b73ea970d0111dbf2599dbdc648050281e8e13b04f062b098bcfcc8ba5`  
		Last Modified: Wed, 20 Dec 2017 07:39:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:9ff3c57365f5ba37b8031250a8ad5659538c4edb60ac7c74414c192c6bcbc0d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255776165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e400731ca82b28ee7d3c9651826a33fb6c7adb4748a5caeeb8a3c348f21be46e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:32:29 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 05:06:29 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 05:06:29 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 05:10:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 05:10:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 05:10:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 05:10:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 05:10:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 05:10:02 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 06:04:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 06:04:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 06:04:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 06:04:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 06:04:59 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 06:05:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 06:06:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 06:06:06 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 06:06:06 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 06:06:07 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 16 Dec 2017 06:06:07 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 16 Dec 2017 06:06:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 06:09:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 06:09:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:09:58 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:09:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:09:58 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:09:59 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa3e02d70eda581cdc0f6c422538656a3972a1a93c9fd550013b2ed8f8a8e09`  
		Last Modified: Sat, 16 Dec 2017 05:34:29 GMT  
		Size: 32.8 MB (32832977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f970bb94a090cc26727e081ee8e1a61d3d446a1d691ca6f7346b7f823a09e2`  
		Last Modified: Sat, 16 Dec 2017 05:34:17 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b86562eb92651d812d914a4e71c28f1e892ea37f0796b1719787e97c5b0311`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b114877509f9cd45baedd81db0360f1d614e7fa6ed1caffdf2968c4df9a9de75`  
		Last Modified: Sat, 16 Dec 2017 06:29:21 GMT  
		Size: 14.8 MB (14817524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73404a4a29089cd0ff493b0c574382c07680e348d2decc327c46fb0f723e3f9f`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5183d46266274aeca8440b8d460a2c8a03ceb52da08b6d5da9867b36e3b5fda9`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817e8b412bd124fbaf2c69636008e0cd20e9d69920628a6e7e4330e8f6829193`  
		Last Modified: Sat, 16 Dec 2017 06:29:38 GMT  
		Size: 60.1 MB (60138793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabb14b5b7a4b9ce3747b0745049b26e051b849215eae3ef97b9e33cec4f2000`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7166776999d74f92ca8c0a9023d2380c8d821b8b5cf6e0cf9d7e258473afe30f`  
		Last Modified: Sat, 16 Dec 2017 06:29:21 GMT  
		Size: 2.4 MB (2390742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183566faad155a07ec549afbbc25b6c5cfaaaec7711582eafda233407e84e41`  
		Last Modified: Sat, 16 Dec 2017 06:29:38 GMT  
		Size: 77.7 MB (77677022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf096cbf866717f900d62891cf32be9f2127c59775b1c5cf284703504ac0bc6`  
		Last Modified: Wed, 20 Dec 2017 11:11:14 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:ad7791b6f70b262f2bca2f51f7bd1b46f7b9a33cb2e4db72be389f13ea55d46d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252596843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85a91d10291b3e2c8f98b3b80ba6016b35c47cd17bb3a395cf80f02b89f029f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:12:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:44:02 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:44:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 02:44:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:44:06 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:50:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:50:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:50:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:50:50 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:39:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:40:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:40:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:40:28 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:40:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:46:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:46:38 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:46:39 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:46:40 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 16 Dec 2017 03:46:42 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 16 Dec 2017 03:46:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 04:01:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 04:01:17 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 14:48:37 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 14:48:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 14:48:41 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 14:48:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e055298f66bd4d0135b6650424bbadb683f545e8d944638147a9bdba4e2fa4d5`  
		Last Modified: Sat, 16 Dec 2017 02:59:06 GMT  
		Size: 36.4 MB (36350809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960c41563af25a171ae4f416858e03ae68dce73e0536fabfb58580895e729d33`  
		Last Modified: Sat, 16 Dec 2017 02:58:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbb02c012a1bdb60de8e9b4cae5c454375c44a73853aa51e907d48825ca8c9a`  
		Last Modified: Sat, 16 Dec 2017 04:17:55 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c193da2e6e450685baf92f41fb5d1e6a74af690d2444110a886535693b5aed`  
		Last Modified: Sat, 16 Dec 2017 04:17:59 GMT  
		Size: 14.7 MB (14720291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6706acf587ac8abd6806d87ee9a274a55fcbc594602d9de20952359b0561cbc`  
		Last Modified: Sat, 16 Dec 2017 04:17:54 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bef4ce346eade32ae6c5af0ffc242f6a3d4fca8706984056f38a7120255e522`  
		Last Modified: Sat, 16 Dec 2017 04:17:53 GMT  
		Size: 8.6 KB (8635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5dd7041fbbc308bcd96ee36c6c5c70f26c2a50de82acc663e243de9aff5cae`  
		Last Modified: Sat, 16 Dec 2017 04:18:07 GMT  
		Size: 58.1 MB (58126517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a019ba0696a1f60fbeab48be4087a5b3709d3fbdd4f0b75fbebc36f38a68c60`  
		Last Modified: Sat, 16 Dec 2017 04:17:50 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31bcfd9651874c573499c1df20a20fa4b3971456d555ecb46dbab3db9fb43aa9`  
		Last Modified: Sat, 16 Dec 2017 04:17:52 GMT  
		Size: 2.4 MB (2391003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467f0567505b5c6e13e4da39b7ad8b083b3b1c00d72500d1b5ce72203a81d51c`  
		Last Modified: Sat, 16 Dec 2017 04:18:08 GMT  
		Size: 78.6 MB (78560312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec701f11263ebbd22dc635c92ad09d65fe33203872e816c7fc70733c859bf66`  
		Last Modified: Wed, 20 Dec 2017 14:49:29 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:b629d6af584349d1ce8b6776c129494b359cd158bf2c3c1ddd84c484e1dc9272
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259141721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3cdd2f1a66be5e5968fad3bcee7e8fd9465874794b092d2700d855fe8798689`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:11:57 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 10:00:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 10:00:05 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 10:02:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 10:02:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 10:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 10:02:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:30:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:30:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:30:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:30:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:53 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:30:53 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:30:53 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 10:30:54 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 10:30:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:33:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:33:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:33:16 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:33:16 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:33:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aecf1643b640bfe6355e9a2f45baaf98e042116267d7ea16b31c167433d75cc`  
		Last Modified: Wed, 29 Nov 2017 10:10:34 GMT  
		Size: 39.0 MB (38970539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af488ae7dbb0e3a499062c8f775e79ce5d5e8fb499cc3c32b68a5d2a96061e4`  
		Last Modified: Wed, 29 Nov 2017 10:10:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48259d29197d3370c94aa00fc20d073bc2176fcff0458a37fc7a93ccf2e2ba`  
		Last Modified: Wed, 29 Nov 2017 10:36:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68951b2cc3e0b486d49f2bf1a604dfc72920bb910b0f3a92beb255ab27ce1bc1`  
		Last Modified: Wed, 29 Nov 2017 10:36:52 GMT  
		Size: 14.8 MB (14815095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad8e9b077eeb77d47e6d422e4c7502c0bc698030e3d5a5a8983255ef3427e4`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b7991629e300e835043dfabe52cb7257b8c5e742b9e0a70a0545b2d1b7133f`  
		Last Modified: Wed, 29 Nov 2017 10:36:47 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1189eb3a43b5dcb29ce876b13411ed03bf2c90037856f4c340a91cf1a07471`  
		Last Modified: Wed, 29 Nov 2017 10:36:58 GMT  
		Size: 59.1 MB (59081157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e138f3c639fc2c03cc809c5c719e41f68c01a9f20c0d935ee50cfd5258dae3e2`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2638dc18bdad04e52254c595b0c55647ac5a28b34946dce6e2ef85ad689e883`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7be0a59c8d0d40515f6e6614fe848b59b37c3f662fd587c1e7e7ecfe3dc075`  
		Last Modified: Wed, 29 Nov 2017 10:36:59 GMT  
		Size: 80.6 MB (80635343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e996607c55dce7b0f00dc276b678f79e901f1047a67ad4ae78cfddba5287d0`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.5`

```console
$ docker pull redmine@sha256:7b8cb0445c0dcb8c5031ec6232a5c3bdb6ec8875613f0dbc72f9e4bbc1047f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.3.5` - linux; amd64

```console
$ docker pull redmine@sha256:dddb4eb22bb646fb366852e272ee8529388852850105e3d506e35d7e6a39f4af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253408504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ca4500677bc08a281bfbe2be622a3635f4f305261363db0810d6f086178235`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:42:53 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:45:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:45:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:45:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:45:27 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:45:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:45:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:45:29 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:45:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:55 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:45:55 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:45:55 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 23 Dec 2017 17:45:55 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 23 Dec 2017 17:46:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:48:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:48:08 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:48:08 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:48:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:48:08 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:48:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735aca31891341352266e3ea23b8c6e7699e729e9bcf06ab0e78f3930a8e4e8`  
		Last Modified: Sat, 23 Dec 2017 17:15:32 GMT  
		Size: 35.3 MB (35329522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f49679e315aceb5064276950121a64b85873fe147b04c568a584027792adae`  
		Last Modified: Sat, 23 Dec 2017 17:15:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec24383faaa33e931d9d4af21807939699cf94762250226054db2fe9bf6a5f8`  
		Last Modified: Sat, 23 Dec 2017 17:59:38 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15624b6f36d6e6d3a4a07da7d43459f75621df58ccf7ae6a263ff6643fb59f45`  
		Last Modified: Sat, 23 Dec 2017 17:59:41 GMT  
		Size: 14.7 MB (14650307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934cd1911d72662c182eb2447a805427f18bc1f456315fb5ea912e1216ee5aa`  
		Last Modified: Sat, 23 Dec 2017 17:59:36 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8031035112101af588296424194d8853817ce392d9dfe611f0e03b526f483483`  
		Last Modified: Sat, 23 Dec 2017 17:59:35 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e19378baaf2b9fc84cccf68fc81161e18c8d1c08c95240f73ef6c08e0b9dcc0`  
		Last Modified: Sat, 23 Dec 2017 17:59:47 GMT  
		Size: 59.3 MB (59266496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449bc95d3b73501cef1df5dd3b5a2e61578bd7e6bc171f9bf4f01634b97885f4`  
		Last Modified: Sat, 23 Dec 2017 17:59:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee6d35225a010115dc2c2e7a6f3717da8223c073e89c497e04da4e00bbeffcd`  
		Last Modified: Sat, 23 Dec 2017 17:59:36 GMT  
		Size: 2.4 MB (2390737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c422fd6735f4ad123e8f0eed3604e7d4f1902deadd71c4610327f7cdf840f74`  
		Last Modified: Sat, 23 Dec 2017 17:59:50 GMT  
		Size: 78.5 MB (78473405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9be53855b3297cee4c1b88e411cabec9c350b1d8e92c6805cd53bda8923419`  
		Last Modified: Sat, 23 Dec 2017 17:59:33 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm variant v5

```console
$ docker pull redmine@sha256:c88360b16e5410af377c201bedfd5c4d8b28dea4852195cabee0c43e0c3789a2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245739665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed800b3fab5a392653d23cafda4921b632dbbed3482f6d8b3180ad2441170dd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:32:48 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 03:04:41 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 03:04:41 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 03:09:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 03:09:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 03:09:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 03:09:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 03:09:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 03:09:04 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:36:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:36:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:36:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:36:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:36:59 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:37:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:37:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:37:59 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:37:59 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:37:59 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 16 Dec 2017 03:37:59 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 16 Dec 2017 03:38:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:42:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:42:30 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 19 Dec 2017 23:33:37 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Tue, 19 Dec 2017 23:33:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Dec 2017 23:33:37 GMT
EXPOSE 3000/tcp
# Tue, 19 Dec 2017 23:33:37 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de064d70e4b4dfdad56b2cd3afeb53dec46b4cc98505a22d8d620f75afc777e`  
		Last Modified: Sat, 16 Dec 2017 03:14:07 GMT  
		Size: 34.2 MB (34241566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfcd6d456ff5cf9cad0e42d42d19c94f7ff7cba299d7cb3285edec59c0932e7`  
		Last Modified: Sat, 16 Dec 2017 03:13:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d0aeb326cb19eed3f216e065157c8642842b8e416ba69704982254d0a110d9`  
		Last Modified: Sat, 16 Dec 2017 03:48:02 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60338e4dedf066edcf78d8707fceae88b7810bb7c58a8431a944df5ff4ce6e6`  
		Last Modified: Sat, 16 Dec 2017 03:48:06 GMT  
		Size: 14.3 MB (14347463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeeef6676b399c6e07765fe322e7d01b2e2fc9d92baa4f38732cf5d6bdaa4aa6`  
		Last Modified: Sat, 16 Dec 2017 03:48:01 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e554040c2f9375a475fbecf4bef8707807c2d400565a78bbfad7614fa313bc`  
		Last Modified: Sat, 16 Dec 2017 03:48:00 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566cc456eadd54684cbb7df64e07181c30573e9cff96f67c822c508222fc768d`  
		Last Modified: Sat, 16 Dec 2017 03:48:19 GMT  
		Size: 56.6 MB (56603680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3ff85b8af8557ebc775f486493bc2606be7d497902c4ca296a41e6190aed47`  
		Last Modified: Sat, 16 Dec 2017 03:47:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a057b45234603b1b4ec8bdbd8932673130f764e4821cdf2b6a3d350b5f90f0a0`  
		Last Modified: Sat, 16 Dec 2017 03:48:00 GMT  
		Size: 2.4 MB (2390999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a958fcd10317bc58a09e05ef42ce0072511e952e409ec43685534e370731ade`  
		Last Modified: Sat, 16 Dec 2017 03:48:18 GMT  
		Size: 77.6 MB (77637576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f638905b39afb1dde5feeceb620609e5f978040d35d5bcfea672320e1dfbec7`  
		Last Modified: Tue, 19 Dec 2017 23:34:05 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm variant v7

```console
$ docker pull redmine@sha256:4dde2344243839bbb9b2975458a0fece2840dda0dd7e155ecd78594e306d0927
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.9 MB (239938717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e25085112b6e72efc2e317106029df940414de045ba0b529c789bcb32a6b03f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:51:48 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:55:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:55:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:55:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:55:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:55:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:55:56 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:22:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:23:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:23:05 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:23:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:23:08 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:23:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:24:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:24:06 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:24:06 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:24:06 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 16 Dec 2017 03:24:07 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 16 Dec 2017 03:24:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:28:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:28:14 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:38:32 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:38:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:38:33 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:38:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7223d09f1cb793cbe643d94a5715772a997c89d08b3ec7091e4069f60394b8e`  
		Last Modified: Sat, 16 Dec 2017 03:00:55 GMT  
		Size: 34.0 MB (34036289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278edb26af50a7865c9da57b0a2241e09eae93dbdd861a77f190b3e300f662f4`  
		Last Modified: Sat, 16 Dec 2017 03:00:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfd0541a373a4fe7d7d0a43dd869ce10b0bdcc4d360087feb4d0d295b168dea`  
		Last Modified: Sat, 16 Dec 2017 03:33:46 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6391b17736085fc4ca056f8d53adc5317bae47737612dc0f0322590728dff2bc`  
		Last Modified: Sat, 16 Dec 2017 03:33:50 GMT  
		Size: 14.1 MB (14134531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d003e972b961ffc769a3feeeeb76427cda3bcff43e3ce79899b968eb1168dee1`  
		Last Modified: Sat, 16 Dec 2017 03:33:45 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf907fe7dbbd982fc758566b9c6ad1c76ece2880b3aee73fcfb53c9b1bc038`  
		Last Modified: Sat, 16 Dec 2017 03:33:45 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405baf35336d45897b5b92cb45237ae12d3a1174c726ef5b872b600df81b529d`  
		Last Modified: Sat, 16 Dec 2017 03:34:01 GMT  
		Size: 54.3 MB (54344910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3196bc25555b80ea8dee43bceaaa2071ce3f87effa226392f8cf2d8081f2c7f2`  
		Last Modified: Sat, 16 Dec 2017 03:33:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734778f60a2f223c918cd5edce9d5b1f2366edcf1afb1e7d5aef164ab8cabbad`  
		Last Modified: Sat, 16 Dec 2017 03:33:46 GMT  
		Size: 2.4 MB (2391002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8f8faf8fc849687a2230beb0e3167153e6a6597f2c07e5a160ffae3b1b1aca`  
		Last Modified: Sat, 16 Dec 2017 03:34:02 GMT  
		Size: 77.1 MB (77069153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965295325d8c64044f215b9e6d6d4ee41ddb3a43d131c99fbb4f1546cfe89062`  
		Last Modified: Wed, 20 Dec 2017 11:39:03 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:a25a99b41132247be263a6a1dc72b3fddf7f950cc0f963df43f4f6263ef87151
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245536873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c87dc0b847c261f21ef782283a22940e79e10c72ff870cfccde1fdf1aef5af3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:17:37 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 08:10:58 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 08:10:59 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 08:11:00 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 08:11:00 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 08:18:20 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 08:18:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 08:18:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 08:18:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 08:18:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 08:18:25 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 09:41:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 09:42:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 09:42:18 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 09:42:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 09:42:24 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 09:42:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 09:44:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 09:44:39 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 09:44:40 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 09:44:41 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 16 Dec 2017 09:44:41 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 16 Dec 2017 09:44:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 09:55:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 09:56:01 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 07:38:49 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 07:38:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 07:38:50 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 07:38:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a53e0a8e02799d5ead42088144c13484b28b82955c2a96de580e4bdc62bb858`  
		Last Modified: Sat, 16 Dec 2017 08:28:12 GMT  
		Size: 35.5 MB (35463429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cec577dcdd91dfc791267268517ee58d40c5e66e65b6e668f3516e8fa27fea`  
		Last Modified: Sat, 16 Dec 2017 08:27:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb563a25d606ba84c3aecba7423a42f1d45c68341b243f00694e9561ccd523e5`  
		Last Modified: Sat, 16 Dec 2017 10:08:05 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a76f5fb4856f981c405bb2a3177c1c9c544e4ad8de8c06aa41bb54c064707f`  
		Last Modified: Sat, 16 Dec 2017 10:08:09 GMT  
		Size: 14.5 MB (14462688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dd6441fc7c7e8b3f32f26eef12bac5728375c490e892722fe541949c87a72a`  
		Last Modified: Sat, 16 Dec 2017 10:08:05 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b994561f73635fb83395384a045e10ad649c0b7af274aad357d8346ee305d3`  
		Last Modified: Sat, 16 Dec 2017 10:08:03 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408f9c4ce41de66dc7b39dda1a05de3991b8fd6c6d7aae697ff1a4d82c76d6b6`  
		Last Modified: Sat, 16 Dec 2017 10:08:21 GMT  
		Size: 55.8 MB (55784436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c15fe9a13535c8dbc9f78e09d663487fa6f0eca180432d7ab298dd0e3622e`  
		Last Modified: Sat, 16 Dec 2017 10:08:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b4075593ef05dcbffde6e85f9dc574e5e1ac9c6c4e11b454b56a2579141758`  
		Last Modified: Sat, 16 Dec 2017 10:08:03 GMT  
		Size: 2.4 MB (2390741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d5003ae62bae3279cc6f7744d70107657f3da040cd07d45b54cea408e9d937`  
		Last Modified: Sat, 16 Dec 2017 10:08:24 GMT  
		Size: 77.7 MB (77672739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365415b73ea970d0111dbf2599dbdc648050281e8e13b04f062b098bcfcc8ba5`  
		Last Modified: Wed, 20 Dec 2017 07:39:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; 386

```console
$ docker pull redmine@sha256:9ff3c57365f5ba37b8031250a8ad5659538c4edb60ac7c74414c192c6bcbc0d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255776165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e400731ca82b28ee7d3c9651826a33fb6c7adb4748a5caeeb8a3c348f21be46e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:32:29 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 05:06:29 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 05:06:29 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 05:10:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 05:10:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 05:10:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 05:10:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 05:10:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 05:10:02 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 06:04:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 06:04:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 06:04:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 06:04:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 06:04:59 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 06:05:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 06:06:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 06:06:06 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 06:06:06 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 06:06:07 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 16 Dec 2017 06:06:07 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 16 Dec 2017 06:06:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 06:09:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 06:09:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:09:58 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:09:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:09:58 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:09:59 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa3e02d70eda581cdc0f6c422538656a3972a1a93c9fd550013b2ed8f8a8e09`  
		Last Modified: Sat, 16 Dec 2017 05:34:29 GMT  
		Size: 32.8 MB (32832977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f970bb94a090cc26727e081ee8e1a61d3d446a1d691ca6f7346b7f823a09e2`  
		Last Modified: Sat, 16 Dec 2017 05:34:17 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b86562eb92651d812d914a4e71c28f1e892ea37f0796b1719787e97c5b0311`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b114877509f9cd45baedd81db0360f1d614e7fa6ed1caffdf2968c4df9a9de75`  
		Last Modified: Sat, 16 Dec 2017 06:29:21 GMT  
		Size: 14.8 MB (14817524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73404a4a29089cd0ff493b0c574382c07680e348d2decc327c46fb0f723e3f9f`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5183d46266274aeca8440b8d460a2c8a03ceb52da08b6d5da9867b36e3b5fda9`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817e8b412bd124fbaf2c69636008e0cd20e9d69920628a6e7e4330e8f6829193`  
		Last Modified: Sat, 16 Dec 2017 06:29:38 GMT  
		Size: 60.1 MB (60138793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabb14b5b7a4b9ce3747b0745049b26e051b849215eae3ef97b9e33cec4f2000`  
		Last Modified: Sat, 16 Dec 2017 06:29:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7166776999d74f92ca8c0a9023d2380c8d821b8b5cf6e0cf9d7e258473afe30f`  
		Last Modified: Sat, 16 Dec 2017 06:29:21 GMT  
		Size: 2.4 MB (2390742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183566faad155a07ec549afbbc25b6c5cfaaaec7711582eafda233407e84e41`  
		Last Modified: Sat, 16 Dec 2017 06:29:38 GMT  
		Size: 77.7 MB (77677022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf096cbf866717f900d62891cf32be9f2127c59775b1c5cf284703504ac0bc6`  
		Last Modified: Wed, 20 Dec 2017 11:11:14 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; ppc64le

```console
$ docker pull redmine@sha256:ad7791b6f70b262f2bca2f51f7bd1b46f7b9a33cb2e4db72be389f13ea55d46d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252596843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85a91d10291b3e2c8f98b3b80ba6016b35c47cd17bb3a395cf80f02b89f029f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:12:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:44:02 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:44:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sat, 16 Dec 2017 02:44:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:44:06 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:50:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:50:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:50:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:50:50 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:39:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:40:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:40:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:40:28 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:40:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:46:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:46:38 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:46:39 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:46:40 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 16 Dec 2017 03:46:42 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 16 Dec 2017 03:46:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 04:01:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 04:01:17 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 14:48:37 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 14:48:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 14:48:41 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 14:48:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e055298f66bd4d0135b6650424bbadb683f545e8d944638147a9bdba4e2fa4d5`  
		Last Modified: Sat, 16 Dec 2017 02:59:06 GMT  
		Size: 36.4 MB (36350809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960c41563af25a171ae4f416858e03ae68dce73e0536fabfb58580895e729d33`  
		Last Modified: Sat, 16 Dec 2017 02:58:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbb02c012a1bdb60de8e9b4cae5c454375c44a73853aa51e907d48825ca8c9a`  
		Last Modified: Sat, 16 Dec 2017 04:17:55 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c193da2e6e450685baf92f41fb5d1e6a74af690d2444110a886535693b5aed`  
		Last Modified: Sat, 16 Dec 2017 04:17:59 GMT  
		Size: 14.7 MB (14720291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6706acf587ac8abd6806d87ee9a274a55fcbc594602d9de20952359b0561cbc`  
		Last Modified: Sat, 16 Dec 2017 04:17:54 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bef4ce346eade32ae6c5af0ffc242f6a3d4fca8706984056f38a7120255e522`  
		Last Modified: Sat, 16 Dec 2017 04:17:53 GMT  
		Size: 8.6 KB (8635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5dd7041fbbc308bcd96ee36c6c5c70f26c2a50de82acc663e243de9aff5cae`  
		Last Modified: Sat, 16 Dec 2017 04:18:07 GMT  
		Size: 58.1 MB (58126517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a019ba0696a1f60fbeab48be4087a5b3709d3fbdd4f0b75fbebc36f38a68c60`  
		Last Modified: Sat, 16 Dec 2017 04:17:50 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31bcfd9651874c573499c1df20a20fa4b3971456d555ecb46dbab3db9fb43aa9`  
		Last Modified: Sat, 16 Dec 2017 04:17:52 GMT  
		Size: 2.4 MB (2391003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467f0567505b5c6e13e4da39b7ad8b083b3b1c00d72500d1b5ce72203a81d51c`  
		Last Modified: Sat, 16 Dec 2017 04:18:08 GMT  
		Size: 78.6 MB (78560312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec701f11263ebbd22dc635c92ad09d65fe33203872e816c7fc70733c859bf66`  
		Last Modified: Wed, 20 Dec 2017 14:49:29 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; s390x

```console
$ docker pull redmine@sha256:b629d6af584349d1ce8b6776c129494b359cd158bf2c3c1ddd84c484e1dc9272
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259141721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3cdd2f1a66be5e5968fad3bcee7e8fd9465874794b092d2700d855fe8798689`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:11:57 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 10:00:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 10:00:05 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 10:02:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 10:02:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 10:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 10:02:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:30:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:30:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:30:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:30:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:53 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:30:53 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:30:53 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 10:30:54 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 10:30:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:33:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:33:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:33:16 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:33:16 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:33:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aecf1643b640bfe6355e9a2f45baaf98e042116267d7ea16b31c167433d75cc`  
		Last Modified: Wed, 29 Nov 2017 10:10:34 GMT  
		Size: 39.0 MB (38970539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af488ae7dbb0e3a499062c8f775e79ce5d5e8fb499cc3c32b68a5d2a96061e4`  
		Last Modified: Wed, 29 Nov 2017 10:10:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48259d29197d3370c94aa00fc20d073bc2176fcff0458a37fc7a93ccf2e2ba`  
		Last Modified: Wed, 29 Nov 2017 10:36:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68951b2cc3e0b486d49f2bf1a604dfc72920bb910b0f3a92beb255ab27ce1bc1`  
		Last Modified: Wed, 29 Nov 2017 10:36:52 GMT  
		Size: 14.8 MB (14815095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad8e9b077eeb77d47e6d422e4c7502c0bc698030e3d5a5a8983255ef3427e4`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b7991629e300e835043dfabe52cb7257b8c5e742b9e0a70a0545b2d1b7133f`  
		Last Modified: Wed, 29 Nov 2017 10:36:47 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1189eb3a43b5dcb29ce876b13411ed03bf2c90037856f4c340a91cf1a07471`  
		Last Modified: Wed, 29 Nov 2017 10:36:58 GMT  
		Size: 59.1 MB (59081157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e138f3c639fc2c03cc809c5c719e41f68c01a9f20c0d935ee50cfd5258dae3e2`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2638dc18bdad04e52254c595b0c55647ac5a28b34946dce6e2ef85ad689e883`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7be0a59c8d0d40515f6e6614fe848b59b37c3f662fd587c1e7e7ecfe3dc075`  
		Last Modified: Wed, 29 Nov 2017 10:36:59 GMT  
		Size: 80.6 MB (80635343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e996607c55dce7b0f00dc276b678f79e901f1047a67ad4ae78cfddba5287d0`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.5-passenger`

```console
$ docker pull redmine@sha256:870e71b2df077605eab8fe76029ca12b184d8582e88b86422d01ac36f7819464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.5-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:382c6dbc7221d1f132d3f2614e51393c94163e37fa3c347145c63c55524a90cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270237899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1acba144b116330021ac46a34c99af2aea7b8f9fccb624e52f90ba8c8cb8fc6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:42:53 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:45:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:45:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:45:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:45:27 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:45:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:45:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:45:29 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:45:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:55 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:45:55 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:45:55 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 23 Dec 2017 17:45:55 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 23 Dec 2017 17:46:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:48:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:48:08 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:48:08 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:48:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:48:08 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:48:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 23 Dec 2017 17:53:32 GMT
ENV PASSENGER_VERSION=5.1.12
# Sat, 23 Dec 2017 17:53:48 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:53:49 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 23 Dec 2017 17:53:49 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735aca31891341352266e3ea23b8c6e7699e729e9bcf06ab0e78f3930a8e4e8`  
		Last Modified: Sat, 23 Dec 2017 17:15:32 GMT  
		Size: 35.3 MB (35329522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f49679e315aceb5064276950121a64b85873fe147b04c568a584027792adae`  
		Last Modified: Sat, 23 Dec 2017 17:15:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec24383faaa33e931d9d4af21807939699cf94762250226054db2fe9bf6a5f8`  
		Last Modified: Sat, 23 Dec 2017 17:59:38 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15624b6f36d6e6d3a4a07da7d43459f75621df58ccf7ae6a263ff6643fb59f45`  
		Last Modified: Sat, 23 Dec 2017 17:59:41 GMT  
		Size: 14.7 MB (14650307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934cd1911d72662c182eb2447a805427f18bc1f456315fb5ea912e1216ee5aa`  
		Last Modified: Sat, 23 Dec 2017 17:59:36 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8031035112101af588296424194d8853817ce392d9dfe611f0e03b526f483483`  
		Last Modified: Sat, 23 Dec 2017 17:59:35 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e19378baaf2b9fc84cccf68fc81161e18c8d1c08c95240f73ef6c08e0b9dcc0`  
		Last Modified: Sat, 23 Dec 2017 17:59:47 GMT  
		Size: 59.3 MB (59266496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449bc95d3b73501cef1df5dd3b5a2e61578bd7e6bc171f9bf4f01634b97885f4`  
		Last Modified: Sat, 23 Dec 2017 17:59:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee6d35225a010115dc2c2e7a6f3717da8223c073e89c497e04da4e00bbeffcd`  
		Last Modified: Sat, 23 Dec 2017 17:59:36 GMT  
		Size: 2.4 MB (2390737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c422fd6735f4ad123e8f0eed3604e7d4f1902deadd71c4610327f7cdf840f74`  
		Last Modified: Sat, 23 Dec 2017 17:59:50 GMT  
		Size: 78.5 MB (78473405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9be53855b3297cee4c1b88e411cabec9c350b1d8e92c6805cd53bda8923419`  
		Last Modified: Sat, 23 Dec 2017 17:59:33 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f46f77f7213f0301ac09254ae4cb2dfe4d3a6ab845852cd7a08064acdbf4776`  
		Last Modified: Sat, 23 Dec 2017 18:00:23 GMT  
		Size: 12.8 MB (12752479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bec144cde6766dc1edf88b02201340d21312e0d0247ba7bf6ee05c7eab2abbf`  
		Last Modified: Sat, 23 Dec 2017 18:00:18 GMT  
		Size: 4.1 MB (4076916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:870e71b2df077605eab8fe76029ca12b184d8582e88b86422d01ac36f7819464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:382c6dbc7221d1f132d3f2614e51393c94163e37fa3c347145c63c55524a90cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270237899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1acba144b116330021ac46a34c99af2aea7b8f9fccb624e52f90ba8c8cb8fc6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:42:53 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:45:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:45:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:45:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:45:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:45:27 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:45:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:45:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:45:29 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:45:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:45:55 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:45:55 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:45:55 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 23 Dec 2017 17:45:55 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 23 Dec 2017 17:46:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:48:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:48:08 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:48:08 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:48:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:48:08 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:48:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 23 Dec 2017 17:53:32 GMT
ENV PASSENGER_VERSION=5.1.12
# Sat, 23 Dec 2017 17:53:48 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:53:49 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 23 Dec 2017 17:53:49 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735aca31891341352266e3ea23b8c6e7699e729e9bcf06ab0e78f3930a8e4e8`  
		Last Modified: Sat, 23 Dec 2017 17:15:32 GMT  
		Size: 35.3 MB (35329522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f49679e315aceb5064276950121a64b85873fe147b04c568a584027792adae`  
		Last Modified: Sat, 23 Dec 2017 17:15:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec24383faaa33e931d9d4af21807939699cf94762250226054db2fe9bf6a5f8`  
		Last Modified: Sat, 23 Dec 2017 17:59:38 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15624b6f36d6e6d3a4a07da7d43459f75621df58ccf7ae6a263ff6643fb59f45`  
		Last Modified: Sat, 23 Dec 2017 17:59:41 GMT  
		Size: 14.7 MB (14650307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934cd1911d72662c182eb2447a805427f18bc1f456315fb5ea912e1216ee5aa`  
		Last Modified: Sat, 23 Dec 2017 17:59:36 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8031035112101af588296424194d8853817ce392d9dfe611f0e03b526f483483`  
		Last Modified: Sat, 23 Dec 2017 17:59:35 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e19378baaf2b9fc84cccf68fc81161e18c8d1c08c95240f73ef6c08e0b9dcc0`  
		Last Modified: Sat, 23 Dec 2017 17:59:47 GMT  
		Size: 59.3 MB (59266496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449bc95d3b73501cef1df5dd3b5a2e61578bd7e6bc171f9bf4f01634b97885f4`  
		Last Modified: Sat, 23 Dec 2017 17:59:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee6d35225a010115dc2c2e7a6f3717da8223c073e89c497e04da4e00bbeffcd`  
		Last Modified: Sat, 23 Dec 2017 17:59:36 GMT  
		Size: 2.4 MB (2390737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c422fd6735f4ad123e8f0eed3604e7d4f1902deadd71c4610327f7cdf840f74`  
		Last Modified: Sat, 23 Dec 2017 17:59:50 GMT  
		Size: 78.5 MB (78473405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9be53855b3297cee4c1b88e411cabec9c350b1d8e92c6805cd53bda8923419`  
		Last Modified: Sat, 23 Dec 2017 17:59:33 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f46f77f7213f0301ac09254ae4cb2dfe4d3a6ab845852cd7a08064acdbf4776`  
		Last Modified: Sat, 23 Dec 2017 18:00:23 GMT  
		Size: 12.8 MB (12752479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bec144cde6766dc1edf88b02201340d21312e0d0247ba7bf6ee05c7eab2abbf`  
		Last Modified: Sat, 23 Dec 2017 18:00:18 GMT  
		Size: 4.1 MB (4076916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:d2450d424c155071ec0ca82a75719012f55504815dc0ef5b4d4e96d829a1dbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.4` - linux; amd64

```console
$ docker pull redmine@sha256:6ff626e3de671421559517e852349bb315962a553b8a8c3b11d6d446bf3b2f92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242198058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70c41140b038be6fe637b6849f95c7f80553d1f21396c0619e4ae287c1a90b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:17:16 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:20:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:20:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:20:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:20:29 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:34:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:34:37 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:34:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:34:42 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:34:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:35:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:35:19 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:35:19 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 17:35:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:37:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:37:55 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:37:55 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:37:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:37:55 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:37:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd469839a6522fbd1f08ba2bdecdc44ef90a60f368e05b019a4e696d611e39f`  
		Last Modified: Sat, 23 Dec 2017 17:05:45 GMT  
		Size: 24.7 MB (24740339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d7c36754eed3ef8090b44e3cc9d7a10441ade1dc2171fe17e0ff9cd498a405`  
		Last Modified: Sat, 23 Dec 2017 17:05:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6062536746c95547fdd48b07faa60669935da8a346fce6da19338108f4741`  
		Last Modified: Sat, 23 Dec 2017 17:57:42 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81c38880660541e6eda1038c0d184389663487afc5d9e076fed2bbb25514299`  
		Last Modified: Sat, 23 Dec 2017 17:57:44 GMT  
		Size: 14.7 MB (14650284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913a93200e1eed8fd8db0b7867200373c89a89fe0bf2ab7ff73085e40efbdcca`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b726ccac287e7d1fda4939a4f770ec7fd37d42e8e52f236698cff58b8730d7`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7092d9a5b5212023e23052f67ff850075f83886fcb6df19adaa4d7eba75cf44b`  
		Last Modified: Sat, 23 Dec 2017 17:57:52 GMT  
		Size: 59.3 MB (59267135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cb2fbcc5a13b3a9ffc1f86c226ebf45782a1e269ba86d908e551969d506b90`  
		Last Modified: Sat, 23 Dec 2017 17:57:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa6bc798a3037cbfca7ff52b986727b738ad46a8da3dda90a651168f6b602ae`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32b3dbce00433a55c43bb548c62ebb3e40f622d8317057ed098bfde3ea804ce`  
		Last Modified: Sat, 23 Dec 2017 17:57:54 GMT  
		Size: 77.8 MB (77792518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3db6b583188625dfb29ffc383fa6c9f9bf8ef6f22aa767194514e19e4c3221`  
		Last Modified: Sat, 23 Dec 2017 17:57:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:10753649f2559473153e27b37c305e130f253917cd8c4c389ac7c53ead241935
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.3 MB (235339480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314499549bf8c9ca125614164afc13048f40bbc848696daa4cd62abee1fda055`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:20:44 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 02:44:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:44:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:50:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:50:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:50:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:50:46 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:29:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:30:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:30:17 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:30:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:30:20 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:30:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:31:27 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:31:27 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:31:27 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 03:31:28 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 03:31:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:36:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:36:06 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 19 Dec 2017 23:33:31 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Tue, 19 Dec 2017 23:33:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Dec 2017 23:33:31 GMT
EXPOSE 3000/tcp
# Tue, 19 Dec 2017 23:33:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ed72ef746915a188cc7e630cfea8bd0599efb6d0646e2e79ae01a971b2d1f7`  
		Last Modified: Sat, 16 Dec 2017 03:11:47 GMT  
		Size: 24.5 MB (24494687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c00cc9670c6ef7915e209234c19cac53fef6d374a11e5e74559c0c682fc57`  
		Last Modified: Sat, 16 Dec 2017 03:11:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee7d475924fc070199caeb9e98c181afd4f02cfe258f6ee04fb3b1cff15ae60`  
		Last Modified: Sat, 16 Dec 2017 03:47:30 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fed1f2a791a1a2841412624abe5604d500a40e7b2d71742150568d38343399d`  
		Last Modified: Sat, 16 Dec 2017 03:47:34 GMT  
		Size: 14.3 MB (14347484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be321b14a2e1fee25f2892a5e2beae9ed40f72ecffc505dcf0b8ad7eb784ae84`  
		Last Modified: Sat, 16 Dec 2017 03:47:28 GMT  
		Size: 491.1 KB (491122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cce1975a860ab1caf36b03ca05d8e4bbeeb192c017c8e1e1b21b5a907eb256`  
		Last Modified: Sat, 16 Dec 2017 03:47:28 GMT  
		Size: 7.8 KB (7840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd43b2c0a4ecee8db6f2ad170a8d7c6ebaae33583be4b6aabf9a3177bff58f0f`  
		Last Modified: Sat, 16 Dec 2017 03:47:46 GMT  
		Size: 56.6 MB (56603824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaa8db3843a5eebcea5414da88b08cf372ae410d51529cd01ecaaa77817fd77`  
		Last Modified: Sat, 16 Dec 2017 03:47:27 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbace6c51e02aedb7b77b6d42b81ea71bf7ff044bca471c477611b8258e13f37`  
		Last Modified: Sat, 16 Dec 2017 03:47:28 GMT  
		Size: 2.5 MB (2450397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80d5d79f583ec90305d3025295d29ebbe5040399d8b50e0d1f19a6097aae16f`  
		Last Modified: Sat, 16 Dec 2017 03:47:46 GMT  
		Size: 76.9 MB (76924725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd279afb6b7fd49bd55321164014bda3e7c429ccb3d592495619fec84556df`  
		Last Modified: Tue, 19 Dec 2017 23:33:53 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:fe61984bd99511d9a531081d036134e6e22a5c7f7e8f4caa69a8d7367e09bb38
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229634670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e87941872c6d1d2f614670fefd1d92bb4c8443d712547ad5094437a4681156df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:08:23 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 02:32:50 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:32:50 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:38:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:38:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:38:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:38:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:38:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:38:20 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:16:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:17:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:17:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:17:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:17:15 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:17:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:18:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:18:10 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:18:10 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:18:10 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 03:18:10 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 03:18:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:22:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:22:25 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:38:26 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:38:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:38:27 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:38:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96bd6afd81903325c3620104a65b1880f48d45f043444d92ab61fb03d2dd3e7`  
		Last Modified: Sat, 16 Dec 2017 02:58:37 GMT  
		Size: 24.4 MB (24367759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1088a3e93a97702c3b9b0a7c7099419b31eee6b7bc212d91bf5fba0ef87a09`  
		Last Modified: Sat, 16 Dec 2017 02:58:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7854a626b2922bd93017d58132d17abccb46b8a00e5a99b3d631b2a69a113572`  
		Last Modified: Sat, 16 Dec 2017 03:33:15 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6bd951d2ab0aea342b3b5f0b5aaf1284d75e8dfb35530f929880892791833e`  
		Last Modified: Sat, 16 Dec 2017 03:33:19 GMT  
		Size: 14.1 MB (14134534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ec95bbea37c5d856c131393911bf3c08ad5a7e71b4c72bc7d01897cdb8fd47`  
		Last Modified: Sat, 16 Dec 2017 03:33:14 GMT  
		Size: 475.3 KB (475270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f5e854136e151cacf5cef51a7db31416c9362f9b583cff2a890970c3020e4c`  
		Last Modified: Sat, 16 Dec 2017 03:33:14 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d63aaff3871b4821844f1d116393ba3f3858febe246ac085477f0bc8eedb06`  
		Last Modified: Sat, 16 Dec 2017 03:33:29 GMT  
		Size: 54.3 MB (54344971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2019b8c9934ba6cffbb578ddd2f0ee804de91c9223e5130d180d6099b3f39b89`  
		Last Modified: Sat, 16 Dec 2017 03:33:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992e59d8a803995e25a8aa670e5cdb8d93a108e1c64864199f25edc45bb1114e`  
		Last Modified: Sat, 16 Dec 2017 03:33:14 GMT  
		Size: 2.5 MB (2450398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2454dba8ce8caa9170193c1357ceac7ce07c833f10e76c6d57d8cf4fd34080b`  
		Last Modified: Sat, 16 Dec 2017 03:33:30 GMT  
		Size: 76.4 MB (76374165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbd8a2ea58ebb3670ca59752ea924f4894423c3d80b08f9577068bb7f8c994f`  
		Last Modified: Wed, 20 Dec 2017 11:38:48 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b17a0f9257a6948dc53913c9b803eb05d507882214432c18f7a6fd20499a4523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234187855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757c61dea8c6ced66debc13be112ff6c3e209779244b73f7bcb27c7cc39a4eb4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:58:30 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 07:25:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 07:25:37 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 07:25:38 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 22:20:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 22:29:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 22:29:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 22:29:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 22:29:42 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 23:41:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 23:41:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:41:48 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 23:41:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 23:41:53 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 23:41:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 23:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:43:42 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 23:43:43 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 23:43:43 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 23:43:44 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 23:43:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 23:52:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 23:52:35 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 23:52:35 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 23:52:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 23:52:37 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 23:52:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8673c51c001a9bf984638ff32ca9b69fa55a922346ec362712f527ef8e90e004`  
		Last Modified: Sat, 23 Dec 2017 23:18:55 GMT  
		Size: 24.7 MB (24690330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312aafa818a3dfc76b9218fd4ca103e51b3a22b7f2b54eed603e2c8681819a14`  
		Last Modified: Sat, 23 Dec 2017 23:18:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0f66ef40a62d6b4a4dedc2cb19d378d137333c9d381fc1cd6ed8cb4a4c58eb`  
		Last Modified: Sun, 24 Dec 2017 00:16:27 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc4aff65cbd5771a1380192a68b0e8d8a8c4fa75d03bdb9dddb81b9d609ea`  
		Last Modified: Sun, 24 Dec 2017 00:16:32 GMT  
		Size: 14.5 MB (14462615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f3f2e8c9e1fbc6c4eadd4a743a4983504129bce2f5075ccb02f5c4a0630f79`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727fe3851448999b0543d69f71c0028d2c5ae5ea53638fa8a27c675422bf8a7a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f6c5c343c2354301d6c766b2f7617190aba81d8b02f09a04003cd694d1cf13`  
		Last Modified: Sun, 24 Dec 2017 00:16:44 GMT  
		Size: 55.8 MB (55784093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1fb5b33bc1a9f117df393b3a1e3ea4648faf0bf79be03ecc0077b454e75878`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aabb1abccd026bf5fba3d080bdc7787892e69773bbe8edcb12c78160a80079a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c655ead65d625ac898875e056beb27e00ac5a3016e5e12169134dab1bf36b889`  
		Last Modified: Sun, 24 Dec 2017 00:16:46 GMT  
		Size: 77.0 MB (77038232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e91657b9404f53c5e9abbec3f5d5120a622ffe8ecf04f3d2c0b5abf7dbbef8`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:e9e7089b899280227b06704914c27200aad4ff546c3b6e24d518152973b27762
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246074063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ceb90ed0c1cbfa43852aa0f4e17eb49fdc0789467e32c125d025eecdb08c7fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:03:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 04:21:37 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 04:25:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 04:25:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 04:25:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 04:25:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 04:25:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 04:25:48 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 05:52:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 05:53:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 05:53:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 05:53:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 05:53:24 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 05:53:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 05:54:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 05:54:18 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 05:54:18 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 05:54:19 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 05:54:19 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 05:54:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 05:57:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 05:57:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:09:46 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:09:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:09:47 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:09:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedb168488ef385764fefa9492e3416579caf66b505c1013056747f2e2646d56`  
		Last Modified: Sat, 16 Dec 2017 05:24:02 GMT  
		Size: 23.7 MB (23729301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da863ac6556bc896e343deb5897bd853823b33f68fccc98ae8f8b24c72c46cc`  
		Last Modified: Sat, 16 Dec 2017 05:23:52 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f604d96b83184ec8627df7cf65f7b75a3e22d821f285ca46291842c7aeabd`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c599acc9a0e94fe90b62e25c46f91cd45d400b3966eb9cd6e3e6de2633270e`  
		Last Modified: Sat, 16 Dec 2017 06:27:06 GMT  
		Size: 14.8 MB (14817506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c108d683f3f3cf17778f1dea4cc92d603a5aa6724c3cb249cc3e7960a9da5385`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760e53909e79ab1314b658dab0969637da0e2cb198574c60a062d6007e6768ba`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0fd31d5b5dee7275e8c10a45a1d2908ad4f3ddea82d0a932d29ae22e20f14f`  
		Last Modified: Sat, 16 Dec 2017 06:27:24 GMT  
		Size: 60.1 MB (60138793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0519e82e66d2882753f11109065df52817c3b75c52bb254f1142d509418dc4`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcf7bbaee03f465969af21e25ab6a0932a84fe2e6072171532c9d6e50a449c8`  
		Last Modified: Sat, 16 Dec 2017 06:27:06 GMT  
		Size: 2.4 MB (2449733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fc3684c9ce0205e1b1cb18edcfc971ca5d192fc161e8dafc1ebae27b109966`  
		Last Modified: Sat, 16 Dec 2017 06:27:22 GMT  
		Size: 77.0 MB (77019626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49393338443c23b28659f81a7bbdcc983c3ba456aa054ea79d037231e627f80`  
		Last Modified: Wed, 20 Dec 2017 11:10:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:8623a2cddde89caf3311ca409acf067b4a24430609d70ffa908f26227aa7b974
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240801782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108c532b50f39fa7d861f2e6169086ec50359b0567166bb7a4ebcd09490bb9b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:31:17 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 02:06:19 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:06:20 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:14:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:14:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:14:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:14:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:14:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:14:44 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:15:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:15:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:15:44 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:15:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:15:54 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:15:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:19:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:19:01 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:19:03 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:19:05 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 03:19:06 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 03:19:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:38:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:38:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 14:48:25 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 14:48:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 14:48:29 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 14:48:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1280a0c3a29f18b35966d72ec2c3205327d2397be1a40d1f3230f4b9bd81bba`  
		Last Modified: Sat, 16 Dec 2017 02:55:09 GMT  
		Size: 25.2 MB (25180250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3d394822bc4380d26b639f96913d425e9fdcc7044db2dc4b71385da1679ba8`  
		Last Modified: Sat, 16 Dec 2017 02:55:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a757469dfdb2fd943ff16fe23a0b67ffbec61903cdb8854dffc14f469e9bb83e`  
		Last Modified: Sat, 16 Dec 2017 04:17:08 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03140562c7ec0e4316469efb8d1f6c07828927bba4c860cafa387d26f678bd8`  
		Last Modified: Sat, 16 Dec 2017 04:17:09 GMT  
		Size: 14.7 MB (14720274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210575da7856a03347a536ac5d861390b1645a795408962ebb252fb3c53185a0`  
		Last Modified: Sat, 16 Dec 2017 04:17:05 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f5494253bf23f0bd93d8076b0cf534296e3585e83fee3f382a8a4cd7f49b28`  
		Last Modified: Sat, 16 Dec 2017 04:17:05 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2622a9a7f39898687d7cce76e6212d1f5bf54b3883cf12931507f94779759d8`  
		Last Modified: Sat, 16 Dec 2017 04:17:28 GMT  
		Size: 58.1 MB (58126030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2333cd0366778b94a014a36190a3298cc0c65be5b2efc3a8a2bf0346ab3b17`  
		Last Modified: Sat, 16 Dec 2017 04:17:01 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4769495f0b69270cdf2efb4d996676fe565b2ee8bc033abc41eecaf22319a59`  
		Last Modified: Sat, 16 Dec 2017 04:17:03 GMT  
		Size: 2.5 MB (2450390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e3f51e74dde4921c82ec66a3bcf73fc565222fec4f1ae480417febae4cf91d`  
		Last Modified: Sat, 16 Dec 2017 04:17:17 GMT  
		Size: 77.9 MB (77876929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab32d9f3224dbed03ac28d5de2c38e1400026838c1749bce8d4ddd1c1d2f2f9`  
		Last Modified: Wed, 20 Dec 2017 14:49:05 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:5427407fea74009d757762b807075c30871317b91f9ec1df560a75cbde3bd29f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244737088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c668a254a4bdd63e46f6e2227a1323576949f2f4cae692d2b7807600bfc1e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:59:56 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 09:45:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 09:45:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 09:49:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 09:49:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 09:49:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 09:49:02 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:26:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:26:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:26:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:26:46 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:26:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:27:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:27:21 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:27:21 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 10:27:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:29:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:29:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:29:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:29:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:29:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d4ee3f2152ec599a26f35e14003e134c639db2f56399563c1726a8b7a8d29a`  
		Last Modified: Wed, 29 Nov 2017 10:07:07 GMT  
		Size: 25.1 MB (25111185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951848c9263d526779afb0312759897b5d73819b19ac1c2f12c68ccc05a977af`  
		Last Modified: Wed, 29 Nov 2017 10:07:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe2550444116bdfc46721f26860f83c0422bc33bcef6ae8b9f3bf3ed8ea5c1`  
		Last Modified: Wed, 29 Nov 2017 10:36:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a53223f31c10d034019dc8488f9dfdeb46f2b9429098d6c65b8600ca2146c`  
		Last Modified: Wed, 29 Nov 2017 10:36:13 GMT  
		Size: 14.8 MB (14815027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639d76a25bbb1bf06d9c487892a8fbf3e296a2092f5ce2386481188b883a3b3`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384c1671418080426f0bfbe9e5f1fb477aa230e26f16add728b943e7aa110d1`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25ea638c611e9ac4370c065dcf7c96dd948eaa929af93a4987c15e30ae5041`  
		Last Modified: Wed, 29 Nov 2017 10:36:20 GMT  
		Size: 59.1 MB (59082388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cac7b2191e12520e7d79b4d3181176f37aa11dc9b83516e15a1d22ff7be7496`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604cd9a3a7a58f7575f3dbbdda98a97ef30bdad45c3fd0882bfc4d00c1919b35`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 2.4 MB (2449744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7dc1025ef8f402bce9c33dcf7b8deed5d54a790d5498120ec36c1397807bc`  
		Last Modified: Wed, 29 Nov 2017 10:36:24 GMT  
		Size: 80.0 MB (80029892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b060c1b16c6a3d0a51649ba9382c820351a8a386d6828b571fa3825bf621ea1`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.3`

```console
$ docker pull redmine@sha256:d2450d424c155071ec0ca82a75719012f55504815dc0ef5b4d4e96d829a1dbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.4.3` - linux; amd64

```console
$ docker pull redmine@sha256:6ff626e3de671421559517e852349bb315962a553b8a8c3b11d6d446bf3b2f92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242198058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70c41140b038be6fe637b6849f95c7f80553d1f21396c0619e4ae287c1a90b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:17:16 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:20:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:20:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:20:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:20:29 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:34:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:34:37 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:34:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:34:42 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:34:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:35:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:35:19 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:35:19 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 17:35:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:37:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:37:55 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:37:55 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:37:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:37:55 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:37:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd469839a6522fbd1f08ba2bdecdc44ef90a60f368e05b019a4e696d611e39f`  
		Last Modified: Sat, 23 Dec 2017 17:05:45 GMT  
		Size: 24.7 MB (24740339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d7c36754eed3ef8090b44e3cc9d7a10441ade1dc2171fe17e0ff9cd498a405`  
		Last Modified: Sat, 23 Dec 2017 17:05:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6062536746c95547fdd48b07faa60669935da8a346fce6da19338108f4741`  
		Last Modified: Sat, 23 Dec 2017 17:57:42 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81c38880660541e6eda1038c0d184389663487afc5d9e076fed2bbb25514299`  
		Last Modified: Sat, 23 Dec 2017 17:57:44 GMT  
		Size: 14.7 MB (14650284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913a93200e1eed8fd8db0b7867200373c89a89fe0bf2ab7ff73085e40efbdcca`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b726ccac287e7d1fda4939a4f770ec7fd37d42e8e52f236698cff58b8730d7`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7092d9a5b5212023e23052f67ff850075f83886fcb6df19adaa4d7eba75cf44b`  
		Last Modified: Sat, 23 Dec 2017 17:57:52 GMT  
		Size: 59.3 MB (59267135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cb2fbcc5a13b3a9ffc1f86c226ebf45782a1e269ba86d908e551969d506b90`  
		Last Modified: Sat, 23 Dec 2017 17:57:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa6bc798a3037cbfca7ff52b986727b738ad46a8da3dda90a651168f6b602ae`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32b3dbce00433a55c43bb548c62ebb3e40f622d8317057ed098bfde3ea804ce`  
		Last Modified: Sat, 23 Dec 2017 17:57:54 GMT  
		Size: 77.8 MB (77792518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3db6b583188625dfb29ffc383fa6c9f9bf8ef6f22aa767194514e19e4c3221`  
		Last Modified: Sat, 23 Dec 2017 17:57:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:10753649f2559473153e27b37c305e130f253917cd8c4c389ac7c53ead241935
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.3 MB (235339480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314499549bf8c9ca125614164afc13048f40bbc848696daa4cd62abee1fda055`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:20:44 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 02:44:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:44:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:50:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:50:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:50:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:50:46 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:29:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:30:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:30:17 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:30:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:30:20 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:30:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:31:27 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:31:27 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:31:27 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 03:31:28 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 03:31:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:36:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:36:06 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 19 Dec 2017 23:33:31 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Tue, 19 Dec 2017 23:33:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Dec 2017 23:33:31 GMT
EXPOSE 3000/tcp
# Tue, 19 Dec 2017 23:33:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ed72ef746915a188cc7e630cfea8bd0599efb6d0646e2e79ae01a971b2d1f7`  
		Last Modified: Sat, 16 Dec 2017 03:11:47 GMT  
		Size: 24.5 MB (24494687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c00cc9670c6ef7915e209234c19cac53fef6d374a11e5e74559c0c682fc57`  
		Last Modified: Sat, 16 Dec 2017 03:11:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee7d475924fc070199caeb9e98c181afd4f02cfe258f6ee04fb3b1cff15ae60`  
		Last Modified: Sat, 16 Dec 2017 03:47:30 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fed1f2a791a1a2841412624abe5604d500a40e7b2d71742150568d38343399d`  
		Last Modified: Sat, 16 Dec 2017 03:47:34 GMT  
		Size: 14.3 MB (14347484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be321b14a2e1fee25f2892a5e2beae9ed40f72ecffc505dcf0b8ad7eb784ae84`  
		Last Modified: Sat, 16 Dec 2017 03:47:28 GMT  
		Size: 491.1 KB (491122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cce1975a860ab1caf36b03ca05d8e4bbeeb192c017c8e1e1b21b5a907eb256`  
		Last Modified: Sat, 16 Dec 2017 03:47:28 GMT  
		Size: 7.8 KB (7840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd43b2c0a4ecee8db6f2ad170a8d7c6ebaae33583be4b6aabf9a3177bff58f0f`  
		Last Modified: Sat, 16 Dec 2017 03:47:46 GMT  
		Size: 56.6 MB (56603824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaa8db3843a5eebcea5414da88b08cf372ae410d51529cd01ecaaa77817fd77`  
		Last Modified: Sat, 16 Dec 2017 03:47:27 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbace6c51e02aedb7b77b6d42b81ea71bf7ff044bca471c477611b8258e13f37`  
		Last Modified: Sat, 16 Dec 2017 03:47:28 GMT  
		Size: 2.5 MB (2450397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80d5d79f583ec90305d3025295d29ebbe5040399d8b50e0d1f19a6097aae16f`  
		Last Modified: Sat, 16 Dec 2017 03:47:46 GMT  
		Size: 76.9 MB (76924725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd279afb6b7fd49bd55321164014bda3e7c429ccb3d592495619fec84556df`  
		Last Modified: Tue, 19 Dec 2017 23:33:53 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:fe61984bd99511d9a531081d036134e6e22a5c7f7e8f4caa69a8d7367e09bb38
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229634670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e87941872c6d1d2f614670fefd1d92bb4c8443d712547ad5094437a4681156df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:08:23 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 02:32:50 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:32:50 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:38:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:38:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:38:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:38:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:38:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:38:20 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:16:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:17:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:17:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:17:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:17:15 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:17:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:18:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:18:10 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:18:10 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:18:10 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 03:18:10 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 03:18:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:22:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:22:25 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:38:26 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:38:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:38:27 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:38:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96bd6afd81903325c3620104a65b1880f48d45f043444d92ab61fb03d2dd3e7`  
		Last Modified: Sat, 16 Dec 2017 02:58:37 GMT  
		Size: 24.4 MB (24367759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1088a3e93a97702c3b9b0a7c7099419b31eee6b7bc212d91bf5fba0ef87a09`  
		Last Modified: Sat, 16 Dec 2017 02:58:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7854a626b2922bd93017d58132d17abccb46b8a00e5a99b3d631b2a69a113572`  
		Last Modified: Sat, 16 Dec 2017 03:33:15 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6bd951d2ab0aea342b3b5f0b5aaf1284d75e8dfb35530f929880892791833e`  
		Last Modified: Sat, 16 Dec 2017 03:33:19 GMT  
		Size: 14.1 MB (14134534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ec95bbea37c5d856c131393911bf3c08ad5a7e71b4c72bc7d01897cdb8fd47`  
		Last Modified: Sat, 16 Dec 2017 03:33:14 GMT  
		Size: 475.3 KB (475270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f5e854136e151cacf5cef51a7db31416c9362f9b583cff2a890970c3020e4c`  
		Last Modified: Sat, 16 Dec 2017 03:33:14 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d63aaff3871b4821844f1d116393ba3f3858febe246ac085477f0bc8eedb06`  
		Last Modified: Sat, 16 Dec 2017 03:33:29 GMT  
		Size: 54.3 MB (54344971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2019b8c9934ba6cffbb578ddd2f0ee804de91c9223e5130d180d6099b3f39b89`  
		Last Modified: Sat, 16 Dec 2017 03:33:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992e59d8a803995e25a8aa670e5cdb8d93a108e1c64864199f25edc45bb1114e`  
		Last Modified: Sat, 16 Dec 2017 03:33:14 GMT  
		Size: 2.5 MB (2450398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2454dba8ce8caa9170193c1357ceac7ce07c833f10e76c6d57d8cf4fd34080b`  
		Last Modified: Sat, 16 Dec 2017 03:33:30 GMT  
		Size: 76.4 MB (76374165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbd8a2ea58ebb3670ca59752ea924f4894423c3d80b08f9577068bb7f8c994f`  
		Last Modified: Wed, 20 Dec 2017 11:38:48 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b17a0f9257a6948dc53913c9b803eb05d507882214432c18f7a6fd20499a4523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234187855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757c61dea8c6ced66debc13be112ff6c3e209779244b73f7bcb27c7cc39a4eb4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:58:30 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 07:25:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 07:25:37 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 07:25:38 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 22:20:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 22:29:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 22:29:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 22:29:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 22:29:42 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 23:41:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 23:41:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:41:48 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 23:41:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 23:41:53 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 23:41:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 23:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:43:42 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 23:43:43 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 23:43:43 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 23:43:44 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 23:43:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 23:52:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 23:52:35 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 23:52:35 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 23:52:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 23:52:37 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 23:52:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8673c51c001a9bf984638ff32ca9b69fa55a922346ec362712f527ef8e90e004`  
		Last Modified: Sat, 23 Dec 2017 23:18:55 GMT  
		Size: 24.7 MB (24690330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312aafa818a3dfc76b9218fd4ca103e51b3a22b7f2b54eed603e2c8681819a14`  
		Last Modified: Sat, 23 Dec 2017 23:18:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0f66ef40a62d6b4a4dedc2cb19d378d137333c9d381fc1cd6ed8cb4a4c58eb`  
		Last Modified: Sun, 24 Dec 2017 00:16:27 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc4aff65cbd5771a1380192a68b0e8d8a8c4fa75d03bdb9dddb81b9d609ea`  
		Last Modified: Sun, 24 Dec 2017 00:16:32 GMT  
		Size: 14.5 MB (14462615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f3f2e8c9e1fbc6c4eadd4a743a4983504129bce2f5075ccb02f5c4a0630f79`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727fe3851448999b0543d69f71c0028d2c5ae5ea53638fa8a27c675422bf8a7a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f6c5c343c2354301d6c766b2f7617190aba81d8b02f09a04003cd694d1cf13`  
		Last Modified: Sun, 24 Dec 2017 00:16:44 GMT  
		Size: 55.8 MB (55784093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1fb5b33bc1a9f117df393b3a1e3ea4648faf0bf79be03ecc0077b454e75878`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aabb1abccd026bf5fba3d080bdc7787892e69773bbe8edcb12c78160a80079a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c655ead65d625ac898875e056beb27e00ac5a3016e5e12169134dab1bf36b889`  
		Last Modified: Sun, 24 Dec 2017 00:16:46 GMT  
		Size: 77.0 MB (77038232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e91657b9404f53c5e9abbec3f5d5120a622ffe8ecf04f3d2c0b5abf7dbbef8`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; 386

```console
$ docker pull redmine@sha256:e9e7089b899280227b06704914c27200aad4ff546c3b6e24d518152973b27762
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246074063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ceb90ed0c1cbfa43852aa0f4e17eb49fdc0789467e32c125d025eecdb08c7fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:03:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 04:21:37 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 04:25:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 04:25:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 04:25:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 04:25:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 04:25:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 04:25:48 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 05:52:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 05:53:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 05:53:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 05:53:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 05:53:24 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 05:53:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 05:54:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 05:54:18 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 05:54:18 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 05:54:19 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 05:54:19 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 05:54:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 05:57:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 05:57:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:09:46 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:09:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:09:47 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:09:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedb168488ef385764fefa9492e3416579caf66b505c1013056747f2e2646d56`  
		Last Modified: Sat, 16 Dec 2017 05:24:02 GMT  
		Size: 23.7 MB (23729301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da863ac6556bc896e343deb5897bd853823b33f68fccc98ae8f8b24c72c46cc`  
		Last Modified: Sat, 16 Dec 2017 05:23:52 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f604d96b83184ec8627df7cf65f7b75a3e22d821f285ca46291842c7aeabd`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c599acc9a0e94fe90b62e25c46f91cd45d400b3966eb9cd6e3e6de2633270e`  
		Last Modified: Sat, 16 Dec 2017 06:27:06 GMT  
		Size: 14.8 MB (14817506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c108d683f3f3cf17778f1dea4cc92d603a5aa6724c3cb249cc3e7960a9da5385`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760e53909e79ab1314b658dab0969637da0e2cb198574c60a062d6007e6768ba`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0fd31d5b5dee7275e8c10a45a1d2908ad4f3ddea82d0a932d29ae22e20f14f`  
		Last Modified: Sat, 16 Dec 2017 06:27:24 GMT  
		Size: 60.1 MB (60138793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0519e82e66d2882753f11109065df52817c3b75c52bb254f1142d509418dc4`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcf7bbaee03f465969af21e25ab6a0932a84fe2e6072171532c9d6e50a449c8`  
		Last Modified: Sat, 16 Dec 2017 06:27:06 GMT  
		Size: 2.4 MB (2449733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fc3684c9ce0205e1b1cb18edcfc971ca5d192fc161e8dafc1ebae27b109966`  
		Last Modified: Sat, 16 Dec 2017 06:27:22 GMT  
		Size: 77.0 MB (77019626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49393338443c23b28659f81a7bbdcc983c3ba456aa054ea79d037231e627f80`  
		Last Modified: Wed, 20 Dec 2017 11:10:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:8623a2cddde89caf3311ca409acf067b4a24430609d70ffa908f26227aa7b974
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240801782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108c532b50f39fa7d861f2e6169086ec50359b0567166bb7a4ebcd09490bb9b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:31:17 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 02:06:19 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:06:20 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:14:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:14:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:14:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:14:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:14:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:14:44 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:15:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:15:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:15:44 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:15:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:15:54 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:15:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:19:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:19:01 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:19:03 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:19:05 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 03:19:06 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 03:19:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:38:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:38:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 14:48:25 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 14:48:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 14:48:29 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 14:48:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1280a0c3a29f18b35966d72ec2c3205327d2397be1a40d1f3230f4b9bd81bba`  
		Last Modified: Sat, 16 Dec 2017 02:55:09 GMT  
		Size: 25.2 MB (25180250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3d394822bc4380d26b639f96913d425e9fdcc7044db2dc4b71385da1679ba8`  
		Last Modified: Sat, 16 Dec 2017 02:55:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a757469dfdb2fd943ff16fe23a0b67ffbec61903cdb8854dffc14f469e9bb83e`  
		Last Modified: Sat, 16 Dec 2017 04:17:08 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03140562c7ec0e4316469efb8d1f6c07828927bba4c860cafa387d26f678bd8`  
		Last Modified: Sat, 16 Dec 2017 04:17:09 GMT  
		Size: 14.7 MB (14720274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210575da7856a03347a536ac5d861390b1645a795408962ebb252fb3c53185a0`  
		Last Modified: Sat, 16 Dec 2017 04:17:05 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f5494253bf23f0bd93d8076b0cf534296e3585e83fee3f382a8a4cd7f49b28`  
		Last Modified: Sat, 16 Dec 2017 04:17:05 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2622a9a7f39898687d7cce76e6212d1f5bf54b3883cf12931507f94779759d8`  
		Last Modified: Sat, 16 Dec 2017 04:17:28 GMT  
		Size: 58.1 MB (58126030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2333cd0366778b94a014a36190a3298cc0c65be5b2efc3a8a2bf0346ab3b17`  
		Last Modified: Sat, 16 Dec 2017 04:17:01 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4769495f0b69270cdf2efb4d996676fe565b2ee8bc033abc41eecaf22319a59`  
		Last Modified: Sat, 16 Dec 2017 04:17:03 GMT  
		Size: 2.5 MB (2450390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e3f51e74dde4921c82ec66a3bcf73fc565222fec4f1ae480417febae4cf91d`  
		Last Modified: Sat, 16 Dec 2017 04:17:17 GMT  
		Size: 77.9 MB (77876929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab32d9f3224dbed03ac28d5de2c38e1400026838c1749bce8d4ddd1c1d2f2f9`  
		Last Modified: Wed, 20 Dec 2017 14:49:05 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; s390x

```console
$ docker pull redmine@sha256:5427407fea74009d757762b807075c30871317b91f9ec1df560a75cbde3bd29f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244737088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c668a254a4bdd63e46f6e2227a1323576949f2f4cae692d2b7807600bfc1e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:59:56 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 09:45:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 09:45:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 09:49:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 09:49:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 09:49:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 09:49:02 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:26:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:26:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:26:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:26:46 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:26:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:27:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:27:21 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:27:21 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 10:27:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:29:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:29:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:29:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:29:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:29:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d4ee3f2152ec599a26f35e14003e134c639db2f56399563c1726a8b7a8d29a`  
		Last Modified: Wed, 29 Nov 2017 10:07:07 GMT  
		Size: 25.1 MB (25111185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951848c9263d526779afb0312759897b5d73819b19ac1c2f12c68ccc05a977af`  
		Last Modified: Wed, 29 Nov 2017 10:07:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe2550444116bdfc46721f26860f83c0422bc33bcef6ae8b9f3bf3ed8ea5c1`  
		Last Modified: Wed, 29 Nov 2017 10:36:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a53223f31c10d034019dc8488f9dfdeb46f2b9429098d6c65b8600ca2146c`  
		Last Modified: Wed, 29 Nov 2017 10:36:13 GMT  
		Size: 14.8 MB (14815027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639d76a25bbb1bf06d9c487892a8fbf3e296a2092f5ce2386481188b883a3b3`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384c1671418080426f0bfbe9e5f1fb477aa230e26f16add728b943e7aa110d1`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25ea638c611e9ac4370c065dcf7c96dd948eaa929af93a4987c15e30ae5041`  
		Last Modified: Wed, 29 Nov 2017 10:36:20 GMT  
		Size: 59.1 MB (59082388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cac7b2191e12520e7d79b4d3181176f37aa11dc9b83516e15a1d22ff7be7496`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604cd9a3a7a58f7575f3dbbdda98a97ef30bdad45c3fd0882bfc4d00c1919b35`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 2.4 MB (2449744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7dc1025ef8f402bce9c33dcf7b8deed5d54a790d5498120ec36c1397807bc`  
		Last Modified: Wed, 29 Nov 2017 10:36:24 GMT  
		Size: 80.0 MB (80029892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b060c1b16c6a3d0a51649ba9382c820351a8a386d6828b571fa3825bf621ea1`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.3-passenger`

```console
$ docker pull redmine@sha256:66f9c25ca2b0213514c76f0df0e83e8259640656681cf3ac780319357b040fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:74d59a04ca58839d0435e0b1581f24ab734d02a848bd3a928a5d0d51341d4a7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (259027684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a9df2f6988fc2dd483007dc98bea00b9f5a50db0b0c7ac41841d6c7f1d6f84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:17:16 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:20:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:20:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:20:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:20:29 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:34:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:34:37 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:34:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:34:42 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:34:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:35:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:35:19 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:35:19 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 17:35:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:37:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:37:55 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:37:55 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:37:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:37:55 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:37:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 23 Dec 2017 17:44:43 GMT
ENV PASSENGER_VERSION=5.1.12
# Sat, 23 Dec 2017 17:45:01 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:45:03 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 23 Dec 2017 17:45:03 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd469839a6522fbd1f08ba2bdecdc44ef90a60f368e05b019a4e696d611e39f`  
		Last Modified: Sat, 23 Dec 2017 17:05:45 GMT  
		Size: 24.7 MB (24740339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d7c36754eed3ef8090b44e3cc9d7a10441ade1dc2171fe17e0ff9cd498a405`  
		Last Modified: Sat, 23 Dec 2017 17:05:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6062536746c95547fdd48b07faa60669935da8a346fce6da19338108f4741`  
		Last Modified: Sat, 23 Dec 2017 17:57:42 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81c38880660541e6eda1038c0d184389663487afc5d9e076fed2bbb25514299`  
		Last Modified: Sat, 23 Dec 2017 17:57:44 GMT  
		Size: 14.7 MB (14650284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913a93200e1eed8fd8db0b7867200373c89a89fe0bf2ab7ff73085e40efbdcca`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b726ccac287e7d1fda4939a4f770ec7fd37d42e8e52f236698cff58b8730d7`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7092d9a5b5212023e23052f67ff850075f83886fcb6df19adaa4d7eba75cf44b`  
		Last Modified: Sat, 23 Dec 2017 17:57:52 GMT  
		Size: 59.3 MB (59267135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cb2fbcc5a13b3a9ffc1f86c226ebf45782a1e269ba86d908e551969d506b90`  
		Last Modified: Sat, 23 Dec 2017 17:57:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa6bc798a3037cbfca7ff52b986727b738ad46a8da3dda90a651168f6b602ae`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32b3dbce00433a55c43bb548c62ebb3e40f622d8317057ed098bfde3ea804ce`  
		Last Modified: Sat, 23 Dec 2017 17:57:54 GMT  
		Size: 77.8 MB (77792518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3db6b583188625dfb29ffc383fa6c9f9bf8ef6f22aa767194514e19e4c3221`  
		Last Modified: Sat, 23 Dec 2017 17:57:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cbaac0c63210826d7c148c2dbd8823abb4c11fd697983fdbd7c1c4af0e7ec4`  
		Last Modified: Sat, 23 Dec 2017 17:58:46 GMT  
		Size: 12.8 MB (12752709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337d08c32b63eaa820a3b41931aa403822e6fe9debef5dee0791aebd98e9bd2d`  
		Last Modified: Sat, 23 Dec 2017 17:58:43 GMT  
		Size: 4.1 MB (4076917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:66f9c25ca2b0213514c76f0df0e83e8259640656681cf3ac780319357b040fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:74d59a04ca58839d0435e0b1581f24ab734d02a848bd3a928a5d0d51341d4a7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (259027684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a9df2f6988fc2dd483007dc98bea00b9f5a50db0b0c7ac41841d6c7f1d6f84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:17:16 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:20:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:20:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:20:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:20:29 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:34:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:34:37 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:34:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:34:42 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:34:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:35:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:35:19 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:35:19 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 17:35:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:37:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:37:55 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:37:55 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:37:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:37:55 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:37:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 23 Dec 2017 17:44:43 GMT
ENV PASSENGER_VERSION=5.1.12
# Sat, 23 Dec 2017 17:45:01 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:45:03 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 23 Dec 2017 17:45:03 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd469839a6522fbd1f08ba2bdecdc44ef90a60f368e05b019a4e696d611e39f`  
		Last Modified: Sat, 23 Dec 2017 17:05:45 GMT  
		Size: 24.7 MB (24740339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d7c36754eed3ef8090b44e3cc9d7a10441ade1dc2171fe17e0ff9cd498a405`  
		Last Modified: Sat, 23 Dec 2017 17:05:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6062536746c95547fdd48b07faa60669935da8a346fce6da19338108f4741`  
		Last Modified: Sat, 23 Dec 2017 17:57:42 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81c38880660541e6eda1038c0d184389663487afc5d9e076fed2bbb25514299`  
		Last Modified: Sat, 23 Dec 2017 17:57:44 GMT  
		Size: 14.7 MB (14650284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913a93200e1eed8fd8db0b7867200373c89a89fe0bf2ab7ff73085e40efbdcca`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b726ccac287e7d1fda4939a4f770ec7fd37d42e8e52f236698cff58b8730d7`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7092d9a5b5212023e23052f67ff850075f83886fcb6df19adaa4d7eba75cf44b`  
		Last Modified: Sat, 23 Dec 2017 17:57:52 GMT  
		Size: 59.3 MB (59267135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cb2fbcc5a13b3a9ffc1f86c226ebf45782a1e269ba86d908e551969d506b90`  
		Last Modified: Sat, 23 Dec 2017 17:57:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa6bc798a3037cbfca7ff52b986727b738ad46a8da3dda90a651168f6b602ae`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32b3dbce00433a55c43bb548c62ebb3e40f622d8317057ed098bfde3ea804ce`  
		Last Modified: Sat, 23 Dec 2017 17:57:54 GMT  
		Size: 77.8 MB (77792518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3db6b583188625dfb29ffc383fa6c9f9bf8ef6f22aa767194514e19e4c3221`  
		Last Modified: Sat, 23 Dec 2017 17:57:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cbaac0c63210826d7c148c2dbd8823abb4c11fd697983fdbd7c1c4af0e7ec4`  
		Last Modified: Sat, 23 Dec 2017 17:58:46 GMT  
		Size: 12.8 MB (12752709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337d08c32b63eaa820a3b41931aa403822e6fe9debef5dee0791aebd98e9bd2d`  
		Last Modified: Sat, 23 Dec 2017 17:58:43 GMT  
		Size: 4.1 MB (4076917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:66f9c25ca2b0213514c76f0df0e83e8259640656681cf3ac780319357b040fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:74d59a04ca58839d0435e0b1581f24ab734d02a848bd3a928a5d0d51341d4a7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (259027684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a9df2f6988fc2dd483007dc98bea00b9f5a50db0b0c7ac41841d6c7f1d6f84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:17:16 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:20:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:20:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:20:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:20:29 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:34:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:34:37 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:34:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:34:42 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:34:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:35:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:35:19 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:35:19 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 17:35:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:37:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:37:55 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:37:55 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:37:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:37:55 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:37:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 23 Dec 2017 17:44:43 GMT
ENV PASSENGER_VERSION=5.1.12
# Sat, 23 Dec 2017 17:45:01 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:45:03 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 23 Dec 2017 17:45:03 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd469839a6522fbd1f08ba2bdecdc44ef90a60f368e05b019a4e696d611e39f`  
		Last Modified: Sat, 23 Dec 2017 17:05:45 GMT  
		Size: 24.7 MB (24740339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d7c36754eed3ef8090b44e3cc9d7a10441ade1dc2171fe17e0ff9cd498a405`  
		Last Modified: Sat, 23 Dec 2017 17:05:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6062536746c95547fdd48b07faa60669935da8a346fce6da19338108f4741`  
		Last Modified: Sat, 23 Dec 2017 17:57:42 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81c38880660541e6eda1038c0d184389663487afc5d9e076fed2bbb25514299`  
		Last Modified: Sat, 23 Dec 2017 17:57:44 GMT  
		Size: 14.7 MB (14650284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913a93200e1eed8fd8db0b7867200373c89a89fe0bf2ab7ff73085e40efbdcca`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b726ccac287e7d1fda4939a4f770ec7fd37d42e8e52f236698cff58b8730d7`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7092d9a5b5212023e23052f67ff850075f83886fcb6df19adaa4d7eba75cf44b`  
		Last Modified: Sat, 23 Dec 2017 17:57:52 GMT  
		Size: 59.3 MB (59267135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cb2fbcc5a13b3a9ffc1f86c226ebf45782a1e269ba86d908e551969d506b90`  
		Last Modified: Sat, 23 Dec 2017 17:57:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa6bc798a3037cbfca7ff52b986727b738ad46a8da3dda90a651168f6b602ae`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32b3dbce00433a55c43bb548c62ebb3e40f622d8317057ed098bfde3ea804ce`  
		Last Modified: Sat, 23 Dec 2017 17:57:54 GMT  
		Size: 77.8 MB (77792518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3db6b583188625dfb29ffc383fa6c9f9bf8ef6f22aa767194514e19e4c3221`  
		Last Modified: Sat, 23 Dec 2017 17:57:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cbaac0c63210826d7c148c2dbd8823abb4c11fd697983fdbd7c1c4af0e7ec4`  
		Last Modified: Sat, 23 Dec 2017 17:58:46 GMT  
		Size: 12.8 MB (12752709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337d08c32b63eaa820a3b41931aa403822e6fe9debef5dee0791aebd98e9bd2d`  
		Last Modified: Sat, 23 Dec 2017 17:58:43 GMT  
		Size: 4.1 MB (4076917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:0041bb4008867f68bd87dfef6309d44be85ef1f650021b1f95d9a19fe41eef1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:latest` - linux; amd64

```console
$ docker pull redmine@sha256:6ff626e3de671421559517e852349bb315962a553b8a8c3b11d6d446bf3b2f92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242198058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70c41140b038be6fe637b6849f95c7f80553d1f21396c0619e4ae287c1a90b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:17:16 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:20:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:20:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:20:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:20:29 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:34:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:34:37 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:34:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:34:42 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:34:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:35:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:35:19 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:35:19 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 17:35:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:37:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:37:55 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:37:55 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:37:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:37:55 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:37:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd469839a6522fbd1f08ba2bdecdc44ef90a60f368e05b019a4e696d611e39f`  
		Last Modified: Sat, 23 Dec 2017 17:05:45 GMT  
		Size: 24.7 MB (24740339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d7c36754eed3ef8090b44e3cc9d7a10441ade1dc2171fe17e0ff9cd498a405`  
		Last Modified: Sat, 23 Dec 2017 17:05:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6062536746c95547fdd48b07faa60669935da8a346fce6da19338108f4741`  
		Last Modified: Sat, 23 Dec 2017 17:57:42 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81c38880660541e6eda1038c0d184389663487afc5d9e076fed2bbb25514299`  
		Last Modified: Sat, 23 Dec 2017 17:57:44 GMT  
		Size: 14.7 MB (14650284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913a93200e1eed8fd8db0b7867200373c89a89fe0bf2ab7ff73085e40efbdcca`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b726ccac287e7d1fda4939a4f770ec7fd37d42e8e52f236698cff58b8730d7`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7092d9a5b5212023e23052f67ff850075f83886fcb6df19adaa4d7eba75cf44b`  
		Last Modified: Sat, 23 Dec 2017 17:57:52 GMT  
		Size: 59.3 MB (59267135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cb2fbcc5a13b3a9ffc1f86c226ebf45782a1e269ba86d908e551969d506b90`  
		Last Modified: Sat, 23 Dec 2017 17:57:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa6bc798a3037cbfca7ff52b986727b738ad46a8da3dda90a651168f6b602ae`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32b3dbce00433a55c43bb548c62ebb3e40f622d8317057ed098bfde3ea804ce`  
		Last Modified: Sat, 23 Dec 2017 17:57:54 GMT  
		Size: 77.8 MB (77792518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3db6b583188625dfb29ffc383fa6c9f9bf8ef6f22aa767194514e19e4c3221`  
		Last Modified: Sat, 23 Dec 2017 17:57:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:10753649f2559473153e27b37c305e130f253917cd8c4c389ac7c53ead241935
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.3 MB (235339480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314499549bf8c9ca125614164afc13048f40bbc848696daa4cd62abee1fda055`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:20:44 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 02:44:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:44:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:50:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:50:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:50:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:50:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:50:46 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:29:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:30:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:30:17 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:30:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:30:20 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:30:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:31:27 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:31:27 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:31:27 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 03:31:28 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 03:31:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:36:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:36:06 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 19 Dec 2017 23:33:31 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Tue, 19 Dec 2017 23:33:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Dec 2017 23:33:31 GMT
EXPOSE 3000/tcp
# Tue, 19 Dec 2017 23:33:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ed72ef746915a188cc7e630cfea8bd0599efb6d0646e2e79ae01a971b2d1f7`  
		Last Modified: Sat, 16 Dec 2017 03:11:47 GMT  
		Size: 24.5 MB (24494687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c00cc9670c6ef7915e209234c19cac53fef6d374a11e5e74559c0c682fc57`  
		Last Modified: Sat, 16 Dec 2017 03:11:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee7d475924fc070199caeb9e98c181afd4f02cfe258f6ee04fb3b1cff15ae60`  
		Last Modified: Sat, 16 Dec 2017 03:47:30 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fed1f2a791a1a2841412624abe5604d500a40e7b2d71742150568d38343399d`  
		Last Modified: Sat, 16 Dec 2017 03:47:34 GMT  
		Size: 14.3 MB (14347484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be321b14a2e1fee25f2892a5e2beae9ed40f72ecffc505dcf0b8ad7eb784ae84`  
		Last Modified: Sat, 16 Dec 2017 03:47:28 GMT  
		Size: 491.1 KB (491122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cce1975a860ab1caf36b03ca05d8e4bbeeb192c017c8e1e1b21b5a907eb256`  
		Last Modified: Sat, 16 Dec 2017 03:47:28 GMT  
		Size: 7.8 KB (7840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd43b2c0a4ecee8db6f2ad170a8d7c6ebaae33583be4b6aabf9a3177bff58f0f`  
		Last Modified: Sat, 16 Dec 2017 03:47:46 GMT  
		Size: 56.6 MB (56603824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaa8db3843a5eebcea5414da88b08cf372ae410d51529cd01ecaaa77817fd77`  
		Last Modified: Sat, 16 Dec 2017 03:47:27 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbace6c51e02aedb7b77b6d42b81ea71bf7ff044bca471c477611b8258e13f37`  
		Last Modified: Sat, 16 Dec 2017 03:47:28 GMT  
		Size: 2.5 MB (2450397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80d5d79f583ec90305d3025295d29ebbe5040399d8b50e0d1f19a6097aae16f`  
		Last Modified: Sat, 16 Dec 2017 03:47:46 GMT  
		Size: 76.9 MB (76924725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd279afb6b7fd49bd55321164014bda3e7c429ccb3d592495619fec84556df`  
		Last Modified: Tue, 19 Dec 2017 23:33:53 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:fe61984bd99511d9a531081d036134e6e22a5c7f7e8f4caa69a8d7367e09bb38
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229634670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e87941872c6d1d2f614670fefd1d92bb4c8443d712547ad5094437a4681156df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:08:23 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 02:32:50 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:32:50 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:38:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:38:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:38:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:38:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:38:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:38:20 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:16:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:17:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:17:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:17:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:17:15 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:17:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:18:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:18:10 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:18:10 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:18:10 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 03:18:10 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 03:18:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:22:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:22:25 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:38:26 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:38:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:38:27 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:38:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96bd6afd81903325c3620104a65b1880f48d45f043444d92ab61fb03d2dd3e7`  
		Last Modified: Sat, 16 Dec 2017 02:58:37 GMT  
		Size: 24.4 MB (24367759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1088a3e93a97702c3b9b0a7c7099419b31eee6b7bc212d91bf5fba0ef87a09`  
		Last Modified: Sat, 16 Dec 2017 02:58:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7854a626b2922bd93017d58132d17abccb46b8a00e5a99b3d631b2a69a113572`  
		Last Modified: Sat, 16 Dec 2017 03:33:15 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6bd951d2ab0aea342b3b5f0b5aaf1284d75e8dfb35530f929880892791833e`  
		Last Modified: Sat, 16 Dec 2017 03:33:19 GMT  
		Size: 14.1 MB (14134534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ec95bbea37c5d856c131393911bf3c08ad5a7e71b4c72bc7d01897cdb8fd47`  
		Last Modified: Sat, 16 Dec 2017 03:33:14 GMT  
		Size: 475.3 KB (475270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f5e854136e151cacf5cef51a7db31416c9362f9b583cff2a890970c3020e4c`  
		Last Modified: Sat, 16 Dec 2017 03:33:14 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d63aaff3871b4821844f1d116393ba3f3858febe246ac085477f0bc8eedb06`  
		Last Modified: Sat, 16 Dec 2017 03:33:29 GMT  
		Size: 54.3 MB (54344971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2019b8c9934ba6cffbb578ddd2f0ee804de91c9223e5130d180d6099b3f39b89`  
		Last Modified: Sat, 16 Dec 2017 03:33:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992e59d8a803995e25a8aa670e5cdb8d93a108e1c64864199f25edc45bb1114e`  
		Last Modified: Sat, 16 Dec 2017 03:33:14 GMT  
		Size: 2.5 MB (2450398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2454dba8ce8caa9170193c1357ceac7ce07c833f10e76c6d57d8cf4fd34080b`  
		Last Modified: Sat, 16 Dec 2017 03:33:30 GMT  
		Size: 76.4 MB (76374165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbd8a2ea58ebb3670ca59752ea924f4894423c3d80b08f9577068bb7f8c994f`  
		Last Modified: Wed, 20 Dec 2017 11:38:48 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:c2b9c4f476ab8fdcd6ed5db2dd5a7451de00e0f64b5cbab5e31013241a85f6ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.1 MB (234141835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485d47c8fee0125dc6d887a82e28c294977c7a23bc8b11cafb1c6fc1d01db9f8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:58:30 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 07:25:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 07:25:37 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 07:25:38 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 07:25:38 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 07:34:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 07:34:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 07:34:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 07:34:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 07:34:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 07:34:59 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 09:29:54 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 09:30:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 09:30:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 09:30:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 09:30:37 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 09:30:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 09:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 09:32:19 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 09:32:20 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 09:32:21 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 09:32:21 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 09:32:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 09:41:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 09:41:25 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 07:38:39 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 07:38:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 07:38:40 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 07:38:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38dc5fa43aed1fc60af186a243e9c57ac897d490be55eb8bb093d95b26b12d7c`  
		Last Modified: Sat, 16 Dec 2017 08:23:21 GMT  
		Size: 24.7 MB (24695755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c595590de0023e928d122b1cc29eb59f9d7f241b29ade9eedef6be2bd2ad4eac`  
		Last Modified: Sat, 16 Dec 2017 08:23:10 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83218ce4cf26efacd067180f1396487f83e253c0f71874badaaa8971e7bccc18`  
		Last Modified: Sat, 16 Dec 2017 10:07:15 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b727215e92470e78dc68120046031c07a70d1b4c93a80801a97543757348177`  
		Last Modified: Sat, 16 Dec 2017 10:07:20 GMT  
		Size: 14.5 MB (14462639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5856a48f7077b7627d6b8979af4ceca1f84a6af9fcf507452589284c9453e87`  
		Last Modified: Sat, 16 Dec 2017 10:07:14 GMT  
		Size: 468.7 KB (468700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ae833f28a67c7fdfb33e1e288221ad8616e84fbd48c178e6037792719ab203`  
		Last Modified: Sat, 16 Dec 2017 10:07:13 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40221430913e89fc6dfebdf4992e45d6ed8c8aa0ca17f651c65986dbd3bff95d`  
		Last Modified: Sat, 16 Dec 2017 10:07:32 GMT  
		Size: 55.8 MB (55785450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f60acd48de781a5e1f782fcfcdb3ee19778b23ae1c4a12b9fe541d60508d61e`  
		Last Modified: Sat, 16 Dec 2017 10:07:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ac414e43896b77bbc0d1455efc05db1ecab95db94168868cfc956f9ebfd31f`  
		Last Modified: Sat, 16 Dec 2017 10:07:13 GMT  
		Size: 2.4 MB (2449738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9bcc0f060121b28ddeb0fadd006fe95c34a597c2d1925b29cc557564855676`  
		Last Modified: Sat, 16 Dec 2017 10:07:34 GMT  
		Size: 77.0 MB (76985410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b3d77fb2692155a04067f9505d658bd7bf5e2d77948f781151987fb217afa8`  
		Last Modified: Wed, 20 Dec 2017 07:39:13 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:e9e7089b899280227b06704914c27200aad4ff546c3b6e24d518152973b27762
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246074063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ceb90ed0c1cbfa43852aa0f4e17eb49fdc0789467e32c125d025eecdb08c7fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:03:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 04:21:37 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 04:25:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 04:25:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 04:25:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 04:25:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 04:25:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 04:25:48 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 05:52:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 05:53:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 05:53:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 05:53:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 05:53:24 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 05:53:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 05:54:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 05:54:18 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 05:54:18 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 05:54:19 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 05:54:19 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 05:54:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 05:57:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 05:57:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 11:09:46 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 11:09:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 11:09:47 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 11:09:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedb168488ef385764fefa9492e3416579caf66b505c1013056747f2e2646d56`  
		Last Modified: Sat, 16 Dec 2017 05:24:02 GMT  
		Size: 23.7 MB (23729301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da863ac6556bc896e343deb5897bd853823b33f68fccc98ae8f8b24c72c46cc`  
		Last Modified: Sat, 16 Dec 2017 05:23:52 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f604d96b83184ec8627df7cf65f7b75a3e22d821f285ca46291842c7aeabd`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c599acc9a0e94fe90b62e25c46f91cd45d400b3966eb9cd6e3e6de2633270e`  
		Last Modified: Sat, 16 Dec 2017 06:27:06 GMT  
		Size: 14.8 MB (14817506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c108d683f3f3cf17778f1dea4cc92d603a5aa6724c3cb249cc3e7960a9da5385`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 480.6 KB (480566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760e53909e79ab1314b658dab0969637da0e2cb198574c60a062d6007e6768ba`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0fd31d5b5dee7275e8c10a45a1d2908ad4f3ddea82d0a932d29ae22e20f14f`  
		Last Modified: Sat, 16 Dec 2017 06:27:24 GMT  
		Size: 60.1 MB (60138793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0519e82e66d2882753f11109065df52817c3b75c52bb254f1142d509418dc4`  
		Last Modified: Sat, 16 Dec 2017 06:27:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcf7bbaee03f465969af21e25ab6a0932a84fe2e6072171532c9d6e50a449c8`  
		Last Modified: Sat, 16 Dec 2017 06:27:06 GMT  
		Size: 2.4 MB (2449733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fc3684c9ce0205e1b1cb18edcfc971ca5d192fc161e8dafc1ebae27b109966`  
		Last Modified: Sat, 16 Dec 2017 06:27:22 GMT  
		Size: 77.0 MB (77019626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49393338443c23b28659f81a7bbdcc983c3ba456aa054ea79d037231e627f80`  
		Last Modified: Wed, 20 Dec 2017 11:10:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:8623a2cddde89caf3311ca409acf067b4a24430609d70ffa908f26227aa7b974
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240801782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108c532b50f39fa7d861f2e6169086ec50359b0567166bb7a4ebcd09490bb9b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:31:17 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 16 Dec 2017 02:06:19 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 16 Dec 2017 02:06:20 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 16 Dec 2017 02:14:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 16 Dec 2017 02:14:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 02:14:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 02:14:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 02:14:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 02:14:44 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 03:15:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 16 Dec 2017 03:15:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:15:44 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 03:15:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 03:15:54 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 16 Dec 2017 03:15:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 16 Dec 2017 03:19:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 03:19:01 GMT
ENV RAILS_ENV=production
# Sat, 16 Dec 2017 03:19:03 GMT
WORKDIR /usr/src/redmine
# Sat, 16 Dec 2017 03:19:05 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 16 Dec 2017 03:19:06 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 16 Dec 2017 03:19:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 16 Dec 2017 03:38:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Dec 2017 03:38:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 20 Dec 2017 14:48:25 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 20 Dec 2017 14:48:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Dec 2017 14:48:29 GMT
EXPOSE 3000/tcp
# Wed, 20 Dec 2017 14:48:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1280a0c3a29f18b35966d72ec2c3205327d2397be1a40d1f3230f4b9bd81bba`  
		Last Modified: Sat, 16 Dec 2017 02:55:09 GMT  
		Size: 25.2 MB (25180250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3d394822bc4380d26b639f96913d425e9fdcc7044db2dc4b71385da1679ba8`  
		Last Modified: Sat, 16 Dec 2017 02:55:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a757469dfdb2fd943ff16fe23a0b67ffbec61903cdb8854dffc14f469e9bb83e`  
		Last Modified: Sat, 16 Dec 2017 04:17:08 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03140562c7ec0e4316469efb8d1f6c07828927bba4c860cafa387d26f678bd8`  
		Last Modified: Sat, 16 Dec 2017 04:17:09 GMT  
		Size: 14.7 MB (14720274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210575da7856a03347a536ac5d861390b1645a795408962ebb252fb3c53185a0`  
		Last Modified: Sat, 16 Dec 2017 04:17:05 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f5494253bf23f0bd93d8076b0cf534296e3585e83fee3f382a8a4cd7f49b28`  
		Last Modified: Sat, 16 Dec 2017 04:17:05 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2622a9a7f39898687d7cce76e6212d1f5bf54b3883cf12931507f94779759d8`  
		Last Modified: Sat, 16 Dec 2017 04:17:28 GMT  
		Size: 58.1 MB (58126030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2333cd0366778b94a014a36190a3298cc0c65be5b2efc3a8a2bf0346ab3b17`  
		Last Modified: Sat, 16 Dec 2017 04:17:01 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4769495f0b69270cdf2efb4d996676fe565b2ee8bc033abc41eecaf22319a59`  
		Last Modified: Sat, 16 Dec 2017 04:17:03 GMT  
		Size: 2.5 MB (2450390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e3f51e74dde4921c82ec66a3bcf73fc565222fec4f1ae480417febae4cf91d`  
		Last Modified: Sat, 16 Dec 2017 04:17:17 GMT  
		Size: 77.9 MB (77876929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab32d9f3224dbed03ac28d5de2c38e1400026838c1749bce8d4ddd1c1d2f2f9`  
		Last Modified: Wed, 20 Dec 2017 14:49:05 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:5427407fea74009d757762b807075c30871317b91f9ec1df560a75cbde3bd29f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244737088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c668a254a4bdd63e46f6e2227a1323576949f2f4cae692d2b7807600bfc1e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:59:56 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 09:45:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 09:45:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 09:49:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 09:49:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 09:49:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 09:49:02 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:26:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:26:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:26:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:26:46 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:26:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:27:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:27:21 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:27:21 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 10:27:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:29:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:29:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:29:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:29:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:29:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d4ee3f2152ec599a26f35e14003e134c639db2f56399563c1726a8b7a8d29a`  
		Last Modified: Wed, 29 Nov 2017 10:07:07 GMT  
		Size: 25.1 MB (25111185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951848c9263d526779afb0312759897b5d73819b19ac1c2f12c68ccc05a977af`  
		Last Modified: Wed, 29 Nov 2017 10:07:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe2550444116bdfc46721f26860f83c0422bc33bcef6ae8b9f3bf3ed8ea5c1`  
		Last Modified: Wed, 29 Nov 2017 10:36:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a53223f31c10d034019dc8488f9dfdeb46f2b9429098d6c65b8600ca2146c`  
		Last Modified: Wed, 29 Nov 2017 10:36:13 GMT  
		Size: 14.8 MB (14815027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639d76a25bbb1bf06d9c487892a8fbf3e296a2092f5ce2386481188b883a3b3`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384c1671418080426f0bfbe9e5f1fb477aa230e26f16add728b943e7aa110d1`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25ea638c611e9ac4370c065dcf7c96dd948eaa929af93a4987c15e30ae5041`  
		Last Modified: Wed, 29 Nov 2017 10:36:20 GMT  
		Size: 59.1 MB (59082388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cac7b2191e12520e7d79b4d3181176f37aa11dc9b83516e15a1d22ff7be7496`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604cd9a3a7a58f7575f3dbbdda98a97ef30bdad45c3fd0882bfc4d00c1919b35`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 2.4 MB (2449744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7dc1025ef8f402bce9c33dcf7b8deed5d54a790d5498120ec36c1397807bc`  
		Last Modified: Wed, 29 Nov 2017 10:36:24 GMT  
		Size: 80.0 MB (80029892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b060c1b16c6a3d0a51649ba9382c820351a8a386d6828b571fa3825bf621ea1`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:66f9c25ca2b0213514c76f0df0e83e8259640656681cf3ac780319357b040fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:74d59a04ca58839d0435e0b1581f24ab734d02a848bd3a928a5d0d51341d4a7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (259027684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a9df2f6988fc2dd483007dc98bea00b9f5a50db0b0c7ac41841d6c7f1d6f84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:17:16 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:20:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:20:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:20:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:20:29 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:34:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:34:37 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:34:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:34:42 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:34:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:35:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:35:19 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:35:19 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 17:35:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:37:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:37:55 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:37:55 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:37:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:37:55 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:37:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 23 Dec 2017 17:44:43 GMT
ENV PASSENGER_VERSION=5.1.12
# Sat, 23 Dec 2017 17:45:01 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:45:03 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 23 Dec 2017 17:45:03 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd469839a6522fbd1f08ba2bdecdc44ef90a60f368e05b019a4e696d611e39f`  
		Last Modified: Sat, 23 Dec 2017 17:05:45 GMT  
		Size: 24.7 MB (24740339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d7c36754eed3ef8090b44e3cc9d7a10441ade1dc2171fe17e0ff9cd498a405`  
		Last Modified: Sat, 23 Dec 2017 17:05:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6062536746c95547fdd48b07faa60669935da8a346fce6da19338108f4741`  
		Last Modified: Sat, 23 Dec 2017 17:57:42 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81c38880660541e6eda1038c0d184389663487afc5d9e076fed2bbb25514299`  
		Last Modified: Sat, 23 Dec 2017 17:57:44 GMT  
		Size: 14.7 MB (14650284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913a93200e1eed8fd8db0b7867200373c89a89fe0bf2ab7ff73085e40efbdcca`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b726ccac287e7d1fda4939a4f770ec7fd37d42e8e52f236698cff58b8730d7`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7092d9a5b5212023e23052f67ff850075f83886fcb6df19adaa4d7eba75cf44b`  
		Last Modified: Sat, 23 Dec 2017 17:57:52 GMT  
		Size: 59.3 MB (59267135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cb2fbcc5a13b3a9ffc1f86c226ebf45782a1e269ba86d908e551969d506b90`  
		Last Modified: Sat, 23 Dec 2017 17:57:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa6bc798a3037cbfca7ff52b986727b738ad46a8da3dda90a651168f6b602ae`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32b3dbce00433a55c43bb548c62ebb3e40f622d8317057ed098bfde3ea804ce`  
		Last Modified: Sat, 23 Dec 2017 17:57:54 GMT  
		Size: 77.8 MB (77792518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3db6b583188625dfb29ffc383fa6c9f9bf8ef6f22aa767194514e19e4c3221`  
		Last Modified: Sat, 23 Dec 2017 17:57:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cbaac0c63210826d7c148c2dbd8823abb4c11fd697983fdbd7c1c4af0e7ec4`  
		Last Modified: Sat, 23 Dec 2017 17:58:46 GMT  
		Size: 12.8 MB (12752709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337d08c32b63eaa820a3b41931aa403822e6fe9debef5dee0791aebd98e9bd2d`  
		Last Modified: Sat, 23 Dec 2017 17:58:43 GMT  
		Size: 4.1 MB (4076917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
