<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.1`](#redmine31)
-	[`redmine:3.1.7`](#redmine317)
-	[`redmine:3.1.7-passenger`](#redmine317-passenger)
-	[`redmine:3.1-passenger`](#redmine31-passenger)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.7`](#redmine327)
-	[`redmine:3.2.7-passenger`](#redmine327-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.4`](#redmine334)
-	[`redmine:3.3.4-passenger`](#redmine334-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3.4.2`](#redmine342)
-	[`redmine:3.4.2-passenger`](#redmine342-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3`

```console
$ docker pull redmine@sha256:9d66877714a61647859d97ef5ca261048f49c0e5b44c438c773c72eae5972cc4
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
$ docker pull redmine@sha256:d598093d8caff9e7126f5c7d30bbe45d2e48940941ec87a51e8d28bf232592bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238844192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c8fcfb52aa31c46f1504243b3c4cc321bafc45a9e0429540d74fbf6c960323`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 02:59:17 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:13:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:13:03 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:13:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:13:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:13:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:13:05 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:22:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:22:18 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:22:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:22:23 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:22:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:23:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:23:11 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:23:12 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 21:23:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:25:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:25:49 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:25:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:25:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:25:49 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:25:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d04cf35adf4c7dabf4acbd2350231cda009d34e9473571d63c9285e87b9794`  
		Last Modified: Fri, 15 Sep 2017 20:52:48 GMT  
		Size: 21.8 MB (21791831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd0298f7bee1800f907fbd7893652343fe348545bbac90c5b2f4aa95703949e`  
		Last Modified: Fri, 15 Sep 2017 20:52:41 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0f889b13b7937d7acf86649454a156c5ded4aca37e94ebf57de32ab140fdf5`  
		Last Modified: Fri, 15 Sep 2017 20:52:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739d31d443152bc7f11b37421b919bcfbe1e9bd67d9cf4ef948956bec5a51c81`  
		Last Modified: Fri, 15 Sep 2017 21:39:46 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03233fae9158993a8687a7dfafe47093eeae051b46b68958e158bcb8f1a59a5f`  
		Last Modified: Fri, 15 Sep 2017 21:39:48 GMT  
		Size: 14.7 MB (14650158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f422da51167324cb61b2a2f15c26ee4f4ea06761e1bfa490f789d634333c9a93`  
		Last Modified: Fri, 15 Sep 2017 21:39:45 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1148296cb086ea980d83d3dc65a096fda0c6ada5690d0d7a556e159a18ca9d2c`  
		Last Modified: Fri, 15 Sep 2017 21:39:44 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dbcab9ae459619a2e262f6d30e72f2320dbbbc5d63205f55f410e1dff66752`  
		Last Modified: Fri, 15 Sep 2017 21:39:55 GMT  
		Size: 59.2 MB (59238127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631cbc8b2a49edd310472405efbaf4dd10a0c14ca7652c22327698033cf10211`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2642688d05ca146f2a1307a1cc10376e42f9fd13507dfff9398bcce739c59531`  
		Last Modified: Fri, 15 Sep 2017 21:39:43 GMT  
		Size: 2.4 MB (2448148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be55e3813f89b836ae1a656c3e9903c2ef106ed1b8541aaa3c7f031fecb79e25`  
		Last Modified: Fri, 15 Sep 2017 21:39:57 GMT  
		Size: 76.8 MB (76768486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88b41a86c28c795757fb7a1f0b9ec1b3de8b3089cbd028c8ff383096a9290b`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
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
$ docker pull redmine@sha256:46849cd28fe967e4148200d8d2e5a86fc17cc3d798248d9828b9d0f6ed3033c1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.7 MB (241700761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae536742d2004ee5cc2ffebdcdc5577f3e66dc6cf888dd06d3b75af6a60031db`
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
# Fri, 15 Sep 2017 20:08:35 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:08:35 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:08:35 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:12:20 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:12:20 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:12:21 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:12:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:12:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:12:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:12:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:12:22 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 20:43:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 20:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:44:10 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 20:44:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 20:44:11 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 20:44:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 20:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:44:45 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 20:44:45 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 20:44:45 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 20:44:45 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 20:44:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 20:47:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 20:47:22 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 20:47:23 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 20:47:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 20:47:23 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 20:47:23 GMT
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
	-	`sha256:44db17e017c0ee8b3f627e182261a5fb88bfb672f8af94ff7eeb307ff1779f3d`  
		Last Modified: Fri, 15 Sep 2017 20:26:04 GMT  
		Size: 22.2 MB (22189286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53ea8efb85cdc3ba793f5fe4172b739b50b3f5f962725b092b31152a286bdd3`  
		Last Modified: Fri, 15 Sep 2017 20:25:59 GMT  
		Size: 677.1 KB (677053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e29ad3e7a88f80e4804b83548267129e9805d6682072770012b9dba35156af`  
		Last Modified: Fri, 15 Sep 2017 20:26:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4eb23230a2415906d7358ed6fd5ce5f90f8deb0f12342fa5cf3bfb4f0cf486`  
		Last Modified: Fri, 15 Sep 2017 20:56:30 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcbe5b2b12bd17cb898844c55c8e03f5089ba63f85c3db102700ce3fd790cfc`  
		Last Modified: Fri, 15 Sep 2017 20:56:35 GMT  
		Size: 14.8 MB (14815012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b855e3f827df15ceab9ff52d31af7006c273abe0a529e48009ff19293dbdd8`  
		Last Modified: Fri, 15 Sep 2017 20:56:29 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7317af569d4b343abcbacda7e43669d3862368f7408f4983742f0bbe5975d404`  
		Last Modified: Fri, 15 Sep 2017 20:56:29 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc415f81ec95986327ef3e0a68f1ba97b4d775cad012707867083d7966c3463`  
		Last Modified: Fri, 15 Sep 2017 20:56:45 GMT  
		Size: 59.1 MB (59090261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd351f239b89590cd4cd910597646b0e9a609423c4f636199b97f375dab64c8d`  
		Last Modified: Fri, 15 Sep 2017 20:56:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c32102c3957a8ba34e6ffd7ddd8488d4e57a84c23bd36b9937dc57ce55e6e0b`  
		Last Modified: Fri, 15 Sep 2017 20:56:29 GMT  
		Size: 2.4 MB (2448153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7d422457ff13e1fb21cd4ddae8c8c151b4464c8377fc14a81a3b9c2e2122e`  
		Last Modified: Fri, 15 Sep 2017 20:56:41 GMT  
		Size: 79.2 MB (79232767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0542ca6f1ef96ccb8741df209f7b5d423b527886a630b6b0c62ca4a7a25b5fcd`  
		Last Modified: Fri, 15 Sep 2017 20:56:27 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:c4e478440e94fd1f09030e7baa0866d8ec6c4d57c036a0641a64ae0de940eb6a
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
$ docker pull redmine@sha256:5ecc52c5fd109479aeda10b6776c39a25054d0dd35759e8ffc2a8ff6f5f9c2f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.7 MB (242653667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8022e9bca3cbeefeb94a7ee687bad717678b10e8c166cb8e4b3306c60b130855`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 03:39:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 20:39:43 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:43:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:43:29 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:43:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:43:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:43:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:43:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:27:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:27:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:27:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:27:20 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:27:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:28:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:28:02 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:28:02 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:34:56 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 15 Sep 2017 21:34:56 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 15 Sep 2017 21:35:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:38:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:38:49 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:38:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:38:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:38:49 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:38:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b27fc027eafedccb29ee9c9ec1440bc1c57e5947bf07810740294566ed404`  
		Last Modified: Fri, 15 Sep 2017 21:02:28 GMT  
		Size: 34.2 MB (34163364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0652a9f4c91cecb72353a847d10129f0690e5b12e330ca62f1d233e77a7750`  
		Last Modified: Fri, 15 Sep 2017 21:02:15 GMT  
		Size: 677.1 KB (677052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379a6458a84f2baf63f1a368f21c22611df3e97109535674e3b38f813918ab14`  
		Last Modified: Fri, 15 Sep 2017 21:02:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae74c48639845bd6e4d8ff25509d0681e87782e07bb9977c3d659c30b1a59323`  
		Last Modified: Fri, 15 Sep 2017 21:41:05 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb48beea4352ce0dff0bbc22ca6e5c8d92179304257d1834019750b0a59be6f`  
		Last Modified: Fri, 15 Sep 2017 21:41:06 GMT  
		Size: 14.7 MB (14650208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c295b61538906626bbc6c2e466b6ec9b300e9932555b15202d5cce7ffada6e`  
		Last Modified: Fri, 15 Sep 2017 21:41:03 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a706258641eb51308f18931d1081205decb604fe88aa358d4cbbfcbf9cabe6b`  
		Last Modified: Fri, 15 Sep 2017 21:41:02 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46088c33a85818abefda29ca1b652f401b7ec360c6944bced0166e87afbc95dc`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 59.2 MB (59237662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453ddccf435baaa321a2becb15da700bb43fd61a71a795226ad835bc8544585`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff991390a3543daf88d9d090e4693b646cbac2b7a5ec08cf6759a855f98490d`  
		Last Modified: Fri, 15 Sep 2017 21:43:06 GMT  
		Size: 2.3 MB (2281527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ba92e325132d1f37c0975eb6b99f7aa435d767f28dabcd108dc02ae899807`  
		Last Modified: Fri, 15 Sep 2017 21:43:14 GMT  
		Size: 68.4 MB (68373472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663b0a273758bcf76d2668d88428b66417ebdd544ae5b106dfd029836c90afbb`  
		Last Modified: Fri, 15 Sep 2017 21:43:06 GMT  
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
$ docker pull redmine@sha256:df799c74d0d0eeb2d10c604984ff1b9346578a6287a36b2b5131779bd1840940
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248695168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deba1ef36ac26bd75f901f2e7dae185728c62fcc8f97fcabb1f65b678929c481`
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
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:24:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:24:16 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:24:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:24:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:24:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:24:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:24:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:24:18 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 20:47:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 20:47:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:47:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 20:47:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 20:47:49 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 20:47:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 20:48:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:48:23 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 20:48:23 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 20:53:48 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 15 Sep 2017 20:53:48 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 15 Sep 2017 20:53:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 20:56:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 20:56:08 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 20:56:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 20:56:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 20:56:08 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 20:56:08 GMT
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
	-	`sha256:1d14f14e8362854101b70d00194cb7f6ef53d3be4f25964c82cae5c9fdd2e4c3`  
		Last Modified: Fri, 15 Sep 2017 20:28:16 GMT  
		Size: 37.8 MB (37837315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d60f04405bf3d6b06eb813f0018dbdcaa4fa36d8fd6ad65ec0caf2bb88ed573`  
		Last Modified: Fri, 15 Sep 2017 20:28:06 GMT  
		Size: 677.1 KB (677055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19023811c6f8f919bc9e78221adc720b11241d814a83d90f23d9fb558c9973c`  
		Last Modified: Fri, 15 Sep 2017 20:28:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceea19ac0b2ea6aed63aa630ec0c88e38b246b8d189a8d23c5831a115c6d2877`  
		Last Modified: Fri, 15 Sep 2017 20:57:07 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665b696478214518b5910f41917f8a16b8e36c10c8294bb6f1061ab41f1ad8e1`  
		Last Modified: Fri, 15 Sep 2017 20:57:08 GMT  
		Size: 14.8 MB (14814978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d18cd2f6897a516f16635c41d08097f2b855719655e36eefa46abd89e47c1fb`  
		Last Modified: Fri, 15 Sep 2017 20:57:05 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b4996dbfc468ae50b524ea1769358d1e05cf8d097f8923f1c123d72ae62948`  
		Last Modified: Fri, 15 Sep 2017 20:57:03 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5613eb829c3bcaadce62a3f1bfe7acbd1534e5a6eef9f2effaee23f405c235`  
		Last Modified: Fri, 15 Sep 2017 20:57:15 GMT  
		Size: 59.1 MB (59090658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888eb127e24622015c2c5c6adbb868a4fd59d264d25aa102cc1d600a65d10a1e`  
		Last Modified: Fri, 15 Sep 2017 20:57:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a3a490d83f643f66fc9f64b0e28c3c1a06f1bbedfc05bd286f1318e2863d26`  
		Last Modified: Fri, 15 Sep 2017 20:57:52 GMT  
		Size: 2.3 MB (2281534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ef23b218db78f33bf7924b5acc552dd02cdd2bd31cce021214fd939c8a5df`  
		Last Modified: Fri, 15 Sep 2017 20:58:07 GMT  
		Size: 70.7 MB (70745401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016a6057e7f8a2b763027b18ccdb84e0e55fc586d4b106075f7f67bc5ace7bbb`  
		Last Modified: Fri, 15 Sep 2017 20:57:52 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:c4e478440e94fd1f09030e7baa0866d8ec6c4d57c036a0641a64ae0de940eb6a
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
$ docker pull redmine@sha256:5ecc52c5fd109479aeda10b6776c39a25054d0dd35759e8ffc2a8ff6f5f9c2f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.7 MB (242653667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8022e9bca3cbeefeb94a7ee687bad717678b10e8c166cb8e4b3306c60b130855`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 03:39:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 20:39:43 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:43:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:43:29 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:43:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:43:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:43:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:43:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:27:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:27:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:27:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:27:20 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:27:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:28:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:28:02 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:28:02 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:34:56 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 15 Sep 2017 21:34:56 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 15 Sep 2017 21:35:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:38:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:38:49 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:38:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:38:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:38:49 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:38:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b27fc027eafedccb29ee9c9ec1440bc1c57e5947bf07810740294566ed404`  
		Last Modified: Fri, 15 Sep 2017 21:02:28 GMT  
		Size: 34.2 MB (34163364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0652a9f4c91cecb72353a847d10129f0690e5b12e330ca62f1d233e77a7750`  
		Last Modified: Fri, 15 Sep 2017 21:02:15 GMT  
		Size: 677.1 KB (677052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379a6458a84f2baf63f1a368f21c22611df3e97109535674e3b38f813918ab14`  
		Last Modified: Fri, 15 Sep 2017 21:02:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae74c48639845bd6e4d8ff25509d0681e87782e07bb9977c3d659c30b1a59323`  
		Last Modified: Fri, 15 Sep 2017 21:41:05 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb48beea4352ce0dff0bbc22ca6e5c8d92179304257d1834019750b0a59be6f`  
		Last Modified: Fri, 15 Sep 2017 21:41:06 GMT  
		Size: 14.7 MB (14650208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c295b61538906626bbc6c2e466b6ec9b300e9932555b15202d5cce7ffada6e`  
		Last Modified: Fri, 15 Sep 2017 21:41:03 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a706258641eb51308f18931d1081205decb604fe88aa358d4cbbfcbf9cabe6b`  
		Last Modified: Fri, 15 Sep 2017 21:41:02 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46088c33a85818abefda29ca1b652f401b7ec360c6944bced0166e87afbc95dc`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 59.2 MB (59237662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453ddccf435baaa321a2becb15da700bb43fd61a71a795226ad835bc8544585`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff991390a3543daf88d9d090e4693b646cbac2b7a5ec08cf6759a855f98490d`  
		Last Modified: Fri, 15 Sep 2017 21:43:06 GMT  
		Size: 2.3 MB (2281527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ba92e325132d1f37c0975eb6b99f7aa435d767f28dabcd108dc02ae899807`  
		Last Modified: Fri, 15 Sep 2017 21:43:14 GMT  
		Size: 68.4 MB (68373472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663b0a273758bcf76d2668d88428b66417ebdd544ae5b106dfd029836c90afbb`  
		Last Modified: Fri, 15 Sep 2017 21:43:06 GMT  
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
$ docker pull redmine@sha256:df799c74d0d0eeb2d10c604984ff1b9346578a6287a36b2b5131779bd1840940
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248695168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deba1ef36ac26bd75f901f2e7dae185728c62fcc8f97fcabb1f65b678929c481`
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
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:24:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:24:16 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:24:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:24:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:24:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:24:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:24:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:24:18 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 20:47:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 20:47:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:47:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 20:47:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 20:47:49 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 20:47:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 20:48:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:48:23 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 20:48:23 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 20:53:48 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 15 Sep 2017 20:53:48 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 15 Sep 2017 20:53:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 20:56:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 20:56:08 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 20:56:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 20:56:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 20:56:08 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 20:56:08 GMT
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
	-	`sha256:1d14f14e8362854101b70d00194cb7f6ef53d3be4f25964c82cae5c9fdd2e4c3`  
		Last Modified: Fri, 15 Sep 2017 20:28:16 GMT  
		Size: 37.8 MB (37837315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d60f04405bf3d6b06eb813f0018dbdcaa4fa36d8fd6ad65ec0caf2bb88ed573`  
		Last Modified: Fri, 15 Sep 2017 20:28:06 GMT  
		Size: 677.1 KB (677055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19023811c6f8f919bc9e78221adc720b11241d814a83d90f23d9fb558c9973c`  
		Last Modified: Fri, 15 Sep 2017 20:28:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceea19ac0b2ea6aed63aa630ec0c88e38b246b8d189a8d23c5831a115c6d2877`  
		Last Modified: Fri, 15 Sep 2017 20:57:07 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665b696478214518b5910f41917f8a16b8e36c10c8294bb6f1061ab41f1ad8e1`  
		Last Modified: Fri, 15 Sep 2017 20:57:08 GMT  
		Size: 14.8 MB (14814978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d18cd2f6897a516f16635c41d08097f2b855719655e36eefa46abd89e47c1fb`  
		Last Modified: Fri, 15 Sep 2017 20:57:05 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b4996dbfc468ae50b524ea1769358d1e05cf8d097f8923f1c123d72ae62948`  
		Last Modified: Fri, 15 Sep 2017 20:57:03 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5613eb829c3bcaadce62a3f1bfe7acbd1534e5a6eef9f2effaee23f405c235`  
		Last Modified: Fri, 15 Sep 2017 20:57:15 GMT  
		Size: 59.1 MB (59090658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888eb127e24622015c2c5c6adbb868a4fd59d264d25aa102cc1d600a65d10a1e`  
		Last Modified: Fri, 15 Sep 2017 20:57:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a3a490d83f643f66fc9f64b0e28c3c1a06f1bbedfc05bd286f1318e2863d26`  
		Last Modified: Fri, 15 Sep 2017 20:57:52 GMT  
		Size: 2.3 MB (2281534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ef23b218db78f33bf7924b5acc552dd02cdd2bd31cce021214fd939c8a5df`  
		Last Modified: Fri, 15 Sep 2017 20:58:07 GMT  
		Size: 70.7 MB (70745401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016a6057e7f8a2b763027b18ccdb84e0e55fc586d4b106075f7f67bc5ace7bbb`  
		Last Modified: Fri, 15 Sep 2017 20:57:52 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:6ebd4a5ae7c6970fcfe8111edc69785667caede9bc828ddb2752da5b2ee0b12b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:f742be19a329c3491d38527b8b88c609f1c20e2fd6159c355c46dacc71acb997
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.9 MB (261855959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa2eba31d47d0a5ccd82ad3a27ca1e2895e38d2a19db8507b3f4966d55882fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 03:39:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 20:39:43 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:43:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:43:29 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:43:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:43:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:43:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:43:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:27:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:27:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:27:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:27:20 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:27:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:28:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:28:02 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:28:02 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:34:56 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 15 Sep 2017 21:34:56 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 15 Sep 2017 21:35:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:38:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:38:49 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:38:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:38:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:38:49 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:38:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 15 Sep 2017 21:39:06 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 15 Sep 2017 21:39:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:39:32 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 15 Sep 2017 21:39:32 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b27fc027eafedccb29ee9c9ec1440bc1c57e5947bf07810740294566ed404`  
		Last Modified: Fri, 15 Sep 2017 21:02:28 GMT  
		Size: 34.2 MB (34163364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0652a9f4c91cecb72353a847d10129f0690e5b12e330ca62f1d233e77a7750`  
		Last Modified: Fri, 15 Sep 2017 21:02:15 GMT  
		Size: 677.1 KB (677052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379a6458a84f2baf63f1a368f21c22611df3e97109535674e3b38f813918ab14`  
		Last Modified: Fri, 15 Sep 2017 21:02:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae74c48639845bd6e4d8ff25509d0681e87782e07bb9977c3d659c30b1a59323`  
		Last Modified: Fri, 15 Sep 2017 21:41:05 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb48beea4352ce0dff0bbc22ca6e5c8d92179304257d1834019750b0a59be6f`  
		Last Modified: Fri, 15 Sep 2017 21:41:06 GMT  
		Size: 14.7 MB (14650208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c295b61538906626bbc6c2e466b6ec9b300e9932555b15202d5cce7ffada6e`  
		Last Modified: Fri, 15 Sep 2017 21:41:03 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a706258641eb51308f18931d1081205decb604fe88aa358d4cbbfcbf9cabe6b`  
		Last Modified: Fri, 15 Sep 2017 21:41:02 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46088c33a85818abefda29ca1b652f401b7ec360c6944bced0166e87afbc95dc`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 59.2 MB (59237662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453ddccf435baaa321a2becb15da700bb43fd61a71a795226ad835bc8544585`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff991390a3543daf88d9d090e4693b646cbac2b7a5ec08cf6759a855f98490d`  
		Last Modified: Fri, 15 Sep 2017 21:43:06 GMT  
		Size: 2.3 MB (2281527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ba92e325132d1f37c0975eb6b99f7aa435d767f28dabcd108dc02ae899807`  
		Last Modified: Fri, 15 Sep 2017 21:43:14 GMT  
		Size: 68.4 MB (68373472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663b0a273758bcf76d2668d88428b66417ebdd544ae5b106dfd029836c90afbb`  
		Last Modified: Fri, 15 Sep 2017 21:43:06 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc76005b75ef4f2b1cbefa67a24e2d0af063ff12d176b5a20f7d372c940b8e11`  
		Last Modified: Fri, 15 Sep 2017 21:43:32 GMT  
		Size: 14.9 MB (14928358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c6013ec95e4ac61a50b2b00396be236160ded4d1a9862e019241b2e6502a6f`  
		Last Modified: Fri, 15 Sep 2017 21:43:31 GMT  
		Size: 4.3 MB (4273934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:6ebd4a5ae7c6970fcfe8111edc69785667caede9bc828ddb2752da5b2ee0b12b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:f742be19a329c3491d38527b8b88c609f1c20e2fd6159c355c46dacc71acb997
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.9 MB (261855959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa2eba31d47d0a5ccd82ad3a27ca1e2895e38d2a19db8507b3f4966d55882fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 03:39:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 20:39:43 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:43:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:43:29 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:43:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:43:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:43:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:43:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:27:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:27:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:27:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:27:20 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:27:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:28:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:28:02 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:28:02 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:34:56 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 15 Sep 2017 21:34:56 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 15 Sep 2017 21:35:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:38:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:38:49 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:38:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:38:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:38:49 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:38:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 15 Sep 2017 21:39:06 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 15 Sep 2017 21:39:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:39:32 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 15 Sep 2017 21:39:32 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b27fc027eafedccb29ee9c9ec1440bc1c57e5947bf07810740294566ed404`  
		Last Modified: Fri, 15 Sep 2017 21:02:28 GMT  
		Size: 34.2 MB (34163364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0652a9f4c91cecb72353a847d10129f0690e5b12e330ca62f1d233e77a7750`  
		Last Modified: Fri, 15 Sep 2017 21:02:15 GMT  
		Size: 677.1 KB (677052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379a6458a84f2baf63f1a368f21c22611df3e97109535674e3b38f813918ab14`  
		Last Modified: Fri, 15 Sep 2017 21:02:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae74c48639845bd6e4d8ff25509d0681e87782e07bb9977c3d659c30b1a59323`  
		Last Modified: Fri, 15 Sep 2017 21:41:05 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb48beea4352ce0dff0bbc22ca6e5c8d92179304257d1834019750b0a59be6f`  
		Last Modified: Fri, 15 Sep 2017 21:41:06 GMT  
		Size: 14.7 MB (14650208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c295b61538906626bbc6c2e466b6ec9b300e9932555b15202d5cce7ffada6e`  
		Last Modified: Fri, 15 Sep 2017 21:41:03 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a706258641eb51308f18931d1081205decb604fe88aa358d4cbbfcbf9cabe6b`  
		Last Modified: Fri, 15 Sep 2017 21:41:02 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46088c33a85818abefda29ca1b652f401b7ec360c6944bced0166e87afbc95dc`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 59.2 MB (59237662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453ddccf435baaa321a2becb15da700bb43fd61a71a795226ad835bc8544585`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff991390a3543daf88d9d090e4693b646cbac2b7a5ec08cf6759a855f98490d`  
		Last Modified: Fri, 15 Sep 2017 21:43:06 GMT  
		Size: 2.3 MB (2281527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ba92e325132d1f37c0975eb6b99f7aa435d767f28dabcd108dc02ae899807`  
		Last Modified: Fri, 15 Sep 2017 21:43:14 GMT  
		Size: 68.4 MB (68373472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663b0a273758bcf76d2668d88428b66417ebdd544ae5b106dfd029836c90afbb`  
		Last Modified: Fri, 15 Sep 2017 21:43:06 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc76005b75ef4f2b1cbefa67a24e2d0af063ff12d176b5a20f7d372c940b8e11`  
		Last Modified: Fri, 15 Sep 2017 21:43:32 GMT  
		Size: 14.9 MB (14928358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c6013ec95e4ac61a50b2b00396be236160ded4d1a9862e019241b2e6502a6f`  
		Last Modified: Fri, 15 Sep 2017 21:43:31 GMT  
		Size: 4.3 MB (4273934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:20034ec7b7a955bffb332a894b3ded2a25520d201307c5bcd336a3c10b4230b2
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
$ docker pull redmine@sha256:061b474345f7d073ac65cb43757d6b038593bf3826f2740390590a78e694b0b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251788665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ec08d834910678614168dc90ac6018b965fff84dd8437df6f79ca8423c4316`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 03:39:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 20:39:43 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:43:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:43:29 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:43:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:43:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:43:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:43:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:27:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:27:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:27:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:27:20 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:27:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:28:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:28:02 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:28:02 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:31:33 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 21:31:33 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 21:31:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:34:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:34:07 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:34:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:34:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:34:08 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:34:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b27fc027eafedccb29ee9c9ec1440bc1c57e5947bf07810740294566ed404`  
		Last Modified: Fri, 15 Sep 2017 21:02:28 GMT  
		Size: 34.2 MB (34163364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0652a9f4c91cecb72353a847d10129f0690e5b12e330ca62f1d233e77a7750`  
		Last Modified: Fri, 15 Sep 2017 21:02:15 GMT  
		Size: 677.1 KB (677052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379a6458a84f2baf63f1a368f21c22611df3e97109535674e3b38f813918ab14`  
		Last Modified: Fri, 15 Sep 2017 21:02:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae74c48639845bd6e4d8ff25509d0681e87782e07bb9977c3d659c30b1a59323`  
		Last Modified: Fri, 15 Sep 2017 21:41:05 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb48beea4352ce0dff0bbc22ca6e5c8d92179304257d1834019750b0a59be6f`  
		Last Modified: Fri, 15 Sep 2017 21:41:06 GMT  
		Size: 14.7 MB (14650208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c295b61538906626bbc6c2e466b6ec9b300e9932555b15202d5cce7ffada6e`  
		Last Modified: Fri, 15 Sep 2017 21:41:03 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a706258641eb51308f18931d1081205decb604fe88aa358d4cbbfcbf9cabe6b`  
		Last Modified: Fri, 15 Sep 2017 21:41:02 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46088c33a85818abefda29ca1b652f401b7ec360c6944bced0166e87afbc95dc`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 59.2 MB (59237662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453ddccf435baaa321a2becb15da700bb43fd61a71a795226ad835bc8544585`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae8ccfb4d3465a35ddbca63bd5195d9382af68a434ad751b6f44a0dfa9aa867`  
		Last Modified: Fri, 15 Sep 2017 21:41:49 GMT  
		Size: 2.3 MB (2347115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86be035fc70fba296e212ec17c64c6170f13d2e2531fcf738a744533d7fda012`  
		Last Modified: Fri, 15 Sep 2017 21:42:31 GMT  
		Size: 77.4 MB (77442883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923fdfc3bb708b3656cec55dee45d80d67926bd253a8fa769b1324d286caf256`  
		Last Modified: Fri, 15 Sep 2017 21:41:49 GMT  
		Size: 1.7 KB (1709 bytes)  
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
$ docker pull redmine@sha256:8980fe2825a543a625248208e63685bea15f500789932e7f2b9d6991020db6ca
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257838986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86f42ce96f36b6f4fbdb9712577e79942b6f64605655b07eec1b2d8cc6c5309`
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
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:24:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:24:16 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:24:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:24:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:24:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:24:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:24:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:24:18 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 20:47:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 20:47:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:47:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 20:47:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 20:47:49 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 20:47:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 20:48:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:48:23 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 20:48:23 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 20:51:12 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 20:51:12 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 20:51:15 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 20:53:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 20:53:27 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 20:53:27 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 20:53:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 20:53:27 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 20:53:28 GMT
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
	-	`sha256:1d14f14e8362854101b70d00194cb7f6ef53d3be4f25964c82cae5c9fdd2e4c3`  
		Last Modified: Fri, 15 Sep 2017 20:28:16 GMT  
		Size: 37.8 MB (37837315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d60f04405bf3d6b06eb813f0018dbdcaa4fa36d8fd6ad65ec0caf2bb88ed573`  
		Last Modified: Fri, 15 Sep 2017 20:28:06 GMT  
		Size: 677.1 KB (677055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19023811c6f8f919bc9e78221adc720b11241d814a83d90f23d9fb558c9973c`  
		Last Modified: Fri, 15 Sep 2017 20:28:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceea19ac0b2ea6aed63aa630ec0c88e38b246b8d189a8d23c5831a115c6d2877`  
		Last Modified: Fri, 15 Sep 2017 20:57:07 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665b696478214518b5910f41917f8a16b8e36c10c8294bb6f1061ab41f1ad8e1`  
		Last Modified: Fri, 15 Sep 2017 20:57:08 GMT  
		Size: 14.8 MB (14814978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d18cd2f6897a516f16635c41d08097f2b855719655e36eefa46abd89e47c1fb`  
		Last Modified: Fri, 15 Sep 2017 20:57:05 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b4996dbfc468ae50b524ea1769358d1e05cf8d097f8923f1c123d72ae62948`  
		Last Modified: Fri, 15 Sep 2017 20:57:03 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5613eb829c3bcaadce62a3f1bfe7acbd1534e5a6eef9f2effaee23f405c235`  
		Last Modified: Fri, 15 Sep 2017 20:57:15 GMT  
		Size: 59.1 MB (59090658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888eb127e24622015c2c5c6adbb868a4fd59d264d25aa102cc1d600a65d10a1e`  
		Last Modified: Fri, 15 Sep 2017 20:57:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb25ff315dd17e4fd91d85e89a940b40ff840b71bd5700b5383b936e918897`  
		Last Modified: Fri, 15 Sep 2017 20:57:31 GMT  
		Size: 2.3 MB (2347109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd603c74a2259fbd07a0165390e41211443f953dfecc2da3dcce7a48fbb7afe`  
		Last Modified: Fri, 15 Sep 2017 20:57:42 GMT  
		Size: 79.8 MB (79823646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871457d7c80affb6de9dc533789df866c61e31db7ff2204e933089a536b5c4c7`  
		Last Modified: Fri, 15 Sep 2017 20:57:30 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7`

```console
$ docker pull redmine@sha256:20034ec7b7a955bffb332a894b3ded2a25520d201307c5bcd336a3c10b4230b2
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
$ docker pull redmine@sha256:061b474345f7d073ac65cb43757d6b038593bf3826f2740390590a78e694b0b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251788665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ec08d834910678614168dc90ac6018b965fff84dd8437df6f79ca8423c4316`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 03:39:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 20:39:43 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:43:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:43:29 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:43:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:43:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:43:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:43:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:27:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:27:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:27:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:27:20 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:27:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:28:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:28:02 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:28:02 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:31:33 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 21:31:33 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 21:31:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:34:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:34:07 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:34:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:34:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:34:08 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:34:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b27fc027eafedccb29ee9c9ec1440bc1c57e5947bf07810740294566ed404`  
		Last Modified: Fri, 15 Sep 2017 21:02:28 GMT  
		Size: 34.2 MB (34163364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0652a9f4c91cecb72353a847d10129f0690e5b12e330ca62f1d233e77a7750`  
		Last Modified: Fri, 15 Sep 2017 21:02:15 GMT  
		Size: 677.1 KB (677052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379a6458a84f2baf63f1a368f21c22611df3e97109535674e3b38f813918ab14`  
		Last Modified: Fri, 15 Sep 2017 21:02:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae74c48639845bd6e4d8ff25509d0681e87782e07bb9977c3d659c30b1a59323`  
		Last Modified: Fri, 15 Sep 2017 21:41:05 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb48beea4352ce0dff0bbc22ca6e5c8d92179304257d1834019750b0a59be6f`  
		Last Modified: Fri, 15 Sep 2017 21:41:06 GMT  
		Size: 14.7 MB (14650208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c295b61538906626bbc6c2e466b6ec9b300e9932555b15202d5cce7ffada6e`  
		Last Modified: Fri, 15 Sep 2017 21:41:03 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a706258641eb51308f18931d1081205decb604fe88aa358d4cbbfcbf9cabe6b`  
		Last Modified: Fri, 15 Sep 2017 21:41:02 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46088c33a85818abefda29ca1b652f401b7ec360c6944bced0166e87afbc95dc`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 59.2 MB (59237662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453ddccf435baaa321a2becb15da700bb43fd61a71a795226ad835bc8544585`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae8ccfb4d3465a35ddbca63bd5195d9382af68a434ad751b6f44a0dfa9aa867`  
		Last Modified: Fri, 15 Sep 2017 21:41:49 GMT  
		Size: 2.3 MB (2347115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86be035fc70fba296e212ec17c64c6170f13d2e2531fcf738a744533d7fda012`  
		Last Modified: Fri, 15 Sep 2017 21:42:31 GMT  
		Size: 77.4 MB (77442883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923fdfc3bb708b3656cec55dee45d80d67926bd253a8fa769b1324d286caf256`  
		Last Modified: Fri, 15 Sep 2017 21:41:49 GMT  
		Size: 1.7 KB (1709 bytes)  
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
$ docker pull redmine@sha256:8980fe2825a543a625248208e63685bea15f500789932e7f2b9d6991020db6ca
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257838986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86f42ce96f36b6f4fbdb9712577e79942b6f64605655b07eec1b2d8cc6c5309`
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
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:24:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:24:16 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:24:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:24:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:24:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:24:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:24:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:24:18 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 20:47:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 20:47:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:47:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 20:47:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 20:47:49 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 20:47:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 20:48:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:48:23 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 20:48:23 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 20:51:12 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 20:51:12 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 20:51:15 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 20:53:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 20:53:27 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 20:53:27 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 20:53:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 20:53:27 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 20:53:28 GMT
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
	-	`sha256:1d14f14e8362854101b70d00194cb7f6ef53d3be4f25964c82cae5c9fdd2e4c3`  
		Last Modified: Fri, 15 Sep 2017 20:28:16 GMT  
		Size: 37.8 MB (37837315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d60f04405bf3d6b06eb813f0018dbdcaa4fa36d8fd6ad65ec0caf2bb88ed573`  
		Last Modified: Fri, 15 Sep 2017 20:28:06 GMT  
		Size: 677.1 KB (677055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19023811c6f8f919bc9e78221adc720b11241d814a83d90f23d9fb558c9973c`  
		Last Modified: Fri, 15 Sep 2017 20:28:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceea19ac0b2ea6aed63aa630ec0c88e38b246b8d189a8d23c5831a115c6d2877`  
		Last Modified: Fri, 15 Sep 2017 20:57:07 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665b696478214518b5910f41917f8a16b8e36c10c8294bb6f1061ab41f1ad8e1`  
		Last Modified: Fri, 15 Sep 2017 20:57:08 GMT  
		Size: 14.8 MB (14814978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d18cd2f6897a516f16635c41d08097f2b855719655e36eefa46abd89e47c1fb`  
		Last Modified: Fri, 15 Sep 2017 20:57:05 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b4996dbfc468ae50b524ea1769358d1e05cf8d097f8923f1c123d72ae62948`  
		Last Modified: Fri, 15 Sep 2017 20:57:03 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5613eb829c3bcaadce62a3f1bfe7acbd1534e5a6eef9f2effaee23f405c235`  
		Last Modified: Fri, 15 Sep 2017 20:57:15 GMT  
		Size: 59.1 MB (59090658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888eb127e24622015c2c5c6adbb868a4fd59d264d25aa102cc1d600a65d10a1e`  
		Last Modified: Fri, 15 Sep 2017 20:57:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb25ff315dd17e4fd91d85e89a940b40ff840b71bd5700b5383b936e918897`  
		Last Modified: Fri, 15 Sep 2017 20:57:31 GMT  
		Size: 2.3 MB (2347109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd603c74a2259fbd07a0165390e41211443f953dfecc2da3dcce7a48fbb7afe`  
		Last Modified: Fri, 15 Sep 2017 20:57:42 GMT  
		Size: 79.8 MB (79823646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871457d7c80affb6de9dc533789df866c61e31db7ff2204e933089a536b5c4c7`  
		Last Modified: Fri, 15 Sep 2017 20:57:30 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7-passenger`

```console
$ docker pull redmine@sha256:0304c0a5316c7cf04ea218ee417ddc7232ea67ad25beef1a0b7e54a27ea2122e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.7-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:650ce2099a94e1761566a2a8c8da95e57f9eda570b679ae08325dd54c6990798
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (270991207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44fc98e4e470dd911d361ed9673aab8ffdd42de626253d8112be82aa2c415413`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 03:39:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 20:39:43 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:43:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:43:29 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:43:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:43:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:43:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:43:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:27:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:27:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:27:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:27:20 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:27:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:28:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:28:02 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:28:02 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:31:33 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 21:31:33 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 21:31:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:34:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:34:07 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:34:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:34:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:34:08 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:34:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 15 Sep 2017 21:34:13 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 15 Sep 2017 21:34:48 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:34:49 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 15 Sep 2017 21:34:49 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b27fc027eafedccb29ee9c9ec1440bc1c57e5947bf07810740294566ed404`  
		Last Modified: Fri, 15 Sep 2017 21:02:28 GMT  
		Size: 34.2 MB (34163364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0652a9f4c91cecb72353a847d10129f0690e5b12e330ca62f1d233e77a7750`  
		Last Modified: Fri, 15 Sep 2017 21:02:15 GMT  
		Size: 677.1 KB (677052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379a6458a84f2baf63f1a368f21c22611df3e97109535674e3b38f813918ab14`  
		Last Modified: Fri, 15 Sep 2017 21:02:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae74c48639845bd6e4d8ff25509d0681e87782e07bb9977c3d659c30b1a59323`  
		Last Modified: Fri, 15 Sep 2017 21:41:05 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb48beea4352ce0dff0bbc22ca6e5c8d92179304257d1834019750b0a59be6f`  
		Last Modified: Fri, 15 Sep 2017 21:41:06 GMT  
		Size: 14.7 MB (14650208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c295b61538906626bbc6c2e466b6ec9b300e9932555b15202d5cce7ffada6e`  
		Last Modified: Fri, 15 Sep 2017 21:41:03 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a706258641eb51308f18931d1081205decb604fe88aa358d4cbbfcbf9cabe6b`  
		Last Modified: Fri, 15 Sep 2017 21:41:02 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46088c33a85818abefda29ca1b652f401b7ec360c6944bced0166e87afbc95dc`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 59.2 MB (59237662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453ddccf435baaa321a2becb15da700bb43fd61a71a795226ad835bc8544585`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae8ccfb4d3465a35ddbca63bd5195d9382af68a434ad751b6f44a0dfa9aa867`  
		Last Modified: Fri, 15 Sep 2017 21:41:49 GMT  
		Size: 2.3 MB (2347115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86be035fc70fba296e212ec17c64c6170f13d2e2531fcf738a744533d7fda012`  
		Last Modified: Fri, 15 Sep 2017 21:42:31 GMT  
		Size: 77.4 MB (77442883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923fdfc3bb708b3656cec55dee45d80d67926bd253a8fa769b1324d286caf256`  
		Last Modified: Fri, 15 Sep 2017 21:41:49 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f9a8ea6d32f0423ff6888f604037573ec430a13604ae070d7380b34c44e3ee`  
		Last Modified: Fri, 15 Sep 2017 21:42:50 GMT  
		Size: 14.9 MB (14928605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf91fe14e6829df616a017b693fb4b3e4c30048f9c9fb11f7e752b9d8007709`  
		Last Modified: Fri, 15 Sep 2017 21:42:49 GMT  
		Size: 4.3 MB (4273937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:0304c0a5316c7cf04ea218ee417ddc7232ea67ad25beef1a0b7e54a27ea2122e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:650ce2099a94e1761566a2a8c8da95e57f9eda570b679ae08325dd54c6990798
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (270991207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44fc98e4e470dd911d361ed9673aab8ffdd42de626253d8112be82aa2c415413`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 03:39:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 20:39:43 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:43:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:43:29 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:43:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:43:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:43:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:43:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:27:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:27:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:27:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:27:20 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:27:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:28:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:28:02 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:28:02 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:31:33 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 21:31:33 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 21:31:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:34:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:34:07 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:34:08 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:34:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:34:08 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:34:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 15 Sep 2017 21:34:13 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 15 Sep 2017 21:34:48 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:34:49 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 15 Sep 2017 21:34:49 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b27fc027eafedccb29ee9c9ec1440bc1c57e5947bf07810740294566ed404`  
		Last Modified: Fri, 15 Sep 2017 21:02:28 GMT  
		Size: 34.2 MB (34163364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0652a9f4c91cecb72353a847d10129f0690e5b12e330ca62f1d233e77a7750`  
		Last Modified: Fri, 15 Sep 2017 21:02:15 GMT  
		Size: 677.1 KB (677052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379a6458a84f2baf63f1a368f21c22611df3e97109535674e3b38f813918ab14`  
		Last Modified: Fri, 15 Sep 2017 21:02:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae74c48639845bd6e4d8ff25509d0681e87782e07bb9977c3d659c30b1a59323`  
		Last Modified: Fri, 15 Sep 2017 21:41:05 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb48beea4352ce0dff0bbc22ca6e5c8d92179304257d1834019750b0a59be6f`  
		Last Modified: Fri, 15 Sep 2017 21:41:06 GMT  
		Size: 14.7 MB (14650208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c295b61538906626bbc6c2e466b6ec9b300e9932555b15202d5cce7ffada6e`  
		Last Modified: Fri, 15 Sep 2017 21:41:03 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a706258641eb51308f18931d1081205decb604fe88aa358d4cbbfcbf9cabe6b`  
		Last Modified: Fri, 15 Sep 2017 21:41:02 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46088c33a85818abefda29ca1b652f401b7ec360c6944bced0166e87afbc95dc`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 59.2 MB (59237662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453ddccf435baaa321a2becb15da700bb43fd61a71a795226ad835bc8544585`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae8ccfb4d3465a35ddbca63bd5195d9382af68a434ad751b6f44a0dfa9aa867`  
		Last Modified: Fri, 15 Sep 2017 21:41:49 GMT  
		Size: 2.3 MB (2347115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86be035fc70fba296e212ec17c64c6170f13d2e2531fcf738a744533d7fda012`  
		Last Modified: Fri, 15 Sep 2017 21:42:31 GMT  
		Size: 77.4 MB (77442883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923fdfc3bb708b3656cec55dee45d80d67926bd253a8fa769b1324d286caf256`  
		Last Modified: Fri, 15 Sep 2017 21:41:49 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f9a8ea6d32f0423ff6888f604037573ec430a13604ae070d7380b34c44e3ee`  
		Last Modified: Fri, 15 Sep 2017 21:42:50 GMT  
		Size: 14.9 MB (14928605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf91fe14e6829df616a017b693fb4b3e4c30048f9c9fb11f7e752b9d8007709`  
		Last Modified: Fri, 15 Sep 2017 21:42:49 GMT  
		Size: 4.3 MB (4273937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:01f2cf52b869bea8d824751dbeb087cd1d82cb866e4255c5dae0abde3d5023d4
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
$ docker pull redmine@sha256:bbd87e32a0ae090ef0beb18871ea40344bc10a9b322ab5166a788e841fd6a62d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251819623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc25092fc7fc09f6d688928318d7acec1c2e404bee1cb69a8df1d8e51296b6a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 03:39:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 20:39:43 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:43:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:43:29 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:43:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:43:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:43:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:43:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:27:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:27:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:27:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:27:20 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:27:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:28:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:28:02 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:28:02 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:28:02 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 21:28:02 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 21:28:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:30:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:30:56 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:30:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:30:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:30:57 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:30:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b27fc027eafedccb29ee9c9ec1440bc1c57e5947bf07810740294566ed404`  
		Last Modified: Fri, 15 Sep 2017 21:02:28 GMT  
		Size: 34.2 MB (34163364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0652a9f4c91cecb72353a847d10129f0690e5b12e330ca62f1d233e77a7750`  
		Last Modified: Fri, 15 Sep 2017 21:02:15 GMT  
		Size: 677.1 KB (677052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379a6458a84f2baf63f1a368f21c22611df3e97109535674e3b38f813918ab14`  
		Last Modified: Fri, 15 Sep 2017 21:02:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae74c48639845bd6e4d8ff25509d0681e87782e07bb9977c3d659c30b1a59323`  
		Last Modified: Fri, 15 Sep 2017 21:41:05 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb48beea4352ce0dff0bbc22ca6e5c8d92179304257d1834019750b0a59be6f`  
		Last Modified: Fri, 15 Sep 2017 21:41:06 GMT  
		Size: 14.7 MB (14650208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c295b61538906626bbc6c2e466b6ec9b300e9932555b15202d5cce7ffada6e`  
		Last Modified: Fri, 15 Sep 2017 21:41:03 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a706258641eb51308f18931d1081205decb604fe88aa358d4cbbfcbf9cabe6b`  
		Last Modified: Fri, 15 Sep 2017 21:41:02 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46088c33a85818abefda29ca1b652f401b7ec360c6944bced0166e87afbc95dc`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 59.2 MB (59237662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453ddccf435baaa321a2becb15da700bb43fd61a71a795226ad835bc8544585`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e9b33eca589620f5fcfcc2cd92c61f8762cbd012638831dea0c35c5ca6d6c`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1d9a1a1bce0833a03154c0207379c8e42b0754fae8981052694f0cb394fc58`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 77.4 MB (77430646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efbfc074f1cbf80d50f446e39f7971ad5eb73473bc5c602011d262f7b4c2e8`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
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
$ docker pull redmine@sha256:819de1669bda4b198556dde28a26c48a50996289d8985e215853ab329f412909
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.9 MB (257882045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf1b4c7f343b658da475a3746e2380e838df1b01ad5c24750ff9ed80b57e41be`
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
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:24:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:24:16 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:24:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:24:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:24:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:24:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:24:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:24:18 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 20:47:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 20:47:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:47:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 20:47:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 20:47:49 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 20:47:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 20:48:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:48:23 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 20:48:23 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 20:48:23 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 20:48:23 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 20:48:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 20:50:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 20:50:52 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 20:50:52 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 20:50:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 20:50:52 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 20:50:52 GMT
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
	-	`sha256:1d14f14e8362854101b70d00194cb7f6ef53d3be4f25964c82cae5c9fdd2e4c3`  
		Last Modified: Fri, 15 Sep 2017 20:28:16 GMT  
		Size: 37.8 MB (37837315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d60f04405bf3d6b06eb813f0018dbdcaa4fa36d8fd6ad65ec0caf2bb88ed573`  
		Last Modified: Fri, 15 Sep 2017 20:28:06 GMT  
		Size: 677.1 KB (677055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19023811c6f8f919bc9e78221adc720b11241d814a83d90f23d9fb558c9973c`  
		Last Modified: Fri, 15 Sep 2017 20:28:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceea19ac0b2ea6aed63aa630ec0c88e38b246b8d189a8d23c5831a115c6d2877`  
		Last Modified: Fri, 15 Sep 2017 20:57:07 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665b696478214518b5910f41917f8a16b8e36c10c8294bb6f1061ab41f1ad8e1`  
		Last Modified: Fri, 15 Sep 2017 20:57:08 GMT  
		Size: 14.8 MB (14814978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d18cd2f6897a516f16635c41d08097f2b855719655e36eefa46abd89e47c1fb`  
		Last Modified: Fri, 15 Sep 2017 20:57:05 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b4996dbfc468ae50b524ea1769358d1e05cf8d097f8923f1c123d72ae62948`  
		Last Modified: Fri, 15 Sep 2017 20:57:03 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5613eb829c3bcaadce62a3f1bfe7acbd1534e5a6eef9f2effaee23f405c235`  
		Last Modified: Fri, 15 Sep 2017 20:57:15 GMT  
		Size: 59.1 MB (59090658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888eb127e24622015c2c5c6adbb868a4fd59d264d25aa102cc1d600a65d10a1e`  
		Last Modified: Fri, 15 Sep 2017 20:57:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deca0ca5b7cd460d903caf22ce0dd877bb76bba9c1854aeaf40019de6428a8fe`  
		Last Modified: Fri, 15 Sep 2017 20:57:03 GMT  
		Size: 2.4 MB (2390319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a06287b4e81fd3e7bd38316d258f813519518783698d70c7338d0985f0985`  
		Last Modified: Fri, 15 Sep 2017 20:57:14 GMT  
		Size: 79.8 MB (79823493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed268c1a8bbb5b2e91ba413a157a1d0bd706dd19bf0d70e19f21462c2113f9a`  
		Last Modified: Fri, 15 Sep 2017 20:57:02 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4`

```console
$ docker pull redmine@sha256:01f2cf52b869bea8d824751dbeb087cd1d82cb866e4255c5dae0abde3d5023d4
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
$ docker pull redmine@sha256:bbd87e32a0ae090ef0beb18871ea40344bc10a9b322ab5166a788e841fd6a62d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251819623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc25092fc7fc09f6d688928318d7acec1c2e404bee1cb69a8df1d8e51296b6a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 03:39:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 20:39:43 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:43:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:43:29 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:43:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:43:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:43:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:43:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:27:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:27:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:27:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:27:20 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:27:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:28:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:28:02 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:28:02 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:28:02 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 21:28:02 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 21:28:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:30:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:30:56 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:30:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:30:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:30:57 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:30:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b27fc027eafedccb29ee9c9ec1440bc1c57e5947bf07810740294566ed404`  
		Last Modified: Fri, 15 Sep 2017 21:02:28 GMT  
		Size: 34.2 MB (34163364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0652a9f4c91cecb72353a847d10129f0690e5b12e330ca62f1d233e77a7750`  
		Last Modified: Fri, 15 Sep 2017 21:02:15 GMT  
		Size: 677.1 KB (677052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379a6458a84f2baf63f1a368f21c22611df3e97109535674e3b38f813918ab14`  
		Last Modified: Fri, 15 Sep 2017 21:02:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae74c48639845bd6e4d8ff25509d0681e87782e07bb9977c3d659c30b1a59323`  
		Last Modified: Fri, 15 Sep 2017 21:41:05 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb48beea4352ce0dff0bbc22ca6e5c8d92179304257d1834019750b0a59be6f`  
		Last Modified: Fri, 15 Sep 2017 21:41:06 GMT  
		Size: 14.7 MB (14650208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c295b61538906626bbc6c2e466b6ec9b300e9932555b15202d5cce7ffada6e`  
		Last Modified: Fri, 15 Sep 2017 21:41:03 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a706258641eb51308f18931d1081205decb604fe88aa358d4cbbfcbf9cabe6b`  
		Last Modified: Fri, 15 Sep 2017 21:41:02 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46088c33a85818abefda29ca1b652f401b7ec360c6944bced0166e87afbc95dc`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 59.2 MB (59237662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453ddccf435baaa321a2becb15da700bb43fd61a71a795226ad835bc8544585`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e9b33eca589620f5fcfcc2cd92c61f8762cbd012638831dea0c35c5ca6d6c`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1d9a1a1bce0833a03154c0207379c8e42b0754fae8981052694f0cb394fc58`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 77.4 MB (77430646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efbfc074f1cbf80d50f446e39f7971ad5eb73473bc5c602011d262f7b4c2e8`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
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
$ docker pull redmine@sha256:819de1669bda4b198556dde28a26c48a50996289d8985e215853ab329f412909
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.9 MB (257882045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf1b4c7f343b658da475a3746e2380e838df1b01ad5c24750ff9ed80b57e41be`
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
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:21:47 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:24:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:24:16 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:24:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:24:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:24:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:24:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:24:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:24:18 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 20:47:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 20:47:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:47:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 20:47:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 20:47:49 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 20:47:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 20:48:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:48:23 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 20:48:23 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 20:48:23 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 20:48:23 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 20:48:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 20:50:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 20:50:52 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 20:50:52 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 20:50:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 20:50:52 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 20:50:52 GMT
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
	-	`sha256:1d14f14e8362854101b70d00194cb7f6ef53d3be4f25964c82cae5c9fdd2e4c3`  
		Last Modified: Fri, 15 Sep 2017 20:28:16 GMT  
		Size: 37.8 MB (37837315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d60f04405bf3d6b06eb813f0018dbdcaa4fa36d8fd6ad65ec0caf2bb88ed573`  
		Last Modified: Fri, 15 Sep 2017 20:28:06 GMT  
		Size: 677.1 KB (677055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19023811c6f8f919bc9e78221adc720b11241d814a83d90f23d9fb558c9973c`  
		Last Modified: Fri, 15 Sep 2017 20:28:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceea19ac0b2ea6aed63aa630ec0c88e38b246b8d189a8d23c5831a115c6d2877`  
		Last Modified: Fri, 15 Sep 2017 20:57:07 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665b696478214518b5910f41917f8a16b8e36c10c8294bb6f1061ab41f1ad8e1`  
		Last Modified: Fri, 15 Sep 2017 20:57:08 GMT  
		Size: 14.8 MB (14814978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d18cd2f6897a516f16635c41d08097f2b855719655e36eefa46abd89e47c1fb`  
		Last Modified: Fri, 15 Sep 2017 20:57:05 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b4996dbfc468ae50b524ea1769358d1e05cf8d097f8923f1c123d72ae62948`  
		Last Modified: Fri, 15 Sep 2017 20:57:03 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5613eb829c3bcaadce62a3f1bfe7acbd1534e5a6eef9f2effaee23f405c235`  
		Last Modified: Fri, 15 Sep 2017 20:57:15 GMT  
		Size: 59.1 MB (59090658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888eb127e24622015c2c5c6adbb868a4fd59d264d25aa102cc1d600a65d10a1e`  
		Last Modified: Fri, 15 Sep 2017 20:57:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deca0ca5b7cd460d903caf22ce0dd877bb76bba9c1854aeaf40019de6428a8fe`  
		Last Modified: Fri, 15 Sep 2017 20:57:03 GMT  
		Size: 2.4 MB (2390319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a06287b4e81fd3e7bd38316d258f813519518783698d70c7338d0985f0985`  
		Last Modified: Fri, 15 Sep 2017 20:57:14 GMT  
		Size: 79.8 MB (79823493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed268c1a8bbb5b2e91ba413a157a1d0bd706dd19bf0d70e19f21462c2113f9a`  
		Last Modified: Fri, 15 Sep 2017 20:57:02 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4-passenger`

```console
$ docker pull redmine@sha256:199582bcd293c380f48a568a53ed119e0ccf3ebdbeccde943bf58b30a092e09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:b1afbe3d824400a4d7d01349d1dd11b5e76bf6be705b57c52e75d8fb5c73509b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (271022004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254de4b5cb08b6cc9f0ccbb3f0835d91c05a81a68db58c54e427fb79aedb60f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 03:39:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 20:39:43 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:43:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:43:29 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:43:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:43:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:43:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:43:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:27:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:27:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:27:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:27:20 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:27:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:28:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:28:02 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:28:02 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:28:02 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 21:28:02 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 21:28:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:30:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:30:56 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:30:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:30:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:30:57 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:30:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 15 Sep 2017 21:31:03 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 15 Sep 2017 21:31:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:31:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 15 Sep 2017 21:31:29 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b27fc027eafedccb29ee9c9ec1440bc1c57e5947bf07810740294566ed404`  
		Last Modified: Fri, 15 Sep 2017 21:02:28 GMT  
		Size: 34.2 MB (34163364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0652a9f4c91cecb72353a847d10129f0690e5b12e330ca62f1d233e77a7750`  
		Last Modified: Fri, 15 Sep 2017 21:02:15 GMT  
		Size: 677.1 KB (677052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379a6458a84f2baf63f1a368f21c22611df3e97109535674e3b38f813918ab14`  
		Last Modified: Fri, 15 Sep 2017 21:02:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae74c48639845bd6e4d8ff25509d0681e87782e07bb9977c3d659c30b1a59323`  
		Last Modified: Fri, 15 Sep 2017 21:41:05 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb48beea4352ce0dff0bbc22ca6e5c8d92179304257d1834019750b0a59be6f`  
		Last Modified: Fri, 15 Sep 2017 21:41:06 GMT  
		Size: 14.7 MB (14650208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c295b61538906626bbc6c2e466b6ec9b300e9932555b15202d5cce7ffada6e`  
		Last Modified: Fri, 15 Sep 2017 21:41:03 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a706258641eb51308f18931d1081205decb604fe88aa358d4cbbfcbf9cabe6b`  
		Last Modified: Fri, 15 Sep 2017 21:41:02 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46088c33a85818abefda29ca1b652f401b7ec360c6944bced0166e87afbc95dc`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 59.2 MB (59237662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453ddccf435baaa321a2becb15da700bb43fd61a71a795226ad835bc8544585`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e9b33eca589620f5fcfcc2cd92c61f8762cbd012638831dea0c35c5ca6d6c`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1d9a1a1bce0833a03154c0207379c8e42b0754fae8981052694f0cb394fc58`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 77.4 MB (77430646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efbfc074f1cbf80d50f446e39f7971ad5eb73473bc5c602011d262f7b4c2e8`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460ae00b0987d89fb347a0157f47d55f1b6fdf4c9f096b191f89e482610bf297`  
		Last Modified: Fri, 15 Sep 2017 21:41:32 GMT  
		Size: 14.9 MB (14928454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438fac1eae5bc1210e0318d1aeb863d48fab4833c45164fbb275cc9a6ec68161`  
		Last Modified: Fri, 15 Sep 2017 21:41:30 GMT  
		Size: 4.3 MB (4273927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:199582bcd293c380f48a568a53ed119e0ccf3ebdbeccde943bf58b30a092e09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:b1afbe3d824400a4d7d01349d1dd11b5e76bf6be705b57c52e75d8fb5c73509b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (271022004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254de4b5cb08b6cc9f0ccbb3f0835d91c05a81a68db58c54e427fb79aedb60f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 03:39:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Sep 2017 20:39:43 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:39:44 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:43:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:43:29 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:43:31 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:43:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:43:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:43:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:43:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:27:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:27:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:27:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:27:20 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:27:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:28:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:28:02 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:28:02 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:28:02 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 21:28:02 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 21:28:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:30:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:30:56 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:30:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:30:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:30:57 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:30:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 15 Sep 2017 21:31:03 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 15 Sep 2017 21:31:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:31:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 15 Sep 2017 21:31:29 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b27fc027eafedccb29ee9c9ec1440bc1c57e5947bf07810740294566ed404`  
		Last Modified: Fri, 15 Sep 2017 21:02:28 GMT  
		Size: 34.2 MB (34163364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0652a9f4c91cecb72353a847d10129f0690e5b12e330ca62f1d233e77a7750`  
		Last Modified: Fri, 15 Sep 2017 21:02:15 GMT  
		Size: 677.1 KB (677052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379a6458a84f2baf63f1a368f21c22611df3e97109535674e3b38f813918ab14`  
		Last Modified: Fri, 15 Sep 2017 21:02:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae74c48639845bd6e4d8ff25509d0681e87782e07bb9977c3d659c30b1a59323`  
		Last Modified: Fri, 15 Sep 2017 21:41:05 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb48beea4352ce0dff0bbc22ca6e5c8d92179304257d1834019750b0a59be6f`  
		Last Modified: Fri, 15 Sep 2017 21:41:06 GMT  
		Size: 14.7 MB (14650208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c295b61538906626bbc6c2e466b6ec9b300e9932555b15202d5cce7ffada6e`  
		Last Modified: Fri, 15 Sep 2017 21:41:03 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a706258641eb51308f18931d1081205decb604fe88aa358d4cbbfcbf9cabe6b`  
		Last Modified: Fri, 15 Sep 2017 21:41:02 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46088c33a85818abefda29ca1b652f401b7ec360c6944bced0166e87afbc95dc`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 59.2 MB (59237662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453ddccf435baaa321a2becb15da700bb43fd61a71a795226ad835bc8544585`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e9b33eca589620f5fcfcc2cd92c61f8762cbd012638831dea0c35c5ca6d6c`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 2.4 MB (2390310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1d9a1a1bce0833a03154c0207379c8e42b0754fae8981052694f0cb394fc58`  
		Last Modified: Fri, 15 Sep 2017 21:41:13 GMT  
		Size: 77.4 MB (77430646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efbfc074f1cbf80d50f446e39f7971ad5eb73473bc5c602011d262f7b4c2e8`  
		Last Modified: Fri, 15 Sep 2017 21:41:00 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460ae00b0987d89fb347a0157f47d55f1b6fdf4c9f096b191f89e482610bf297`  
		Last Modified: Fri, 15 Sep 2017 21:41:32 GMT  
		Size: 14.9 MB (14928454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438fac1eae5bc1210e0318d1aeb863d48fab4833c45164fbb275cc9a6ec68161`  
		Last Modified: Fri, 15 Sep 2017 21:41:30 GMT  
		Size: 4.3 MB (4273927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:9d66877714a61647859d97ef5ca261048f49c0e5b44c438c773c72eae5972cc4
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
$ docker pull redmine@sha256:d598093d8caff9e7126f5c7d30bbe45d2e48940941ec87a51e8d28bf232592bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238844192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c8fcfb52aa31c46f1504243b3c4cc321bafc45a9e0429540d74fbf6c960323`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 02:59:17 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:13:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:13:03 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:13:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:13:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:13:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:13:05 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:22:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:22:18 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:22:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:22:23 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:22:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:23:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:23:11 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:23:12 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 21:23:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:25:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:25:49 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:25:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:25:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:25:49 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:25:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d04cf35adf4c7dabf4acbd2350231cda009d34e9473571d63c9285e87b9794`  
		Last Modified: Fri, 15 Sep 2017 20:52:48 GMT  
		Size: 21.8 MB (21791831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd0298f7bee1800f907fbd7893652343fe348545bbac90c5b2f4aa95703949e`  
		Last Modified: Fri, 15 Sep 2017 20:52:41 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0f889b13b7937d7acf86649454a156c5ded4aca37e94ebf57de32ab140fdf5`  
		Last Modified: Fri, 15 Sep 2017 20:52:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739d31d443152bc7f11b37421b919bcfbe1e9bd67d9cf4ef948956bec5a51c81`  
		Last Modified: Fri, 15 Sep 2017 21:39:46 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03233fae9158993a8687a7dfafe47093eeae051b46b68958e158bcb8f1a59a5f`  
		Last Modified: Fri, 15 Sep 2017 21:39:48 GMT  
		Size: 14.7 MB (14650158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f422da51167324cb61b2a2f15c26ee4f4ea06761e1bfa490f789d634333c9a93`  
		Last Modified: Fri, 15 Sep 2017 21:39:45 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1148296cb086ea980d83d3dc65a096fda0c6ada5690d0d7a556e159a18ca9d2c`  
		Last Modified: Fri, 15 Sep 2017 21:39:44 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dbcab9ae459619a2e262f6d30e72f2320dbbbc5d63205f55f410e1dff66752`  
		Last Modified: Fri, 15 Sep 2017 21:39:55 GMT  
		Size: 59.2 MB (59238127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631cbc8b2a49edd310472405efbaf4dd10a0c14ca7652c22327698033cf10211`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2642688d05ca146f2a1307a1cc10376e42f9fd13507dfff9398bcce739c59531`  
		Last Modified: Fri, 15 Sep 2017 21:39:43 GMT  
		Size: 2.4 MB (2448148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be55e3813f89b836ae1a656c3e9903c2ef106ed1b8541aaa3c7f031fecb79e25`  
		Last Modified: Fri, 15 Sep 2017 21:39:57 GMT  
		Size: 76.8 MB (76768486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88b41a86c28c795757fb7a1f0b9ec1b3de8b3089cbd028c8ff383096a9290b`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
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
$ docker pull redmine@sha256:46849cd28fe967e4148200d8d2e5a86fc17cc3d798248d9828b9d0f6ed3033c1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.7 MB (241700761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae536742d2004ee5cc2ffebdcdc5577f3e66dc6cf888dd06d3b75af6a60031db`
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
# Fri, 15 Sep 2017 20:08:35 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:08:35 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:08:35 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:12:20 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:12:20 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:12:21 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:12:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:12:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:12:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:12:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:12:22 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 20:43:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 20:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:44:10 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 20:44:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 20:44:11 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 20:44:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 20:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:44:45 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 20:44:45 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 20:44:45 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 20:44:45 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 20:44:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 20:47:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 20:47:22 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 20:47:23 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 20:47:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 20:47:23 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 20:47:23 GMT
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
	-	`sha256:44db17e017c0ee8b3f627e182261a5fb88bfb672f8af94ff7eeb307ff1779f3d`  
		Last Modified: Fri, 15 Sep 2017 20:26:04 GMT  
		Size: 22.2 MB (22189286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53ea8efb85cdc3ba793f5fe4172b739b50b3f5f962725b092b31152a286bdd3`  
		Last Modified: Fri, 15 Sep 2017 20:25:59 GMT  
		Size: 677.1 KB (677053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e29ad3e7a88f80e4804b83548267129e9805d6682072770012b9dba35156af`  
		Last Modified: Fri, 15 Sep 2017 20:26:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4eb23230a2415906d7358ed6fd5ce5f90f8deb0f12342fa5cf3bfb4f0cf486`  
		Last Modified: Fri, 15 Sep 2017 20:56:30 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcbe5b2b12bd17cb898844c55c8e03f5089ba63f85c3db102700ce3fd790cfc`  
		Last Modified: Fri, 15 Sep 2017 20:56:35 GMT  
		Size: 14.8 MB (14815012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b855e3f827df15ceab9ff52d31af7006c273abe0a529e48009ff19293dbdd8`  
		Last Modified: Fri, 15 Sep 2017 20:56:29 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7317af569d4b343abcbacda7e43669d3862368f7408f4983742f0bbe5975d404`  
		Last Modified: Fri, 15 Sep 2017 20:56:29 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc415f81ec95986327ef3e0a68f1ba97b4d775cad012707867083d7966c3463`  
		Last Modified: Fri, 15 Sep 2017 20:56:45 GMT  
		Size: 59.1 MB (59090261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd351f239b89590cd4cd910597646b0e9a609423c4f636199b97f375dab64c8d`  
		Last Modified: Fri, 15 Sep 2017 20:56:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c32102c3957a8ba34e6ffd7ddd8488d4e57a84c23bd36b9937dc57ce55e6e0b`  
		Last Modified: Fri, 15 Sep 2017 20:56:29 GMT  
		Size: 2.4 MB (2448153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7d422457ff13e1fb21cd4ddae8c8c151b4464c8377fc14a81a3b9c2e2122e`  
		Last Modified: Fri, 15 Sep 2017 20:56:41 GMT  
		Size: 79.2 MB (79232767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0542ca6f1ef96ccb8741df209f7b5d423b527886a630b6b0c62ca4a7a25b5fcd`  
		Last Modified: Fri, 15 Sep 2017 20:56:27 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.2`

```console
$ docker pull redmine@sha256:9d66877714a61647859d97ef5ca261048f49c0e5b44c438c773c72eae5972cc4
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
$ docker pull redmine@sha256:d598093d8caff9e7126f5c7d30bbe45d2e48940941ec87a51e8d28bf232592bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238844192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c8fcfb52aa31c46f1504243b3c4cc321bafc45a9e0429540d74fbf6c960323`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 02:59:17 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:13:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:13:03 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:13:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:13:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:13:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:13:05 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:22:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:22:18 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:22:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:22:23 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:22:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:23:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:23:11 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:23:12 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 21:23:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:25:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:25:49 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:25:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:25:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:25:49 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:25:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d04cf35adf4c7dabf4acbd2350231cda009d34e9473571d63c9285e87b9794`  
		Last Modified: Fri, 15 Sep 2017 20:52:48 GMT  
		Size: 21.8 MB (21791831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd0298f7bee1800f907fbd7893652343fe348545bbac90c5b2f4aa95703949e`  
		Last Modified: Fri, 15 Sep 2017 20:52:41 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0f889b13b7937d7acf86649454a156c5ded4aca37e94ebf57de32ab140fdf5`  
		Last Modified: Fri, 15 Sep 2017 20:52:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739d31d443152bc7f11b37421b919bcfbe1e9bd67d9cf4ef948956bec5a51c81`  
		Last Modified: Fri, 15 Sep 2017 21:39:46 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03233fae9158993a8687a7dfafe47093eeae051b46b68958e158bcb8f1a59a5f`  
		Last Modified: Fri, 15 Sep 2017 21:39:48 GMT  
		Size: 14.7 MB (14650158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f422da51167324cb61b2a2f15c26ee4f4ea06761e1bfa490f789d634333c9a93`  
		Last Modified: Fri, 15 Sep 2017 21:39:45 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1148296cb086ea980d83d3dc65a096fda0c6ada5690d0d7a556e159a18ca9d2c`  
		Last Modified: Fri, 15 Sep 2017 21:39:44 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dbcab9ae459619a2e262f6d30e72f2320dbbbc5d63205f55f410e1dff66752`  
		Last Modified: Fri, 15 Sep 2017 21:39:55 GMT  
		Size: 59.2 MB (59238127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631cbc8b2a49edd310472405efbaf4dd10a0c14ca7652c22327698033cf10211`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2642688d05ca146f2a1307a1cc10376e42f9fd13507dfff9398bcce739c59531`  
		Last Modified: Fri, 15 Sep 2017 21:39:43 GMT  
		Size: 2.4 MB (2448148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be55e3813f89b836ae1a656c3e9903c2ef106ed1b8541aaa3c7f031fecb79e25`  
		Last Modified: Fri, 15 Sep 2017 21:39:57 GMT  
		Size: 76.8 MB (76768486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88b41a86c28c795757fb7a1f0b9ec1b3de8b3089cbd028c8ff383096a9290b`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
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
$ docker pull redmine@sha256:46849cd28fe967e4148200d8d2e5a86fc17cc3d798248d9828b9d0f6ed3033c1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.7 MB (241700761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae536742d2004ee5cc2ffebdcdc5577f3e66dc6cf888dd06d3b75af6a60031db`
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
# Fri, 15 Sep 2017 20:08:35 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:08:35 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:08:35 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:12:20 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:12:20 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:12:21 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:12:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:12:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:12:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:12:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:12:22 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 20:43:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 20:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:44:10 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 20:44:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 20:44:11 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 20:44:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 20:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:44:45 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 20:44:45 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 20:44:45 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 20:44:45 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 20:44:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 20:47:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 20:47:22 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 20:47:23 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 20:47:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 20:47:23 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 20:47:23 GMT
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
	-	`sha256:44db17e017c0ee8b3f627e182261a5fb88bfb672f8af94ff7eeb307ff1779f3d`  
		Last Modified: Fri, 15 Sep 2017 20:26:04 GMT  
		Size: 22.2 MB (22189286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53ea8efb85cdc3ba793f5fe4172b739b50b3f5f962725b092b31152a286bdd3`  
		Last Modified: Fri, 15 Sep 2017 20:25:59 GMT  
		Size: 677.1 KB (677053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e29ad3e7a88f80e4804b83548267129e9805d6682072770012b9dba35156af`  
		Last Modified: Fri, 15 Sep 2017 20:26:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4eb23230a2415906d7358ed6fd5ce5f90f8deb0f12342fa5cf3bfb4f0cf486`  
		Last Modified: Fri, 15 Sep 2017 20:56:30 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcbe5b2b12bd17cb898844c55c8e03f5089ba63f85c3db102700ce3fd790cfc`  
		Last Modified: Fri, 15 Sep 2017 20:56:35 GMT  
		Size: 14.8 MB (14815012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b855e3f827df15ceab9ff52d31af7006c273abe0a529e48009ff19293dbdd8`  
		Last Modified: Fri, 15 Sep 2017 20:56:29 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7317af569d4b343abcbacda7e43669d3862368f7408f4983742f0bbe5975d404`  
		Last Modified: Fri, 15 Sep 2017 20:56:29 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc415f81ec95986327ef3e0a68f1ba97b4d775cad012707867083d7966c3463`  
		Last Modified: Fri, 15 Sep 2017 20:56:45 GMT  
		Size: 59.1 MB (59090261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd351f239b89590cd4cd910597646b0e9a609423c4f636199b97f375dab64c8d`  
		Last Modified: Fri, 15 Sep 2017 20:56:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c32102c3957a8ba34e6ffd7ddd8488d4e57a84c23bd36b9937dc57ce55e6e0b`  
		Last Modified: Fri, 15 Sep 2017 20:56:29 GMT  
		Size: 2.4 MB (2448153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7d422457ff13e1fb21cd4ddae8c8c151b4464c8377fc14a81a3b9c2e2122e`  
		Last Modified: Fri, 15 Sep 2017 20:56:41 GMT  
		Size: 79.2 MB (79232767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0542ca6f1ef96ccb8741df209f7b5d423b527886a630b6b0c62ca4a7a25b5fcd`  
		Last Modified: Fri, 15 Sep 2017 20:56:27 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.2-passenger`

```console
$ docker pull redmine@sha256:e33b7e88f8c6b5333511b1e5ce77e0f40742eddcb9711a9fd72c1e34b1e3870b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:7a1a9d60a9186bac4fb9b6ee30f1f442a0488e94d5c5228f9ab5446d47ce36de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (258046492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe24d6c98919866169498c950f1ddfe2b5d0278fedbb7bbf26b2081cbb8a26d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 02:59:17 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:13:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:13:03 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:13:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:13:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:13:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:13:05 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:22:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:22:18 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:22:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:22:23 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:22:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:23:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:23:11 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:23:12 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 21:23:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:25:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:25:49 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:25:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:25:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:25:49 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:25:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 15 Sep 2017 21:26:12 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 15 Sep 2017 21:26:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:26:41 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 15 Sep 2017 21:26:41 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d04cf35adf4c7dabf4acbd2350231cda009d34e9473571d63c9285e87b9794`  
		Last Modified: Fri, 15 Sep 2017 20:52:48 GMT  
		Size: 21.8 MB (21791831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd0298f7bee1800f907fbd7893652343fe348545bbac90c5b2f4aa95703949e`  
		Last Modified: Fri, 15 Sep 2017 20:52:41 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0f889b13b7937d7acf86649454a156c5ded4aca37e94ebf57de32ab140fdf5`  
		Last Modified: Fri, 15 Sep 2017 20:52:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739d31d443152bc7f11b37421b919bcfbe1e9bd67d9cf4ef948956bec5a51c81`  
		Last Modified: Fri, 15 Sep 2017 21:39:46 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03233fae9158993a8687a7dfafe47093eeae051b46b68958e158bcb8f1a59a5f`  
		Last Modified: Fri, 15 Sep 2017 21:39:48 GMT  
		Size: 14.7 MB (14650158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f422da51167324cb61b2a2f15c26ee4f4ea06761e1bfa490f789d634333c9a93`  
		Last Modified: Fri, 15 Sep 2017 21:39:45 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1148296cb086ea980d83d3dc65a096fda0c6ada5690d0d7a556e159a18ca9d2c`  
		Last Modified: Fri, 15 Sep 2017 21:39:44 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dbcab9ae459619a2e262f6d30e72f2320dbbbc5d63205f55f410e1dff66752`  
		Last Modified: Fri, 15 Sep 2017 21:39:55 GMT  
		Size: 59.2 MB (59238127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631cbc8b2a49edd310472405efbaf4dd10a0c14ca7652c22327698033cf10211`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2642688d05ca146f2a1307a1cc10376e42f9fd13507dfff9398bcce739c59531`  
		Last Modified: Fri, 15 Sep 2017 21:39:43 GMT  
		Size: 2.4 MB (2448148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be55e3813f89b836ae1a656c3e9903c2ef106ed1b8541aaa3c7f031fecb79e25`  
		Last Modified: Fri, 15 Sep 2017 21:39:57 GMT  
		Size: 76.8 MB (76768486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88b41a86c28c795757fb7a1f0b9ec1b3de8b3089cbd028c8ff383096a9290b`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4168ec074e5e6829a6d470b612a0ef75b35f5820ad13db3d90c9a1447fcc757`  
		Last Modified: Fri, 15 Sep 2017 21:40:32 GMT  
		Size: 14.9 MB (14928374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2583d8751151cfb24867247b252330f86aeb897f4f0863280ac74cd04b0612b4`  
		Last Modified: Fri, 15 Sep 2017 21:40:29 GMT  
		Size: 4.3 MB (4273926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:e33b7e88f8c6b5333511b1e5ce77e0f40742eddcb9711a9fd72c1e34b1e3870b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:7a1a9d60a9186bac4fb9b6ee30f1f442a0488e94d5c5228f9ab5446d47ce36de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (258046492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe24d6c98919866169498c950f1ddfe2b5d0278fedbb7bbf26b2081cbb8a26d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 02:59:17 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:13:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:13:03 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:13:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:13:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:13:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:13:05 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:22:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:22:18 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:22:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:22:23 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:22:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:23:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:23:11 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:23:12 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 21:23:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:25:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:25:49 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:25:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:25:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:25:49 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:25:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 15 Sep 2017 21:26:12 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 15 Sep 2017 21:26:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:26:41 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 15 Sep 2017 21:26:41 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d04cf35adf4c7dabf4acbd2350231cda009d34e9473571d63c9285e87b9794`  
		Last Modified: Fri, 15 Sep 2017 20:52:48 GMT  
		Size: 21.8 MB (21791831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd0298f7bee1800f907fbd7893652343fe348545bbac90c5b2f4aa95703949e`  
		Last Modified: Fri, 15 Sep 2017 20:52:41 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0f889b13b7937d7acf86649454a156c5ded4aca37e94ebf57de32ab140fdf5`  
		Last Modified: Fri, 15 Sep 2017 20:52:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739d31d443152bc7f11b37421b919bcfbe1e9bd67d9cf4ef948956bec5a51c81`  
		Last Modified: Fri, 15 Sep 2017 21:39:46 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03233fae9158993a8687a7dfafe47093eeae051b46b68958e158bcb8f1a59a5f`  
		Last Modified: Fri, 15 Sep 2017 21:39:48 GMT  
		Size: 14.7 MB (14650158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f422da51167324cb61b2a2f15c26ee4f4ea06761e1bfa490f789d634333c9a93`  
		Last Modified: Fri, 15 Sep 2017 21:39:45 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1148296cb086ea980d83d3dc65a096fda0c6ada5690d0d7a556e159a18ca9d2c`  
		Last Modified: Fri, 15 Sep 2017 21:39:44 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dbcab9ae459619a2e262f6d30e72f2320dbbbc5d63205f55f410e1dff66752`  
		Last Modified: Fri, 15 Sep 2017 21:39:55 GMT  
		Size: 59.2 MB (59238127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631cbc8b2a49edd310472405efbaf4dd10a0c14ca7652c22327698033cf10211`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2642688d05ca146f2a1307a1cc10376e42f9fd13507dfff9398bcce739c59531`  
		Last Modified: Fri, 15 Sep 2017 21:39:43 GMT  
		Size: 2.4 MB (2448148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be55e3813f89b836ae1a656c3e9903c2ef106ed1b8541aaa3c7f031fecb79e25`  
		Last Modified: Fri, 15 Sep 2017 21:39:57 GMT  
		Size: 76.8 MB (76768486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88b41a86c28c795757fb7a1f0b9ec1b3de8b3089cbd028c8ff383096a9290b`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4168ec074e5e6829a6d470b612a0ef75b35f5820ad13db3d90c9a1447fcc757`  
		Last Modified: Fri, 15 Sep 2017 21:40:32 GMT  
		Size: 14.9 MB (14928374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2583d8751151cfb24867247b252330f86aeb897f4f0863280ac74cd04b0612b4`  
		Last Modified: Fri, 15 Sep 2017 21:40:29 GMT  
		Size: 4.3 MB (4273926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:e33b7e88f8c6b5333511b1e5ce77e0f40742eddcb9711a9fd72c1e34b1e3870b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:7a1a9d60a9186bac4fb9b6ee30f1f442a0488e94d5c5228f9ab5446d47ce36de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (258046492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe24d6c98919866169498c950f1ddfe2b5d0278fedbb7bbf26b2081cbb8a26d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 02:59:17 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:13:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:13:03 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:13:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:13:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:13:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:13:05 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:22:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:22:18 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:22:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:22:23 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:22:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:23:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:23:11 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:23:12 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 21:23:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:25:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:25:49 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:25:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:25:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:25:49 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:25:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 15 Sep 2017 21:26:12 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 15 Sep 2017 21:26:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:26:41 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 15 Sep 2017 21:26:41 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d04cf35adf4c7dabf4acbd2350231cda009d34e9473571d63c9285e87b9794`  
		Last Modified: Fri, 15 Sep 2017 20:52:48 GMT  
		Size: 21.8 MB (21791831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd0298f7bee1800f907fbd7893652343fe348545bbac90c5b2f4aa95703949e`  
		Last Modified: Fri, 15 Sep 2017 20:52:41 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0f889b13b7937d7acf86649454a156c5ded4aca37e94ebf57de32ab140fdf5`  
		Last Modified: Fri, 15 Sep 2017 20:52:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739d31d443152bc7f11b37421b919bcfbe1e9bd67d9cf4ef948956bec5a51c81`  
		Last Modified: Fri, 15 Sep 2017 21:39:46 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03233fae9158993a8687a7dfafe47093eeae051b46b68958e158bcb8f1a59a5f`  
		Last Modified: Fri, 15 Sep 2017 21:39:48 GMT  
		Size: 14.7 MB (14650158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f422da51167324cb61b2a2f15c26ee4f4ea06761e1bfa490f789d634333c9a93`  
		Last Modified: Fri, 15 Sep 2017 21:39:45 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1148296cb086ea980d83d3dc65a096fda0c6ada5690d0d7a556e159a18ca9d2c`  
		Last Modified: Fri, 15 Sep 2017 21:39:44 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dbcab9ae459619a2e262f6d30e72f2320dbbbc5d63205f55f410e1dff66752`  
		Last Modified: Fri, 15 Sep 2017 21:39:55 GMT  
		Size: 59.2 MB (59238127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631cbc8b2a49edd310472405efbaf4dd10a0c14ca7652c22327698033cf10211`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2642688d05ca146f2a1307a1cc10376e42f9fd13507dfff9398bcce739c59531`  
		Last Modified: Fri, 15 Sep 2017 21:39:43 GMT  
		Size: 2.4 MB (2448148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be55e3813f89b836ae1a656c3e9903c2ef106ed1b8541aaa3c7f031fecb79e25`  
		Last Modified: Fri, 15 Sep 2017 21:39:57 GMT  
		Size: 76.8 MB (76768486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88b41a86c28c795757fb7a1f0b9ec1b3de8b3089cbd028c8ff383096a9290b`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4168ec074e5e6829a6d470b612a0ef75b35f5820ad13db3d90c9a1447fcc757`  
		Last Modified: Fri, 15 Sep 2017 21:40:32 GMT  
		Size: 14.9 MB (14928374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2583d8751151cfb24867247b252330f86aeb897f4f0863280ac74cd04b0612b4`  
		Last Modified: Fri, 15 Sep 2017 21:40:29 GMT  
		Size: 4.3 MB (4273926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:9d66877714a61647859d97ef5ca261048f49c0e5b44c438c773c72eae5972cc4
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
$ docker pull redmine@sha256:d598093d8caff9e7126f5c7d30bbe45d2e48940941ec87a51e8d28bf232592bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238844192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c8fcfb52aa31c46f1504243b3c4cc321bafc45a9e0429540d74fbf6c960323`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 02:59:17 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:13:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:13:03 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:13:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:13:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:13:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:13:05 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:22:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:22:18 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:22:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:22:23 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:22:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:23:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:23:11 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:23:12 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 21:23:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:25:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:25:49 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:25:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:25:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:25:49 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:25:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d04cf35adf4c7dabf4acbd2350231cda009d34e9473571d63c9285e87b9794`  
		Last Modified: Fri, 15 Sep 2017 20:52:48 GMT  
		Size: 21.8 MB (21791831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd0298f7bee1800f907fbd7893652343fe348545bbac90c5b2f4aa95703949e`  
		Last Modified: Fri, 15 Sep 2017 20:52:41 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0f889b13b7937d7acf86649454a156c5ded4aca37e94ebf57de32ab140fdf5`  
		Last Modified: Fri, 15 Sep 2017 20:52:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739d31d443152bc7f11b37421b919bcfbe1e9bd67d9cf4ef948956bec5a51c81`  
		Last Modified: Fri, 15 Sep 2017 21:39:46 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03233fae9158993a8687a7dfafe47093eeae051b46b68958e158bcb8f1a59a5f`  
		Last Modified: Fri, 15 Sep 2017 21:39:48 GMT  
		Size: 14.7 MB (14650158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f422da51167324cb61b2a2f15c26ee4f4ea06761e1bfa490f789d634333c9a93`  
		Last Modified: Fri, 15 Sep 2017 21:39:45 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1148296cb086ea980d83d3dc65a096fda0c6ada5690d0d7a556e159a18ca9d2c`  
		Last Modified: Fri, 15 Sep 2017 21:39:44 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dbcab9ae459619a2e262f6d30e72f2320dbbbc5d63205f55f410e1dff66752`  
		Last Modified: Fri, 15 Sep 2017 21:39:55 GMT  
		Size: 59.2 MB (59238127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631cbc8b2a49edd310472405efbaf4dd10a0c14ca7652c22327698033cf10211`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2642688d05ca146f2a1307a1cc10376e42f9fd13507dfff9398bcce739c59531`  
		Last Modified: Fri, 15 Sep 2017 21:39:43 GMT  
		Size: 2.4 MB (2448148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be55e3813f89b836ae1a656c3e9903c2ef106ed1b8541aaa3c7f031fecb79e25`  
		Last Modified: Fri, 15 Sep 2017 21:39:57 GMT  
		Size: 76.8 MB (76768486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88b41a86c28c795757fb7a1f0b9ec1b3de8b3089cbd028c8ff383096a9290b`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
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
$ docker pull redmine@sha256:46849cd28fe967e4148200d8d2e5a86fc17cc3d798248d9828b9d0f6ed3033c1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.7 MB (241700761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae536742d2004ee5cc2ffebdcdc5577f3e66dc6cf888dd06d3b75af6a60031db`
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
# Fri, 15 Sep 2017 20:08:35 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:08:35 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:08:35 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:12:20 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:12:20 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:12:21 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:12:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:12:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:12:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:12:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:12:22 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 20:43:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 20:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:44:10 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 20:44:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 20:44:11 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 20:44:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 20:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:44:45 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 20:44:45 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 20:44:45 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 20:44:45 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 20:44:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 20:47:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 20:47:22 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 20:47:23 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 20:47:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 20:47:23 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 20:47:23 GMT
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
	-	`sha256:44db17e017c0ee8b3f627e182261a5fb88bfb672f8af94ff7eeb307ff1779f3d`  
		Last Modified: Fri, 15 Sep 2017 20:26:04 GMT  
		Size: 22.2 MB (22189286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53ea8efb85cdc3ba793f5fe4172b739b50b3f5f962725b092b31152a286bdd3`  
		Last Modified: Fri, 15 Sep 2017 20:25:59 GMT  
		Size: 677.1 KB (677053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e29ad3e7a88f80e4804b83548267129e9805d6682072770012b9dba35156af`  
		Last Modified: Fri, 15 Sep 2017 20:26:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4eb23230a2415906d7358ed6fd5ce5f90f8deb0f12342fa5cf3bfb4f0cf486`  
		Last Modified: Fri, 15 Sep 2017 20:56:30 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcbe5b2b12bd17cb898844c55c8e03f5089ba63f85c3db102700ce3fd790cfc`  
		Last Modified: Fri, 15 Sep 2017 20:56:35 GMT  
		Size: 14.8 MB (14815012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b855e3f827df15ceab9ff52d31af7006c273abe0a529e48009ff19293dbdd8`  
		Last Modified: Fri, 15 Sep 2017 20:56:29 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7317af569d4b343abcbacda7e43669d3862368f7408f4983742f0bbe5975d404`  
		Last Modified: Fri, 15 Sep 2017 20:56:29 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc415f81ec95986327ef3e0a68f1ba97b4d775cad012707867083d7966c3463`  
		Last Modified: Fri, 15 Sep 2017 20:56:45 GMT  
		Size: 59.1 MB (59090261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd351f239b89590cd4cd910597646b0e9a609423c4f636199b97f375dab64c8d`  
		Last Modified: Fri, 15 Sep 2017 20:56:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c32102c3957a8ba34e6ffd7ddd8488d4e57a84c23bd36b9937dc57ce55e6e0b`  
		Last Modified: Fri, 15 Sep 2017 20:56:29 GMT  
		Size: 2.4 MB (2448153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7d422457ff13e1fb21cd4ddae8c8c151b4464c8377fc14a81a3b9c2e2122e`  
		Last Modified: Fri, 15 Sep 2017 20:56:41 GMT  
		Size: 79.2 MB (79232767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0542ca6f1ef96ccb8741df209f7b5d423b527886a630b6b0c62ca4a7a25b5fcd`  
		Last Modified: Fri, 15 Sep 2017 20:56:27 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:e33b7e88f8c6b5333511b1e5ce77e0f40742eddcb9711a9fd72c1e34b1e3870b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:7a1a9d60a9186bac4fb9b6ee30f1f442a0488e94d5c5228f9ab5446d47ce36de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (258046492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe24d6c98919866169498c950f1ddfe2b5d0278fedbb7bbf26b2081cbb8a26d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 02:59:17 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:09:34 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:13:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:13:03 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:13:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:13:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:13:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:13:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:13:05 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:22:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:22:18 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:22:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:22:23 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:22:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:23:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:23:11 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:23:12 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 21:23:12 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 21:23:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:25:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:25:49 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:25:49 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:25:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:25:49 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:25:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 15 Sep 2017 21:26:12 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 15 Sep 2017 21:26:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:26:41 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 15 Sep 2017 21:26:41 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d04cf35adf4c7dabf4acbd2350231cda009d34e9473571d63c9285e87b9794`  
		Last Modified: Fri, 15 Sep 2017 20:52:48 GMT  
		Size: 21.8 MB (21791831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd0298f7bee1800f907fbd7893652343fe348545bbac90c5b2f4aa95703949e`  
		Last Modified: Fri, 15 Sep 2017 20:52:41 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0f889b13b7937d7acf86649454a156c5ded4aca37e94ebf57de32ab140fdf5`  
		Last Modified: Fri, 15 Sep 2017 20:52:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739d31d443152bc7f11b37421b919bcfbe1e9bd67d9cf4ef948956bec5a51c81`  
		Last Modified: Fri, 15 Sep 2017 21:39:46 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03233fae9158993a8687a7dfafe47093eeae051b46b68958e158bcb8f1a59a5f`  
		Last Modified: Fri, 15 Sep 2017 21:39:48 GMT  
		Size: 14.7 MB (14650158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f422da51167324cb61b2a2f15c26ee4f4ea06761e1bfa490f789d634333c9a93`  
		Last Modified: Fri, 15 Sep 2017 21:39:45 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1148296cb086ea980d83d3dc65a096fda0c6ada5690d0d7a556e159a18ca9d2c`  
		Last Modified: Fri, 15 Sep 2017 21:39:44 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dbcab9ae459619a2e262f6d30e72f2320dbbbc5d63205f55f410e1dff66752`  
		Last Modified: Fri, 15 Sep 2017 21:39:55 GMT  
		Size: 59.2 MB (59238127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631cbc8b2a49edd310472405efbaf4dd10a0c14ca7652c22327698033cf10211`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2642688d05ca146f2a1307a1cc10376e42f9fd13507dfff9398bcce739c59531`  
		Last Modified: Fri, 15 Sep 2017 21:39:43 GMT  
		Size: 2.4 MB (2448148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be55e3813f89b836ae1a656c3e9903c2ef106ed1b8541aaa3c7f031fecb79e25`  
		Last Modified: Fri, 15 Sep 2017 21:39:57 GMT  
		Size: 76.8 MB (76768486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88b41a86c28c795757fb7a1f0b9ec1b3de8b3089cbd028c8ff383096a9290b`  
		Last Modified: Fri, 15 Sep 2017 21:39:42 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4168ec074e5e6829a6d470b612a0ef75b35f5820ad13db3d90c9a1447fcc757`  
		Last Modified: Fri, 15 Sep 2017 21:40:32 GMT  
		Size: 14.9 MB (14928374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2583d8751151cfb24867247b252330f86aeb897f4f0863280ac74cd04b0612b4`  
		Last Modified: Fri, 15 Sep 2017 21:40:29 GMT  
		Size: 4.3 MB (4273926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
