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
$ docker pull redmine@sha256:30e7d09002cef99897e01325a07ae1cfc6be89352237b3d86c12c8d3212e4124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
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

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:da73337cefdf252d8fdfc0f86c0cc8f21a2fc46d6970e364922441eb4d2e69b1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228185482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda3fbf698ff84ded3a3aac8b05150e976c7a8cfbf9e7e529673b59001d8fc0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:45:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 06:45:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Sep 2017 06:45:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Sep 2017 06:45:26 GMT
ENV RUBY_VERSION=2.4.2
# Wed, 27 Sep 2017 06:45:26 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 27 Sep 2017 06:45:28 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Wed, 27 Sep 2017 06:50:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 27 Sep 2017 06:50:57 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 27 Sep 2017 06:50:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 27 Sep 2017 06:50:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Sep 2017 06:50:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Sep 2017 06:50:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 06:51:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Sep 2017 06:51:00 GMT
CMD ["irb"]
# Wed, 27 Sep 2017 07:57:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Sep 2017 07:58:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:58:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 07:58:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Sep 2017 07:58:27 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Sep 2017 07:58:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Sep 2017 07:59:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:59:28 GMT
ENV RAILS_ENV=production
# Wed, 27 Sep 2017 07:59:28 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Sep 2017 07:59:28 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 27 Sep 2017 07:59:29 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 27 Sep 2017 07:59:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Sep 2017 08:03:50 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Sep 2017 08:03:51 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Sep 2017 08:03:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 27 Sep 2017 08:03:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Sep 2017 08:03:52 GMT
EXPOSE 3000/tcp
# Wed, 27 Sep 2017 08:03:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68db9f47da095ece11878aa880ab3bfb1c4aad36a1e0ac32db26fc6625446fe`  
		Last Modified: Wed, 27 Sep 2017 07:01:36 GMT  
		Size: 8.8 MB (8761272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefc796d582aa0b78bac9047366c8dc18625b7af23d2b1803356844f2cb71033`  
		Last Modified: Wed, 27 Sep 2017 07:01:33 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734915eeeb8e051ff3d845f2eb15a0ba0a21037be705b28a343564f69d4593ee`  
		Last Modified: Wed, 27 Sep 2017 07:01:41 GMT  
		Size: 23.0 MB (22989186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a81a44497fbcb90ff7772ca6f69b31ca6b599630716ddb92bc7ba67960ce386`  
		Last Modified: Wed, 27 Sep 2017 07:01:33 GMT  
		Size: 677.1 KB (677115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955e38ff8a43fe172ec55ff49afce91ff4b7733e496282cebe3b81b6b932bea6`  
		Last Modified: Wed, 27 Sep 2017 07:01:33 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5db33fa6db8930d7e9880e94a69499bdb46fd3121930374f60ee7f3ad600f39`  
		Last Modified: Wed, 27 Sep 2017 08:18:18 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f818a517cc97f203d476261ac83c5398cb22adbc3b7a12915cd2ba0e684891`  
		Last Modified: Wed, 27 Sep 2017 08:18:21 GMT  
		Size: 14.1 MB (14134496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e515b395f973a981617ebc3631f6729e0811e73ddceb791fd5be39275e463b2`  
		Last Modified: Wed, 27 Sep 2017 08:18:16 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60cf4e666331f599a3471d3e620787c55310a8dee9f22d8973387066605cc04c`  
		Last Modified: Wed, 27 Sep 2017 08:18:16 GMT  
		Size: 7.3 KB (7309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d134d85582ff3cc11b2c07bb63c0af369f28dcfc6b1854d55bdfb0422f5a703`  
		Last Modified: Wed, 27 Sep 2017 08:18:32 GMT  
		Size: 54.3 MB (54315935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26122836b263dd25d841619fae87d3ab85b247def3b18937805eaec627f844b`  
		Last Modified: Wed, 27 Sep 2017 08:18:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ad668321f83a67a59da7363a9dac8398f2061ace99651358cd445046597072`  
		Last Modified: Wed, 27 Sep 2017 08:18:16 GMT  
		Size: 2.4 MB (2448731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028e8461597cbaa2d43b587e1cf060b837a286462b1413de5eb577d3c5517864`  
		Last Modified: Wed, 27 Sep 2017 08:18:34 GMT  
		Size: 75.7 MB (75685263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a7528f84b01830e9b206d750e4398a477fad46c0308a87dbbfb3dd18f9d0a8`  
		Last Modified: Wed, 27 Sep 2017 08:18:14 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:06820eb4bedf754eba3ebea46f0ca23835e2eb0dd0606020c0332cae4cc9280d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230871289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49fb4d2740c0527377ab6bc3cc98d0e9ac2e8305bdb3e9514f2ec34acd69d512`
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
# Fri, 15 Sep 2017 21:05:12 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:14:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:14:38 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:14:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:14:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:14:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:14:45 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:09:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:10:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:10:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:10:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:10:25 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:10:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:12:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:12:13 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:12:13 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:12:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:21:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:21:12 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:21:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:21:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:21:14 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:21:15 GMT
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
	-	`sha256:4701b4eb71e0bf3510ce8bd387030399076be6d2b7d7c70235a0e9606429ac1e`  
		Last Modified: Fri, 15 Sep 2017 21:47:51 GMT  
		Size: 21.8 MB (21750577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb93f9be68692b4eac0dc3435da90d25d39009154df31632f387573c9b80446c`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 677.0 KB (677045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1647270beb201a12dc9cd7abe56bc867eb838e86f9b92011b94d2c1ad2f50546`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654788505f045a0e535c07635c91eeef67187d94a57280d032b8b24db51948a8`  
		Last Modified: Fri, 15 Sep 2017 22:55:53 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dfbc29dae937a15d07d60c711044c0787741fe07df7d49e679a3b3da77b4d4`  
		Last Modified: Fri, 15 Sep 2017 22:55:57 GMT  
		Size: 14.5 MB (14462497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f59e1e5cf52317d5f8d55df817f9e87a418780886559e28f7b19d865164cbd`  
		Last Modified: Fri, 15 Sep 2017 22:55:50 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde8bc116920fc8b2488b02c3dfd4f2f1be49a4baf387ba02b27232db5fe3609`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413a3a69546761330aa8d2767d9ee938f3caa68ef3c0c3dd72ad10bcc384ca9f`  
		Last Modified: Fri, 15 Sep 2017 22:56:07 GMT  
		Size: 55.8 MB (55773415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579c10bafe342aec743a53d904f5a2d25d352152d3f1354e8192a9599c37a285`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae16e7953f4e8e621bf3ee5e9dbc7d5539f188a6f4156a0c264e61781d2c90f`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 2.4 MB (2448157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ada8031b2e74fd4b92099c5b013efe16f9049aae5ae1aeaa60fcc403a45f5d`  
		Last Modified: Fri, 15 Sep 2017 22:56:09 GMT  
		Size: 76.0 MB (76016684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f26b35af18f59b7132fbc3049274d729bc9892bae5c46b3d7a34cc1f5ef9dae`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:97610b480e27499c67b66e568ef09792d08d9f700f1d99a1da2e5ff708bf6e17
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.8 MB (242760970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d2b0ba157cdf8889878f1ac798c6c664771dd1eac967d1f101337df5188b60`
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
# Fri, 15 Sep 2017 20:14:57 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:14:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:14:57 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:19:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:20:28 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:20:29 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:20:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:20:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:20:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:20:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:20:30 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:31:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:32:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:32:31 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:32:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:32:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:32:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:33:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:33:35 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:33:35 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:33:35 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 21:33:35 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 21:33:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:37:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:37:04 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:37:04 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:37:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:37:05 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:37:05 GMT
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
	-	`sha256:7f6446abfb60d4b44b51f5c8263ce26fcd200d4365b611ada3a2695cc0058713`  
		Last Modified: Fri, 15 Sep 2017 21:00:09 GMT  
		Size: 20.8 MB (20783910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6815fd1f469e67724aa1b46b8502edbb30b0f47bb445eb8663a8f98e03ee3363`  
		Last Modified: Fri, 15 Sep 2017 21:00:02 GMT  
		Size: 675.4 KB (675353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2bcd1f3f7d229136471e37b8321a441c443ff10885cf17ea4f3b2550a25bac`  
		Last Modified: Fri, 15 Sep 2017 21:00:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83338d2b41f9ed3d3f3730e410469b19b6d04b81dfc10923c3260ddfc6d7c18d`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9106ac7eab86d7946e2bc866a41c4920448f20efb647f31e6263698c9d6deb`  
		Last Modified: Fri, 15 Sep 2017 21:52:35 GMT  
		Size: 14.8 MB (14817286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f83023ec9f29e9b9a2b5cba13a44ce61f3337e6bd6fdce966a4cde7458fd413`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9269122aa777848e9e94e5575d1da722f30abcb9b9d4705ac157aaf16edfab`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 8.6 KB (8559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0265e52f6e9e050b156af2bbc180a2e52c25eaaaf697c87d64a4ab92ed5caeff`  
		Last Modified: Fri, 15 Sep 2017 21:53:07 GMT  
		Size: 60.1 MB (60115637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9c2db60590d0ac5e272ac5e682233a136132c3681a156a26b30bf4da41776d`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02ca3d3be23f54f0b69ee7e99ee4a535450bdfcc59692b586df4a695f3f46ca`  
		Last Modified: Fri, 15 Sep 2017 21:52:33 GMT  
		Size: 2.4 MB (2447805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fb4e99f5c27492a86fecf096480afde11b7bc05ccbd379a5188fbc46243058`  
		Last Modified: Fri, 15 Sep 2017 21:52:47 GMT  
		Size: 76.0 MB (76027488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d4de27e530e8547294bf6d1b505bbffd0d5ea8d102070083aa922497d86ae`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:f7d28f71c3f19ddf50657598071c288519c94d8068ecde5373d1982b1158cf20
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237527322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b216afe859b7c8f83b8d186955dc927eebda3f207696343cf1c4c1e7c57544`
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
# Fri, 15 Sep 2017 20:31:17 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:31:19 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:31:22 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:45:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:46:02 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:46:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:46:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:46:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:46:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:58:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:59:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:59:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:59:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:59:32 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:59:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:03:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:03:55 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:03:56 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:03:58 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:04:00 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:04:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:20:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:20:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:20:25 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:20:29 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:20:31 GMT
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
	-	`sha256:c5050b595185390551d7a09550e3710a6585d4addece55658689aaa125bc2231`  
		Last Modified: Fri, 15 Sep 2017 21:37:36 GMT  
		Size: 22.2 MB (22238462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326ceb269e5b022d990956f8a669f02da02c3094bb6ec4720618784eaf4d38a`  
		Last Modified: Fri, 15 Sep 2017 21:37:31 GMT  
		Size: 677.1 KB (677118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51ced9be5acfa91c81bb69d720864b3ec47727b1662c4a78311e158c14cde6`  
		Last Modified: Fri, 15 Sep 2017 21:37:30 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9983a85c9c7c976defa4741404c74c06a301d9f4fe57187a255f843767a4fb`  
		Last Modified: Fri, 15 Sep 2017 23:17:05 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d223e69916fddca9157f953fceea07ed5606a39cd1c1d9a52a01a8bd791e1567`  
		Last Modified: Fri, 15 Sep 2017 23:17:08 GMT  
		Size: 14.7 MB (14720580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6edbe513c926f962b7ece75e0fa60afd9374f29ea66822d90ff65e3e174072`  
		Last Modified: Fri, 15 Sep 2017 23:17:04 GMT  
		Size: 469.8 KB (469844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18105ecaa882c60e7e89b00ac117cfd0844dba99ac359b62c3bd3fa85178bcd5`  
		Last Modified: Fri, 15 Sep 2017 23:17:02 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be82616d3a5dbcf14b1e2f7196ca6e8595297cdc8993b2f976a303fca1c41bc`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 58.1 MB (58106039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3996f2f600c0aa1a4ae7d314cad79a3c1c943652f29f60f787d9ace4ee6e85`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99db50c579e97156eac175a1ff5080f9f4bf5604966070d0af48062076ebe8f2`  
		Last Modified: Fri, 15 Sep 2017 23:17:01 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9170b609cac67c0b66d556342c1e544f8ace4f9a982467b40d58b58500e2be`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 76.9 MB (76912066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd16dad7d125c4c8c55249c39aa89acbd24edc6aae9a5225b82a35d50402314`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 1.7 KB (1707 bytes)  
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
$ docker pull redmine@sha256:e3599d94589cc582da34e0732c1a7da4b5c9b26aa02445ec50f4f4ac9f00d927
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
$ docker pull redmine@sha256:d7ac3d06e490f1305ae5c7979c401216718fbc93e5ce9402c35e11afb66c0673
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234895304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:216e8b6483eeb4f1eb307266cf3716b0bd23445434d04e1756ba4ad974c56c11`
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
# Fri, 15 Sep 2017 21:36:24 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:36:25 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:36:26 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:43:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:43:40 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:43:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:43:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:43:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:43:52 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:21:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:24:15 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:24:16 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:45:10 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 15 Sep 2017 22:45:11 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 15 Sep 2017 22:45:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:55:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:55:25 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:55:25 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:55:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:55:27 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:55:30 GMT
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
	-	`sha256:97a40c479b5b36d687c4d505c8bf1d73b7a87947acb71a068eba51b98e7ddc77`  
		Last Modified: Fri, 15 Sep 2017 21:53:23 GMT  
		Size: 34.3 MB (34297135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a24f4cd61a212516946d903024537bffd598a2e6f406b3d1856209cf6b3c41d`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05fa2210f052d1f353eb69aedaedd566f46fe3f233dca5499a9a715a5a086ce`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49735b228543d97dfc1c6f259e616e2a6c7ed056d44f488ddb7d9530255c226`  
		Last Modified: Fri, 15 Sep 2017 22:56:59 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f40d509be2372969bdcd28d22629f9790cbb8c25fceb440ce574f4f04b8fc9`  
		Last Modified: Fri, 15 Sep 2017 22:57:03 GMT  
		Size: 14.5 MB (14462476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03cb5caad7e76162b18cdc25bb086700a40fbc084f6052f272e7ffe29baa7d`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f641fc41dca22c0130a2e96b8c67d42ce75b76c8e263053618b10be1147146`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521c1eade02f6a131c41d80558f68cc609e85c76bdd79f8a3ba3c128999b974`  
		Last Modified: Fri, 15 Sep 2017 22:57:17 GMT  
		Size: 55.8 MB (55773277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95457b1922e696db8c8976502a947a6ee3dc272214041d5ff0d9d76f546f652`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5dcfadad8050b2f992d16b3cfbd72818a33db882f4675d5217f9b0b1d19b32`  
		Last Modified: Fri, 15 Sep 2017 22:58:32 GMT  
		Size: 2.3 MB (2281531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b253444c6b3bf7cdefd42916682fba6f68df7fb0b9ef4e4a96cce7aacaa62f`  
		Last Modified: Fri, 15 Sep 2017 22:58:52 GMT  
		Size: 67.7 MB (67660923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da9bc71efdc557cc3fe51d911dc58740c39d3ad17cce05b581caa21bad99e8b`  
		Last Modified: Fri, 15 Sep 2017 22:58:31 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.1` - linux; 386

```console
$ docker pull redmine@sha256:2336e06aec36139c5456b80ba468c2c23ff617c99f9717b77c74548e395af5a2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245088363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e933134529ea2119ccb20b00fd9e0b6344cbf514be56a00f1a0d4889e8ae66`
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
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:47:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:47:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:47:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:47:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:47:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:47:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:47:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:47:49 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:40:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:40:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:40:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:40:59 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:41:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:41:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:41:51 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:41:52 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:49:16 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 15 Sep 2017 21:49:16 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 15 Sep 2017 21:49:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:52:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:52:16 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:52:17 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:52:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:52:17 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:52:17 GMT
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
	-	`sha256:f5ff3a50fbdab030d4c53d49e9524feefab3f3f825c6df4141d25a32dc54bcf0`  
		Last Modified: Fri, 15 Sep 2017 21:09:45 GMT  
		Size: 31.6 MB (31629454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8f4ccbaf6bbe27eabbdbe05df328e808dc596212aca58b7c164ba3a7bdb075`  
		Last Modified: Fri, 15 Sep 2017 21:09:34 GMT  
		Size: 675.4 KB (675350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13c6e30810a667d10a8d10166253b7c96275e335c3002f5bac94ee683d11097`  
		Last Modified: Fri, 15 Sep 2017 21:09:33 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318b48dc57fc8b2c28ae024fc310ea1dd9f7c29cb2e2a3d3ba65d289ecce3aa7`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e49cc74283f3108879d58b4f9bbc6a155ddc2a257a37bd8818769b89c14d58`  
		Last Modified: Fri, 15 Sep 2017 21:53:39 GMT  
		Size: 14.8 MB (14817291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35103e61c49ddfbf1f52ddbcd1d75c603a5cba3f5375692ff3cac39c38708b0`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d44d82745e4b779bfbff7284e77c61fd950eb42440ea3e7af2b541f3fd6d7c3`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 8.6 KB (8560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6489d3a0bd4cb30c2e25dbd16115f56c883d329826d175f4aca3ef6f5b588a01`  
		Last Modified: Fri, 15 Sep 2017 21:53:52 GMT  
		Size: 60.1 MB (60115930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26c688c4d5c432ccd7b4f0eaa58aadf8ded0e12d40c97eab1e92872a3879f73`  
		Last Modified: Fri, 15 Sep 2017 21:53:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65e1f265c31abeb92bb37652d0a204759c28270a34c5a94599f7fa3486c2c8c`  
		Last Modified: Fri, 15 Sep 2017 21:56:11 GMT  
		Size: 2.3 MB (2281379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4971f8b62b891552e45237382396c0144e529659db971287e546392995c0d4c`  
		Last Modified: Fri, 15 Sep 2017 21:56:23 GMT  
		Size: 67.7 MB (67675464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf04bcce3614ef99e03b5f599bf024fb839de958a4215173c308b8b6aeadac`  
		Last Modified: Fri, 15 Sep 2017 21:56:08 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.1` - linux; ppc64le

```console
$ docker pull redmine@sha256:6e02d34b1fca8459bf41e76845bc87def966bae56f7cc4c65529c72db334acf5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241931922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9ffb74f1779b78d712501d6fe67e3e165753ccd63cb59dcc97a7629bad20ae`
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
# Fri, 15 Sep 2017 21:21:42 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:21:45 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:21:49 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:33:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:34:00 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:34:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:34:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:34:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:34:20 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:20:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:27:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:27:28 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:27:31 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 23:00:48 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 15 Sep 2017 23:00:49 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 15 Sep 2017 23:00:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 23:16:17 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 23:16:19 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 23:16:21 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 23:16:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 23:16:27 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 23:16:30 GMT
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
	-	`sha256:b70b88c08445910f839d2b3045d4ca797c39d1026164877059c618f4c3619a2f`  
		Last Modified: Fri, 15 Sep 2017 21:42:03 GMT  
		Size: 35.2 MB (35185766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2131e2d1f7b065623e1df5ac02a5285402c5cba83730d7e8b3ab490e0e050b`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35781705888945fb0289c2812a9a4661e2e433e377496bcca4387bf61bc28bb`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2efa4d52a1298dc2674750ff91bfb986f208e0b3d8888b290c84585999936`  
		Last Modified: Fri, 15 Sep 2017 23:17:57 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd694fca3faeaf63a427ecbb1895cc3240fcc3dd7ea700c783bf11309d611740`  
		Last Modified: Fri, 15 Sep 2017 23:18:00 GMT  
		Size: 14.7 MB (14720423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d98848f6b5648d3b61f33ec419f3f1594bb1452680d7b31360aed048f92718c`  
		Last Modified: Fri, 15 Sep 2017 23:17:54 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666695a75c0ee6495254f0ffed0b8ecea6cbf4f5ac19523a9856bdc8d88630e4`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2cea5c2890cddb24026a1cdc37a3ec8981793a6022b88a6015d40c3d582277`  
		Last Modified: Fri, 15 Sep 2017 23:18:08 GMT  
		Size: 58.1 MB (58105863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c45426ff11a7730b70f65363ca3857f5ce5eeb829b2841b60653305068d500`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16a2ead699ffe1be08a1cd58829fd3ea71fbab7144ff5c534559e590d2a676`  
		Last Modified: Fri, 15 Sep 2017 23:19:35 GMT  
		Size: 2.3 MB (2281814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17292a75a4a5f396ddec5d8d66b9626dde704411f5976478a2b733f86329fe51`  
		Last Modified: Fri, 15 Sep 2017 23:19:50 GMT  
		Size: 68.5 MB (68536658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385e718d50997ffea9b2fc2d3bf1f1b01072d120af363443c1881a7fe17426af`  
		Last Modified: Fri, 15 Sep 2017 23:19:34 GMT  
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
$ docker pull redmine@sha256:e3599d94589cc582da34e0732c1a7da4b5c9b26aa02445ec50f4f4ac9f00d927
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
$ docker pull redmine@sha256:d7ac3d06e490f1305ae5c7979c401216718fbc93e5ce9402c35e11afb66c0673
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234895304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:216e8b6483eeb4f1eb307266cf3716b0bd23445434d04e1756ba4ad974c56c11`
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
# Fri, 15 Sep 2017 21:36:24 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:36:25 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:36:26 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:43:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:43:40 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:43:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:43:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:43:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:43:52 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:21:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:24:15 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:24:16 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:45:10 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 15 Sep 2017 22:45:11 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 15 Sep 2017 22:45:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:55:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:55:25 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:55:25 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:55:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:55:27 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:55:30 GMT
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
	-	`sha256:97a40c479b5b36d687c4d505c8bf1d73b7a87947acb71a068eba51b98e7ddc77`  
		Last Modified: Fri, 15 Sep 2017 21:53:23 GMT  
		Size: 34.3 MB (34297135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a24f4cd61a212516946d903024537bffd598a2e6f406b3d1856209cf6b3c41d`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05fa2210f052d1f353eb69aedaedd566f46fe3f233dca5499a9a715a5a086ce`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49735b228543d97dfc1c6f259e616e2a6c7ed056d44f488ddb7d9530255c226`  
		Last Modified: Fri, 15 Sep 2017 22:56:59 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f40d509be2372969bdcd28d22629f9790cbb8c25fceb440ce574f4f04b8fc9`  
		Last Modified: Fri, 15 Sep 2017 22:57:03 GMT  
		Size: 14.5 MB (14462476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03cb5caad7e76162b18cdc25bb086700a40fbc084f6052f272e7ffe29baa7d`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f641fc41dca22c0130a2e96b8c67d42ce75b76c8e263053618b10be1147146`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521c1eade02f6a131c41d80558f68cc609e85c76bdd79f8a3ba3c128999b974`  
		Last Modified: Fri, 15 Sep 2017 22:57:17 GMT  
		Size: 55.8 MB (55773277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95457b1922e696db8c8976502a947a6ee3dc272214041d5ff0d9d76f546f652`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5dcfadad8050b2f992d16b3cfbd72818a33db882f4675d5217f9b0b1d19b32`  
		Last Modified: Fri, 15 Sep 2017 22:58:32 GMT  
		Size: 2.3 MB (2281531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b253444c6b3bf7cdefd42916682fba6f68df7fb0b9ef4e4a96cce7aacaa62f`  
		Last Modified: Fri, 15 Sep 2017 22:58:52 GMT  
		Size: 67.7 MB (67660923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da9bc71efdc557cc3fe51d911dc58740c39d3ad17cce05b581caa21bad99e8b`  
		Last Modified: Fri, 15 Sep 2017 22:58:31 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.1.7` - linux; 386

```console
$ docker pull redmine@sha256:2336e06aec36139c5456b80ba468c2c23ff617c99f9717b77c74548e395af5a2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245088363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e933134529ea2119ccb20b00fd9e0b6344cbf514be56a00f1a0d4889e8ae66`
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
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:47:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:47:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:47:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:47:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:47:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:47:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:47:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:47:49 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:40:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:40:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:40:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:40:59 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:41:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:41:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:41:51 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:41:52 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:49:16 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 15 Sep 2017 21:49:16 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 15 Sep 2017 21:49:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:52:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:52:16 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:52:17 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:52:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:52:17 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:52:17 GMT
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
	-	`sha256:f5ff3a50fbdab030d4c53d49e9524feefab3f3f825c6df4141d25a32dc54bcf0`  
		Last Modified: Fri, 15 Sep 2017 21:09:45 GMT  
		Size: 31.6 MB (31629454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8f4ccbaf6bbe27eabbdbe05df328e808dc596212aca58b7c164ba3a7bdb075`  
		Last Modified: Fri, 15 Sep 2017 21:09:34 GMT  
		Size: 675.4 KB (675350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13c6e30810a667d10a8d10166253b7c96275e335c3002f5bac94ee683d11097`  
		Last Modified: Fri, 15 Sep 2017 21:09:33 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318b48dc57fc8b2c28ae024fc310ea1dd9f7c29cb2e2a3d3ba65d289ecce3aa7`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e49cc74283f3108879d58b4f9bbc6a155ddc2a257a37bd8818769b89c14d58`  
		Last Modified: Fri, 15 Sep 2017 21:53:39 GMT  
		Size: 14.8 MB (14817291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35103e61c49ddfbf1f52ddbcd1d75c603a5cba3f5375692ff3cac39c38708b0`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d44d82745e4b779bfbff7284e77c61fd950eb42440ea3e7af2b541f3fd6d7c3`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 8.6 KB (8560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6489d3a0bd4cb30c2e25dbd16115f56c883d329826d175f4aca3ef6f5b588a01`  
		Last Modified: Fri, 15 Sep 2017 21:53:52 GMT  
		Size: 60.1 MB (60115930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26c688c4d5c432ccd7b4f0eaa58aadf8ded0e12d40c97eab1e92872a3879f73`  
		Last Modified: Fri, 15 Sep 2017 21:53:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65e1f265c31abeb92bb37652d0a204759c28270a34c5a94599f7fa3486c2c8c`  
		Last Modified: Fri, 15 Sep 2017 21:56:11 GMT  
		Size: 2.3 MB (2281379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4971f8b62b891552e45237382396c0144e529659db971287e546392995c0d4c`  
		Last Modified: Fri, 15 Sep 2017 21:56:23 GMT  
		Size: 67.7 MB (67675464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf04bcce3614ef99e03b5f599bf024fb839de958a4215173c308b8b6aeadac`  
		Last Modified: Fri, 15 Sep 2017 21:56:08 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.1.7` - linux; ppc64le

```console
$ docker pull redmine@sha256:6e02d34b1fca8459bf41e76845bc87def966bae56f7cc4c65529c72db334acf5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241931922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9ffb74f1779b78d712501d6fe67e3e165753ccd63cb59dcc97a7629bad20ae`
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
# Fri, 15 Sep 2017 21:21:42 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:21:45 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:21:49 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:33:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:34:00 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:34:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:34:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:34:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:34:20 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:20:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:27:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:27:28 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:27:31 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 23:00:48 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 15 Sep 2017 23:00:49 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 15 Sep 2017 23:00:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 23:16:17 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 23:16:19 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 23:16:21 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 23:16:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 23:16:27 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 23:16:30 GMT
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
	-	`sha256:b70b88c08445910f839d2b3045d4ca797c39d1026164877059c618f4c3619a2f`  
		Last Modified: Fri, 15 Sep 2017 21:42:03 GMT  
		Size: 35.2 MB (35185766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2131e2d1f7b065623e1df5ac02a5285402c5cba83730d7e8b3ab490e0e050b`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35781705888945fb0289c2812a9a4661e2e433e377496bcca4387bf61bc28bb`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2efa4d52a1298dc2674750ff91bfb986f208e0b3d8888b290c84585999936`  
		Last Modified: Fri, 15 Sep 2017 23:17:57 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd694fca3faeaf63a427ecbb1895cc3240fcc3dd7ea700c783bf11309d611740`  
		Last Modified: Fri, 15 Sep 2017 23:18:00 GMT  
		Size: 14.7 MB (14720423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d98848f6b5648d3b61f33ec419f3f1594bb1452680d7b31360aed048f92718c`  
		Last Modified: Fri, 15 Sep 2017 23:17:54 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666695a75c0ee6495254f0ffed0b8ecea6cbf4f5ac19523a9856bdc8d88630e4`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2cea5c2890cddb24026a1cdc37a3ec8981793a6022b88a6015d40c3d582277`  
		Last Modified: Fri, 15 Sep 2017 23:18:08 GMT  
		Size: 58.1 MB (58105863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c45426ff11a7730b70f65363ca3857f5ce5eeb829b2841b60653305068d500`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16a2ead699ffe1be08a1cd58829fd3ea71fbab7144ff5c534559e590d2a676`  
		Last Modified: Fri, 15 Sep 2017 23:19:35 GMT  
		Size: 2.3 MB (2281814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17292a75a4a5f396ddec5d8d66b9626dde704411f5976478a2b733f86329fe51`  
		Last Modified: Fri, 15 Sep 2017 23:19:50 GMT  
		Size: 68.5 MB (68536658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385e718d50997ffea9b2fc2d3bf1f1b01072d120af363443c1881a7fe17426af`  
		Last Modified: Fri, 15 Sep 2017 23:19:34 GMT  
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
$ docker pull redmine@sha256:025b85de0b53d2e1102149a4039da545ab49ca0c1362020a5047497fec84a937
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
$ docker pull redmine@sha256:07dbc88c56c33eff3e6408d076b2a7d92f2263ead8f4f8ef912e14814df9efbf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244003583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff7de504be104d38daf2435d77b6df8942bed50809d3420e64c09d29862382e`
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
# Fri, 15 Sep 2017 21:36:24 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:36:25 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:36:26 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:43:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:43:40 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:43:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:43:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:43:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:43:52 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:21:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:24:15 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:24:16 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:35:11 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 22:35:11 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 22:35:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:44:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:44:53 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:44:54 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:44:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:44:55 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:45:00 GMT
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
	-	`sha256:97a40c479b5b36d687c4d505c8bf1d73b7a87947acb71a068eba51b98e7ddc77`  
		Last Modified: Fri, 15 Sep 2017 21:53:23 GMT  
		Size: 34.3 MB (34297135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a24f4cd61a212516946d903024537bffd598a2e6f406b3d1856209cf6b3c41d`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05fa2210f052d1f353eb69aedaedd566f46fe3f233dca5499a9a715a5a086ce`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49735b228543d97dfc1c6f259e616e2a6c7ed056d44f488ddb7d9530255c226`  
		Last Modified: Fri, 15 Sep 2017 22:56:59 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f40d509be2372969bdcd28d22629f9790cbb8c25fceb440ce574f4f04b8fc9`  
		Last Modified: Fri, 15 Sep 2017 22:57:03 GMT  
		Size: 14.5 MB (14462476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03cb5caad7e76162b18cdc25bb086700a40fbc084f6052f272e7ffe29baa7d`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f641fc41dca22c0130a2e96b8c67d42ce75b76c8e263053618b10be1147146`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521c1eade02f6a131c41d80558f68cc609e85c76bdd79f8a3ba3c128999b974`  
		Last Modified: Fri, 15 Sep 2017 22:57:17 GMT  
		Size: 55.8 MB (55773277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95457b1922e696db8c8976502a947a6ee3dc272214041d5ff0d9d76f546f652`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74afb0f2949af9340e5b9602c1e77f7bbff29ace9dfc597ae516164e25b486d`  
		Last Modified: Fri, 15 Sep 2017 22:57:46 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00d76137899aa7740e0e126bc19c705fc191c37ba59e87cac0c61252735888f`  
		Last Modified: Fri, 15 Sep 2017 22:58:07 GMT  
		Size: 76.7 MB (76703623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96ae3951ad0dc7898133a173a5c357fc2c7c6e64e31a9b2125b2d8d4ecc25b9`  
		Last Modified: Fri, 15 Sep 2017 22:57:45 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; 386

```console
$ docker pull redmine@sha256:5a39e0df8480d82be1b5b081375e59c938df64d42c5856fbea8f5467843407c3
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254182943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50a0464a0eb63689f1c00d59806974956e5dfa4a7b6da048426881fca0bd6b5`
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
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:47:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:47:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:47:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:47:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:47:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:47:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:47:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:47:49 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:40:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:40:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:40:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:40:59 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:41:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:41:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:41:51 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:41:52 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:45:51 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 21:45:51 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 21:45:55 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:49:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:49:11 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:49:11 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:49:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:49:11 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:49:12 GMT
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
	-	`sha256:f5ff3a50fbdab030d4c53d49e9524feefab3f3f825c6df4141d25a32dc54bcf0`  
		Last Modified: Fri, 15 Sep 2017 21:09:45 GMT  
		Size: 31.6 MB (31629454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8f4ccbaf6bbe27eabbdbe05df328e808dc596212aca58b7c164ba3a7bdb075`  
		Last Modified: Fri, 15 Sep 2017 21:09:34 GMT  
		Size: 675.4 KB (675350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13c6e30810a667d10a8d10166253b7c96275e335c3002f5bac94ee683d11097`  
		Last Modified: Fri, 15 Sep 2017 21:09:33 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318b48dc57fc8b2c28ae024fc310ea1dd9f7c29cb2e2a3d3ba65d289ecce3aa7`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e49cc74283f3108879d58b4f9bbc6a155ddc2a257a37bd8818769b89c14d58`  
		Last Modified: Fri, 15 Sep 2017 21:53:39 GMT  
		Size: 14.8 MB (14817291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35103e61c49ddfbf1f52ddbcd1d75c603a5cba3f5375692ff3cac39c38708b0`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d44d82745e4b779bfbff7284e77c61fd950eb42440ea3e7af2b541f3fd6d7c3`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 8.6 KB (8560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6489d3a0bd4cb30c2e25dbd16115f56c883d329826d175f4aca3ef6f5b588a01`  
		Last Modified: Fri, 15 Sep 2017 21:53:52 GMT  
		Size: 60.1 MB (60115930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26c688c4d5c432ccd7b4f0eaa58aadf8ded0e12d40c97eab1e92872a3879f73`  
		Last Modified: Fri, 15 Sep 2017 21:53:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b82be514bb4c60ba91aa0d2b57062d610a8640609f1812159ae5c10a32f1c6e`  
		Last Modified: Fri, 15 Sep 2017 21:55:37 GMT  
		Size: 2.3 MB (2346954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f31d1d584a1c4dee84a99f9758fc1c88ce04376f56f52a5a5b619e2e37bc23d`  
		Last Modified: Fri, 15 Sep 2017 21:55:52 GMT  
		Size: 76.7 MB (76704469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c15528aa332a31859dfa99b2542f509ee44e3316677d2ef7022f0a500ff1c8`  
		Last Modified: Fri, 15 Sep 2017 21:55:36 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:21f1234f03c78538267c30ee79892e4585bc63c8db3bc115167d5924f92b7557
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251065531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210bc6a2a6fa3d9a4f1066748f916f3dc024711d09a6100f28bf00a70062cf48`
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
# Fri, 15 Sep 2017 21:21:42 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:21:45 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:21:49 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:33:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:34:00 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:34:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:34:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:34:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:34:20 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:20:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:27:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:27:28 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:27:31 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:44:26 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 22:44:28 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 22:44:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 23:00:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 23:00:24 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 23:00:26 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 23:00:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 23:00:30 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 23:00:37 GMT
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
	-	`sha256:b70b88c08445910f839d2b3045d4ca797c39d1026164877059c618f4c3619a2f`  
		Last Modified: Fri, 15 Sep 2017 21:42:03 GMT  
		Size: 35.2 MB (35185766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2131e2d1f7b065623e1df5ac02a5285402c5cba83730d7e8b3ab490e0e050b`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35781705888945fb0289c2812a9a4661e2e433e377496bcca4387bf61bc28bb`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2efa4d52a1298dc2674750ff91bfb986f208e0b3d8888b290c84585999936`  
		Last Modified: Fri, 15 Sep 2017 23:17:57 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd694fca3faeaf63a427ecbb1895cc3240fcc3dd7ea700c783bf11309d611740`  
		Last Modified: Fri, 15 Sep 2017 23:18:00 GMT  
		Size: 14.7 MB (14720423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d98848f6b5648d3b61f33ec419f3f1594bb1452680d7b31360aed048f92718c`  
		Last Modified: Fri, 15 Sep 2017 23:17:54 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666695a75c0ee6495254f0ffed0b8ecea6cbf4f5ac19523a9856bdc8d88630e4`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2cea5c2890cddb24026a1cdc37a3ec8981793a6022b88a6015d40c3d582277`  
		Last Modified: Fri, 15 Sep 2017 23:18:08 GMT  
		Size: 58.1 MB (58105863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c45426ff11a7730b70f65363ca3857f5ce5eeb829b2841b60653305068d500`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5171be8f5e1c2b91cff240b10cad1577835583c934c67e154acc9bec2d14e5`  
		Last Modified: Fri, 15 Sep 2017 23:18:40 GMT  
		Size: 2.3 MB (2347475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b2afeeed175ff02efe1b4ab96f7f282c52a18a64a659299443bb4da2fe4c2d`  
		Last Modified: Fri, 15 Sep 2017 23:19:05 GMT  
		Size: 77.6 MB (77604606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c3024887354a9766a7074f1563c960c45d8ec0958dcf884a4c71eb44f7aa5a`  
		Last Modified: Fri, 15 Sep 2017 23:18:39 GMT  
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
$ docker pull redmine@sha256:025b85de0b53d2e1102149a4039da545ab49ca0c1362020a5047497fec84a937
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
$ docker pull redmine@sha256:07dbc88c56c33eff3e6408d076b2a7d92f2263ead8f4f8ef912e14814df9efbf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244003583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff7de504be104d38daf2435d77b6df8942bed50809d3420e64c09d29862382e`
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
# Fri, 15 Sep 2017 21:36:24 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:36:25 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:36:26 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:43:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:43:40 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:43:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:43:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:43:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:43:52 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:21:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:24:15 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:24:16 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:35:11 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 22:35:11 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 22:35:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:44:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:44:53 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:44:54 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:44:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:44:55 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:45:00 GMT
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
	-	`sha256:97a40c479b5b36d687c4d505c8bf1d73b7a87947acb71a068eba51b98e7ddc77`  
		Last Modified: Fri, 15 Sep 2017 21:53:23 GMT  
		Size: 34.3 MB (34297135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a24f4cd61a212516946d903024537bffd598a2e6f406b3d1856209cf6b3c41d`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05fa2210f052d1f353eb69aedaedd566f46fe3f233dca5499a9a715a5a086ce`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49735b228543d97dfc1c6f259e616e2a6c7ed056d44f488ddb7d9530255c226`  
		Last Modified: Fri, 15 Sep 2017 22:56:59 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f40d509be2372969bdcd28d22629f9790cbb8c25fceb440ce574f4f04b8fc9`  
		Last Modified: Fri, 15 Sep 2017 22:57:03 GMT  
		Size: 14.5 MB (14462476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03cb5caad7e76162b18cdc25bb086700a40fbc084f6052f272e7ffe29baa7d`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f641fc41dca22c0130a2e96b8c67d42ce75b76c8e263053618b10be1147146`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521c1eade02f6a131c41d80558f68cc609e85c76bdd79f8a3ba3c128999b974`  
		Last Modified: Fri, 15 Sep 2017 22:57:17 GMT  
		Size: 55.8 MB (55773277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95457b1922e696db8c8976502a947a6ee3dc272214041d5ff0d9d76f546f652`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74afb0f2949af9340e5b9602c1e77f7bbff29ace9dfc597ae516164e25b486d`  
		Last Modified: Fri, 15 Sep 2017 22:57:46 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00d76137899aa7740e0e126bc19c705fc191c37ba59e87cac0c61252735888f`  
		Last Modified: Fri, 15 Sep 2017 22:58:07 GMT  
		Size: 76.7 MB (76703623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96ae3951ad0dc7898133a173a5c357fc2c7c6e64e31a9b2125b2d8d4ecc25b9`  
		Last Modified: Fri, 15 Sep 2017 22:57:45 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; 386

```console
$ docker pull redmine@sha256:5a39e0df8480d82be1b5b081375e59c938df64d42c5856fbea8f5467843407c3
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254182943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50a0464a0eb63689f1c00d59806974956e5dfa4a7b6da048426881fca0bd6b5`
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
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:47:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:47:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:47:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:47:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:47:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:47:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:47:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:47:49 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:40:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:40:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:40:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:40:59 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:41:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:41:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:41:51 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:41:52 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:45:51 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 21:45:51 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 21:45:55 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:49:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:49:11 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:49:11 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:49:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:49:11 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:49:12 GMT
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
	-	`sha256:f5ff3a50fbdab030d4c53d49e9524feefab3f3f825c6df4141d25a32dc54bcf0`  
		Last Modified: Fri, 15 Sep 2017 21:09:45 GMT  
		Size: 31.6 MB (31629454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8f4ccbaf6bbe27eabbdbe05df328e808dc596212aca58b7c164ba3a7bdb075`  
		Last Modified: Fri, 15 Sep 2017 21:09:34 GMT  
		Size: 675.4 KB (675350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13c6e30810a667d10a8d10166253b7c96275e335c3002f5bac94ee683d11097`  
		Last Modified: Fri, 15 Sep 2017 21:09:33 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318b48dc57fc8b2c28ae024fc310ea1dd9f7c29cb2e2a3d3ba65d289ecce3aa7`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e49cc74283f3108879d58b4f9bbc6a155ddc2a257a37bd8818769b89c14d58`  
		Last Modified: Fri, 15 Sep 2017 21:53:39 GMT  
		Size: 14.8 MB (14817291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35103e61c49ddfbf1f52ddbcd1d75c603a5cba3f5375692ff3cac39c38708b0`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d44d82745e4b779bfbff7284e77c61fd950eb42440ea3e7af2b541f3fd6d7c3`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 8.6 KB (8560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6489d3a0bd4cb30c2e25dbd16115f56c883d329826d175f4aca3ef6f5b588a01`  
		Last Modified: Fri, 15 Sep 2017 21:53:52 GMT  
		Size: 60.1 MB (60115930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26c688c4d5c432ccd7b4f0eaa58aadf8ded0e12d40c97eab1e92872a3879f73`  
		Last Modified: Fri, 15 Sep 2017 21:53:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b82be514bb4c60ba91aa0d2b57062d610a8640609f1812159ae5c10a32f1c6e`  
		Last Modified: Fri, 15 Sep 2017 21:55:37 GMT  
		Size: 2.3 MB (2346954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f31d1d584a1c4dee84a99f9758fc1c88ce04376f56f52a5a5b619e2e37bc23d`  
		Last Modified: Fri, 15 Sep 2017 21:55:52 GMT  
		Size: 76.7 MB (76704469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c15528aa332a31859dfa99b2542f509ee44e3316677d2ef7022f0a500ff1c8`  
		Last Modified: Fri, 15 Sep 2017 21:55:36 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.7` - linux; ppc64le

```console
$ docker pull redmine@sha256:21f1234f03c78538267c30ee79892e4585bc63c8db3bc115167d5924f92b7557
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251065531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210bc6a2a6fa3d9a4f1066748f916f3dc024711d09a6100f28bf00a70062cf48`
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
# Fri, 15 Sep 2017 21:21:42 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:21:45 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:21:49 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:33:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:34:00 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:34:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:34:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:34:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:34:20 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:20:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:27:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:27:28 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:27:31 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:44:26 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 15 Sep 2017 22:44:28 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 15 Sep 2017 22:44:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 23:00:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 23:00:24 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 23:00:26 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 23:00:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 23:00:30 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 23:00:37 GMT
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
	-	`sha256:b70b88c08445910f839d2b3045d4ca797c39d1026164877059c618f4c3619a2f`  
		Last Modified: Fri, 15 Sep 2017 21:42:03 GMT  
		Size: 35.2 MB (35185766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2131e2d1f7b065623e1df5ac02a5285402c5cba83730d7e8b3ab490e0e050b`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35781705888945fb0289c2812a9a4661e2e433e377496bcca4387bf61bc28bb`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2efa4d52a1298dc2674750ff91bfb986f208e0b3d8888b290c84585999936`  
		Last Modified: Fri, 15 Sep 2017 23:17:57 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd694fca3faeaf63a427ecbb1895cc3240fcc3dd7ea700c783bf11309d611740`  
		Last Modified: Fri, 15 Sep 2017 23:18:00 GMT  
		Size: 14.7 MB (14720423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d98848f6b5648d3b61f33ec419f3f1594bb1452680d7b31360aed048f92718c`  
		Last Modified: Fri, 15 Sep 2017 23:17:54 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666695a75c0ee6495254f0ffed0b8ecea6cbf4f5ac19523a9856bdc8d88630e4`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2cea5c2890cddb24026a1cdc37a3ec8981793a6022b88a6015d40c3d582277`  
		Last Modified: Fri, 15 Sep 2017 23:18:08 GMT  
		Size: 58.1 MB (58105863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c45426ff11a7730b70f65363ca3857f5ce5eeb829b2841b60653305068d500`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5171be8f5e1c2b91cff240b10cad1577835583c934c67e154acc9bec2d14e5`  
		Last Modified: Fri, 15 Sep 2017 23:18:40 GMT  
		Size: 2.3 MB (2347475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b2afeeed175ff02efe1b4ab96f7f282c52a18a64a659299443bb4da2fe4c2d`  
		Last Modified: Fri, 15 Sep 2017 23:19:05 GMT  
		Size: 77.6 MB (77604606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c3024887354a9766a7074f1563c960c45d8ec0958dcf884a4c71eb44f7aa5a`  
		Last Modified: Fri, 15 Sep 2017 23:18:39 GMT  
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
$ docker pull redmine@sha256:5ccaa43fb9a1ab6528f742328f62200e8a2f2f08e90f706c7517b06d1eb6fc78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
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

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:e727f090a539dfe9c9f2dc2891cc15216a37983892e88266261433198348aa93
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240272991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5649216d6a8e6060044cec6a0aea40417e28c0357011e92fa86181329f57cb8d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:45:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 06:45:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Sep 2017 06:56:16 GMT
ENV RUBY_MAJOR=2.2
# Wed, 27 Sep 2017 06:56:16 GMT
ENV RUBY_VERSION=2.2.8
# Wed, 27 Sep 2017 06:56:16 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 27 Sep 2017 06:56:17 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Wed, 27 Sep 2017 07:00:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 27 Sep 2017 07:00:24 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 27 Sep 2017 07:00:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 27 Sep 2017 07:00:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Sep 2017 07:00:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Sep 2017 07:00:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 07:00:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Sep 2017 07:00:27 GMT
CMD ["irb"]
# Wed, 27 Sep 2017 08:04:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Sep 2017 08:04:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 08:04:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 08:04:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Sep 2017 08:04:33 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Sep 2017 08:04:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Sep 2017 08:05:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 08:05:33 GMT
ENV RAILS_ENV=production
# Wed, 27 Sep 2017 08:05:33 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Sep 2017 08:05:33 GMT
ENV REDMINE_VERSION=3.3.4
# Wed, 27 Sep 2017 08:05:33 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Wed, 27 Sep 2017 08:05:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Sep 2017 08:09:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Sep 2017 08:09:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Sep 2017 08:09:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 27 Sep 2017 08:09:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Sep 2017 08:09:42 GMT
EXPOSE 3000/tcp
# Wed, 27 Sep 2017 08:09:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68db9f47da095ece11878aa880ab3bfb1c4aad36a1e0ac32db26fc6625446fe`  
		Last Modified: Wed, 27 Sep 2017 07:01:36 GMT  
		Size: 8.8 MB (8761272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefc796d582aa0b78bac9047366c8dc18625b7af23d2b1803356844f2cb71033`  
		Last Modified: Wed, 27 Sep 2017 07:01:33 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de59ea05b9664f42c290f7c5d2151972a913fb996d9bbdd96bdf2b1abaaaab1`  
		Last Modified: Wed, 27 Sep 2017 07:02:54 GMT  
		Size: 34.4 MB (34448056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe6bd8684580317e916b3703ac97baa0d8e6637fc29eff5e69f195a575bb6b7`  
		Last Modified: Wed, 27 Sep 2017 07:02:41 GMT  
		Size: 677.1 KB (677077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2667468c5900be9674e3083de80ed341d96e6912b692d4edff9395e47ace59`  
		Last Modified: Wed, 27 Sep 2017 07:02:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09001f3f3af35b81b964e607b87d1480404085b27522bb1f86d2ac0dc7e62b73`  
		Last Modified: Wed, 27 Sep 2017 08:18:56 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00cf765aaeb7c932ff6ad8663fd0f28240f152ff59de0e0969983ca20f61d41`  
		Last Modified: Wed, 27 Sep 2017 08:19:00 GMT  
		Size: 14.1 MB (14134564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea621590b0d472ab5667f91d60fb537635fd1e187fbe8e4e1ae2f5622df8094`  
		Last Modified: Wed, 27 Sep 2017 08:18:55 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd74cbacd19b5642febed5a2028f38c4bce18e3beb8fd066963fcd8437f32743`  
		Last Modified: Wed, 27 Sep 2017 08:18:55 GMT  
		Size: 7.3 KB (7309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46384f097ddb652a1e596b1d43b041d8d1e6c7d8f00752216966788de49e3577`  
		Last Modified: Wed, 27 Sep 2017 08:19:10 GMT  
		Size: 54.3 MB (54315967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e17a15b86f6026f0e3b60c06c82f52f69d29089333983f006b8e3f0a8295670`  
		Last Modified: Wed, 27 Sep 2017 08:18:53 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05abe71f1147ce371f545a94bf8a2d40e8a4f00560d26e89e57b7e52e48bb54`  
		Last Modified: Wed, 27 Sep 2017 08:18:54 GMT  
		Size: 2.4 MB (2390598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ac4f449761b6259194e2108bd1788f981512cd88b0ab8f2820082fe50b9c59`  
		Last Modified: Wed, 27 Sep 2017 08:19:11 GMT  
		Size: 76.4 MB (76371967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80f3dca71d509af131ae774462dca581a8f56d906f9bb3444e108c09123b3f3`  
		Last Modified: Wed, 27 Sep 2017 08:18:53 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:4ab3062ce6c350f9fe5f86f0eca1b323e507d638e8e8a9848de88f9f863c4377
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244046355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6cf540c88ce763b510dfc4434f8c439c743b91a3d5dd24336437fb4e9c0108`
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
# Fri, 15 Sep 2017 21:36:24 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:36:25 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:36:26 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:43:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:43:40 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:43:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:43:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:43:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:43:52 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:21:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:24:15 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:24:16 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:24:16 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 22:24:17 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 22:24:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:34:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:34:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:34:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:34:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:34:52 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:34:53 GMT
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
	-	`sha256:97a40c479b5b36d687c4d505c8bf1d73b7a87947acb71a068eba51b98e7ddc77`  
		Last Modified: Fri, 15 Sep 2017 21:53:23 GMT  
		Size: 34.3 MB (34297135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a24f4cd61a212516946d903024537bffd598a2e6f406b3d1856209cf6b3c41d`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05fa2210f052d1f353eb69aedaedd566f46fe3f233dca5499a9a715a5a086ce`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49735b228543d97dfc1c6f259e616e2a6c7ed056d44f488ddb7d9530255c226`  
		Last Modified: Fri, 15 Sep 2017 22:56:59 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f40d509be2372969bdcd28d22629f9790cbb8c25fceb440ce574f4f04b8fc9`  
		Last Modified: Fri, 15 Sep 2017 22:57:03 GMT  
		Size: 14.5 MB (14462476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03cb5caad7e76162b18cdc25bb086700a40fbc084f6052f272e7ffe29baa7d`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f641fc41dca22c0130a2e96b8c67d42ce75b76c8e263053618b10be1147146`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521c1eade02f6a131c41d80558f68cc609e85c76bdd79f8a3ba3c128999b974`  
		Last Modified: Fri, 15 Sep 2017 22:57:17 GMT  
		Size: 55.8 MB (55773277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95457b1922e696db8c8976502a947a6ee3dc272214041d5ff0d9d76f546f652`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894cbdbc56b1f07c1a658683c6e7e1c78b3cdd1907efe316801788c6595b6bc8`  
		Last Modified: Fri, 15 Sep 2017 22:56:55 GMT  
		Size: 2.4 MB (2390312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cc1621c8a25b2c8dc9b68f92bb3061e41c78b939c30ff78f3efde52196c314`  
		Last Modified: Fri, 15 Sep 2017 22:57:22 GMT  
		Size: 76.7 MB (76703193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64ab4450f49d0ca78eda6916b5a19970bd54a4ffb403730ed9af57c6bc04c93`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:b7a26daf25bed0a977e638234563dd28e2df3cbd03dd355982f7c90509359fa2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254229402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c458ad7d4865600a595fda2f00190f0f47a444a8578c868fa3056bc1f45da29`
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
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:47:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:47:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:47:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:47:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:47:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:47:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:47:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:47:49 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:40:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:40:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:40:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:40:59 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:41:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:41:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:41:51 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:41:52 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:41:52 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 21:41:52 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 21:41:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:45:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:45:33 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:45:33 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:45:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:45:34 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:45:34 GMT
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
	-	`sha256:f5ff3a50fbdab030d4c53d49e9524feefab3f3f825c6df4141d25a32dc54bcf0`  
		Last Modified: Fri, 15 Sep 2017 21:09:45 GMT  
		Size: 31.6 MB (31629454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8f4ccbaf6bbe27eabbdbe05df328e808dc596212aca58b7c164ba3a7bdb075`  
		Last Modified: Fri, 15 Sep 2017 21:09:34 GMT  
		Size: 675.4 KB (675350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13c6e30810a667d10a8d10166253b7c96275e335c3002f5bac94ee683d11097`  
		Last Modified: Fri, 15 Sep 2017 21:09:33 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318b48dc57fc8b2c28ae024fc310ea1dd9f7c29cb2e2a3d3ba65d289ecce3aa7`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e49cc74283f3108879d58b4f9bbc6a155ddc2a257a37bd8818769b89c14d58`  
		Last Modified: Fri, 15 Sep 2017 21:53:39 GMT  
		Size: 14.8 MB (14817291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35103e61c49ddfbf1f52ddbcd1d75c603a5cba3f5375692ff3cac39c38708b0`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d44d82745e4b779bfbff7284e77c61fd950eb42440ea3e7af2b541f3fd6d7c3`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 8.6 KB (8560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6489d3a0bd4cb30c2e25dbd16115f56c883d329826d175f4aca3ef6f5b588a01`  
		Last Modified: Fri, 15 Sep 2017 21:53:52 GMT  
		Size: 60.1 MB (60115930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26c688c4d5c432ccd7b4f0eaa58aadf8ded0e12d40c97eab1e92872a3879f73`  
		Last Modified: Fri, 15 Sep 2017 21:53:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9facf81e728898602d3707c0eb6c486af4dc4dddfd75a0e8f6b622f4ffff02`  
		Last Modified: Fri, 15 Sep 2017 21:53:38 GMT  
		Size: 2.4 MB (2390099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a039aa7b0714539c06100e554787d637f1e4c4b45f22459389f3f7b1bd5665c`  
		Last Modified: Fri, 15 Sep 2017 21:53:52 GMT  
		Size: 76.7 MB (76707783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec624add2405db5738d0a64298e15bdae85258787da78e29394e23db08ee8f1`  
		Last Modified: Fri, 15 Sep 2017 21:53:35 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:7dbbba12c03627d4c83c37dcc6cfe8c3b198b9dad84a2154b795f7c77fd096d3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251108840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b474fe8628bba024894d576d5fad524a22f6bdcf4158a4140b0704888a9e31`
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
# Fri, 15 Sep 2017 21:21:42 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:21:45 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:21:49 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:33:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:34:00 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:34:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:34:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:34:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:34:20 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:20:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:27:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:27:28 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:27:31 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:27:33 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 22:27:44 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 22:27:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:43:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:43:56 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:43:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:44:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:44:02 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:44:03 GMT
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
	-	`sha256:b70b88c08445910f839d2b3045d4ca797c39d1026164877059c618f4c3619a2f`  
		Last Modified: Fri, 15 Sep 2017 21:42:03 GMT  
		Size: 35.2 MB (35185766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2131e2d1f7b065623e1df5ac02a5285402c5cba83730d7e8b3ab490e0e050b`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35781705888945fb0289c2812a9a4661e2e433e377496bcca4387bf61bc28bb`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2efa4d52a1298dc2674750ff91bfb986f208e0b3d8888b290c84585999936`  
		Last Modified: Fri, 15 Sep 2017 23:17:57 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd694fca3faeaf63a427ecbb1895cc3240fcc3dd7ea700c783bf11309d611740`  
		Last Modified: Fri, 15 Sep 2017 23:18:00 GMT  
		Size: 14.7 MB (14720423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d98848f6b5648d3b61f33ec419f3f1594bb1452680d7b31360aed048f92718c`  
		Last Modified: Fri, 15 Sep 2017 23:17:54 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666695a75c0ee6495254f0ffed0b8ecea6cbf4f5ac19523a9856bdc8d88630e4`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2cea5c2890cddb24026a1cdc37a3ec8981793a6022b88a6015d40c3d582277`  
		Last Modified: Fri, 15 Sep 2017 23:18:08 GMT  
		Size: 58.1 MB (58105863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c45426ff11a7730b70f65363ca3857f5ce5eeb829b2841b60653305068d500`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5f461ea3d422f457a4b692f4d6bbf441b26aeba27fb0ef237d43a8f6d88318`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 2.4 MB (2390599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f857c80c63798adfdd39c79f42c88c06851f3fc49fe47878b7e69a5a495db90`  
		Last Modified: Fri, 15 Sep 2017 23:18:19 GMT  
		Size: 77.6 MB (77604791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851977ac15e0bfb45b1e679a94382c2890fad6b8d44cab4a985e368c7923051e`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
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
$ docker pull redmine@sha256:5ccaa43fb9a1ab6528f742328f62200e8a2f2f08e90f706c7517b06d1eb6fc78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
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

### `redmine:3.3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:e727f090a539dfe9c9f2dc2891cc15216a37983892e88266261433198348aa93
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240272991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5649216d6a8e6060044cec6a0aea40417e28c0357011e92fa86181329f57cb8d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:45:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 06:45:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Sep 2017 06:56:16 GMT
ENV RUBY_MAJOR=2.2
# Wed, 27 Sep 2017 06:56:16 GMT
ENV RUBY_VERSION=2.2.8
# Wed, 27 Sep 2017 06:56:16 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 27 Sep 2017 06:56:17 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Wed, 27 Sep 2017 07:00:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 27 Sep 2017 07:00:24 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 27 Sep 2017 07:00:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 27 Sep 2017 07:00:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Sep 2017 07:00:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Sep 2017 07:00:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 07:00:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Sep 2017 07:00:27 GMT
CMD ["irb"]
# Wed, 27 Sep 2017 08:04:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Sep 2017 08:04:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 08:04:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 08:04:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Sep 2017 08:04:33 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Sep 2017 08:04:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Sep 2017 08:05:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 08:05:33 GMT
ENV RAILS_ENV=production
# Wed, 27 Sep 2017 08:05:33 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Sep 2017 08:05:33 GMT
ENV REDMINE_VERSION=3.3.4
# Wed, 27 Sep 2017 08:05:33 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Wed, 27 Sep 2017 08:05:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Sep 2017 08:09:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Sep 2017 08:09:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Sep 2017 08:09:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 27 Sep 2017 08:09:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Sep 2017 08:09:42 GMT
EXPOSE 3000/tcp
# Wed, 27 Sep 2017 08:09:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68db9f47da095ece11878aa880ab3bfb1c4aad36a1e0ac32db26fc6625446fe`  
		Last Modified: Wed, 27 Sep 2017 07:01:36 GMT  
		Size: 8.8 MB (8761272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefc796d582aa0b78bac9047366c8dc18625b7af23d2b1803356844f2cb71033`  
		Last Modified: Wed, 27 Sep 2017 07:01:33 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de59ea05b9664f42c290f7c5d2151972a913fb996d9bbdd96bdf2b1abaaaab1`  
		Last Modified: Wed, 27 Sep 2017 07:02:54 GMT  
		Size: 34.4 MB (34448056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe6bd8684580317e916b3703ac97baa0d8e6637fc29eff5e69f195a575bb6b7`  
		Last Modified: Wed, 27 Sep 2017 07:02:41 GMT  
		Size: 677.1 KB (677077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2667468c5900be9674e3083de80ed341d96e6912b692d4edff9395e47ace59`  
		Last Modified: Wed, 27 Sep 2017 07:02:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09001f3f3af35b81b964e607b87d1480404085b27522bb1f86d2ac0dc7e62b73`  
		Last Modified: Wed, 27 Sep 2017 08:18:56 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00cf765aaeb7c932ff6ad8663fd0f28240f152ff59de0e0969983ca20f61d41`  
		Last Modified: Wed, 27 Sep 2017 08:19:00 GMT  
		Size: 14.1 MB (14134564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea621590b0d472ab5667f91d60fb537635fd1e187fbe8e4e1ae2f5622df8094`  
		Last Modified: Wed, 27 Sep 2017 08:18:55 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd74cbacd19b5642febed5a2028f38c4bce18e3beb8fd066963fcd8437f32743`  
		Last Modified: Wed, 27 Sep 2017 08:18:55 GMT  
		Size: 7.3 KB (7309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46384f097ddb652a1e596b1d43b041d8d1e6c7d8f00752216966788de49e3577`  
		Last Modified: Wed, 27 Sep 2017 08:19:10 GMT  
		Size: 54.3 MB (54315967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e17a15b86f6026f0e3b60c06c82f52f69d29089333983f006b8e3f0a8295670`  
		Last Modified: Wed, 27 Sep 2017 08:18:53 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05abe71f1147ce371f545a94bf8a2d40e8a4f00560d26e89e57b7e52e48bb54`  
		Last Modified: Wed, 27 Sep 2017 08:18:54 GMT  
		Size: 2.4 MB (2390598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ac4f449761b6259194e2108bd1788f981512cd88b0ab8f2820082fe50b9c59`  
		Last Modified: Wed, 27 Sep 2017 08:19:11 GMT  
		Size: 76.4 MB (76371967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80f3dca71d509af131ae774462dca581a8f56d906f9bb3444e108c09123b3f3`  
		Last Modified: Wed, 27 Sep 2017 08:18:53 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:4ab3062ce6c350f9fe5f86f0eca1b323e507d638e8e8a9848de88f9f863c4377
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244046355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6cf540c88ce763b510dfc4434f8c439c743b91a3d5dd24336437fb4e9c0108`
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
# Fri, 15 Sep 2017 21:36:24 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:36:25 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:36:26 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:43:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:43:40 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:43:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:43:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:43:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:43:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:43:52 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:21:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:09 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:24:15 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:24:16 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:24:16 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 22:24:17 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 22:24:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:34:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:34:50 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:34:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:34:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:34:52 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:34:53 GMT
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
	-	`sha256:97a40c479b5b36d687c4d505c8bf1d73b7a87947acb71a068eba51b98e7ddc77`  
		Last Modified: Fri, 15 Sep 2017 21:53:23 GMT  
		Size: 34.3 MB (34297135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a24f4cd61a212516946d903024537bffd598a2e6f406b3d1856209cf6b3c41d`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 677.0 KB (677047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05fa2210f052d1f353eb69aedaedd566f46fe3f233dca5499a9a715a5a086ce`  
		Last Modified: Fri, 15 Sep 2017 21:53:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49735b228543d97dfc1c6f259e616e2a6c7ed056d44f488ddb7d9530255c226`  
		Last Modified: Fri, 15 Sep 2017 22:56:59 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f40d509be2372969bdcd28d22629f9790cbb8c25fceb440ce574f4f04b8fc9`  
		Last Modified: Fri, 15 Sep 2017 22:57:03 GMT  
		Size: 14.5 MB (14462476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03cb5caad7e76162b18cdc25bb086700a40fbc084f6052f272e7ffe29baa7d`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f641fc41dca22c0130a2e96b8c67d42ce75b76c8e263053618b10be1147146`  
		Last Modified: Fri, 15 Sep 2017 22:56:57 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7521c1eade02f6a131c41d80558f68cc609e85c76bdd79f8a3ba3c128999b974`  
		Last Modified: Fri, 15 Sep 2017 22:57:17 GMT  
		Size: 55.8 MB (55773277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95457b1922e696db8c8976502a947a6ee3dc272214041d5ff0d9d76f546f652`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894cbdbc56b1f07c1a658683c6e7e1c78b3cdd1907efe316801788c6595b6bc8`  
		Last Modified: Fri, 15 Sep 2017 22:56:55 GMT  
		Size: 2.4 MB (2390312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cc1621c8a25b2c8dc9b68f92bb3061e41c78b939c30ff78f3efde52196c314`  
		Last Modified: Fri, 15 Sep 2017 22:57:22 GMT  
		Size: 76.7 MB (76703193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64ab4450f49d0ca78eda6916b5a19970bd54a4ffb403730ed9af57c6bc04c93`  
		Last Modified: Fri, 15 Sep 2017 22:56:54 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; 386

```console
$ docker pull redmine@sha256:b7a26daf25bed0a977e638234563dd28e2df3cbd03dd355982f7c90509359fa2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254229402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c458ad7d4865600a595fda2f00190f0f47a444a8578c868fa3056bc1f45da29`
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
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 20:42:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:47:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:47:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:47:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:47:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:47:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:47:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:47:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:47:49 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:40:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:40:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:40:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:40:59 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:41:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:41:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:41:51 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:41:52 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:41:52 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 21:41:52 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 21:41:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:45:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:45:33 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:45:33 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:45:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:45:34 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:45:34 GMT
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
	-	`sha256:f5ff3a50fbdab030d4c53d49e9524feefab3f3f825c6df4141d25a32dc54bcf0`  
		Last Modified: Fri, 15 Sep 2017 21:09:45 GMT  
		Size: 31.6 MB (31629454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8f4ccbaf6bbe27eabbdbe05df328e808dc596212aca58b7c164ba3a7bdb075`  
		Last Modified: Fri, 15 Sep 2017 21:09:34 GMT  
		Size: 675.4 KB (675350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13c6e30810a667d10a8d10166253b7c96275e335c3002f5bac94ee683d11097`  
		Last Modified: Fri, 15 Sep 2017 21:09:33 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318b48dc57fc8b2c28ae024fc310ea1dd9f7c29cb2e2a3d3ba65d289ecce3aa7`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e49cc74283f3108879d58b4f9bbc6a155ddc2a257a37bd8818769b89c14d58`  
		Last Modified: Fri, 15 Sep 2017 21:53:39 GMT  
		Size: 14.8 MB (14817291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35103e61c49ddfbf1f52ddbcd1d75c603a5cba3f5375692ff3cac39c38708b0`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d44d82745e4b779bfbff7284e77c61fd950eb42440ea3e7af2b541f3fd6d7c3`  
		Last Modified: Fri, 15 Sep 2017 21:53:36 GMT  
		Size: 8.6 KB (8560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6489d3a0bd4cb30c2e25dbd16115f56c883d329826d175f4aca3ef6f5b588a01`  
		Last Modified: Fri, 15 Sep 2017 21:53:52 GMT  
		Size: 60.1 MB (60115930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26c688c4d5c432ccd7b4f0eaa58aadf8ded0e12d40c97eab1e92872a3879f73`  
		Last Modified: Fri, 15 Sep 2017 21:53:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9facf81e728898602d3707c0eb6c486af4dc4dddfd75a0e8f6b622f4ffff02`  
		Last Modified: Fri, 15 Sep 2017 21:53:38 GMT  
		Size: 2.4 MB (2390099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a039aa7b0714539c06100e554787d637f1e4c4b45f22459389f3f7b1bd5665c`  
		Last Modified: Fri, 15 Sep 2017 21:53:52 GMT  
		Size: 76.7 MB (76707783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec624add2405db5738d0a64298e15bdae85258787da78e29394e23db08ee8f1`  
		Last Modified: Fri, 15 Sep 2017 21:53:35 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:7dbbba12c03627d4c83c37dcc6cfe8c3b198b9dad84a2154b795f7c77fd096d3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251108840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b474fe8628bba024894d576d5fad524a22f6bdcf4158a4140b0704888a9e31`
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
# Fri, 15 Sep 2017 21:21:42 GMT
ENV RUBY_VERSION=2.2.8
# Fri, 15 Sep 2017 21:21:45 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Fri, 15 Sep 2017 21:21:49 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:33:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:34:00 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:34:05 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:34:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:34:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:34:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:34:20 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:20:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:22:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:22:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:22:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:27:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:27:28 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:27:31 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:27:33 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 15 Sep 2017 22:27:44 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 15 Sep 2017 22:27:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:43:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:43:56 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:43:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:44:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:44:02 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:44:03 GMT
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
	-	`sha256:b70b88c08445910f839d2b3045d4ca797c39d1026164877059c618f4c3619a2f`  
		Last Modified: Fri, 15 Sep 2017 21:42:03 GMT  
		Size: 35.2 MB (35185766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2131e2d1f7b065623e1df5ac02a5285402c5cba83730d7e8b3ab490e0e050b`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35781705888945fb0289c2812a9a4661e2e433e377496bcca4387bf61bc28bb`  
		Last Modified: Fri, 15 Sep 2017 21:41:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2efa4d52a1298dc2674750ff91bfb986f208e0b3d8888b290c84585999936`  
		Last Modified: Fri, 15 Sep 2017 23:17:57 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd694fca3faeaf63a427ecbb1895cc3240fcc3dd7ea700c783bf11309d611740`  
		Last Modified: Fri, 15 Sep 2017 23:18:00 GMT  
		Size: 14.7 MB (14720423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d98848f6b5648d3b61f33ec419f3f1594bb1452680d7b31360aed048f92718c`  
		Last Modified: Fri, 15 Sep 2017 23:17:54 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666695a75c0ee6495254f0ffed0b8ecea6cbf4f5ac19523a9856bdc8d88630e4`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2cea5c2890cddb24026a1cdc37a3ec8981793a6022b88a6015d40c3d582277`  
		Last Modified: Fri, 15 Sep 2017 23:18:08 GMT  
		Size: 58.1 MB (58105863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c45426ff11a7730b70f65363ca3857f5ce5eeb829b2841b60653305068d500`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5f461ea3d422f457a4b692f4d6bbf441b26aeba27fb0ef237d43a8f6d88318`  
		Last Modified: Fri, 15 Sep 2017 23:17:53 GMT  
		Size: 2.4 MB (2390599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f857c80c63798adfdd39c79f42c88c06851f3fc49fe47878b7e69a5a495db90`  
		Last Modified: Fri, 15 Sep 2017 23:18:19 GMT  
		Size: 77.6 MB (77604791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851977ac15e0bfb45b1e679a94382c2890fad6b8d44cab4a985e368c7923051e`  
		Last Modified: Fri, 15 Sep 2017 23:17:51 GMT  
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
$ docker pull redmine@sha256:30e7d09002cef99897e01325a07ae1cfc6be89352237b3d86c12c8d3212e4124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
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

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:da73337cefdf252d8fdfc0f86c0cc8f21a2fc46d6970e364922441eb4d2e69b1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228185482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda3fbf698ff84ded3a3aac8b05150e976c7a8cfbf9e7e529673b59001d8fc0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:45:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 06:45:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Sep 2017 06:45:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Sep 2017 06:45:26 GMT
ENV RUBY_VERSION=2.4.2
# Wed, 27 Sep 2017 06:45:26 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 27 Sep 2017 06:45:28 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Wed, 27 Sep 2017 06:50:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 27 Sep 2017 06:50:57 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 27 Sep 2017 06:50:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 27 Sep 2017 06:50:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Sep 2017 06:50:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Sep 2017 06:50:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 06:51:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Sep 2017 06:51:00 GMT
CMD ["irb"]
# Wed, 27 Sep 2017 07:57:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Sep 2017 07:58:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:58:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 07:58:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Sep 2017 07:58:27 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Sep 2017 07:58:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Sep 2017 07:59:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:59:28 GMT
ENV RAILS_ENV=production
# Wed, 27 Sep 2017 07:59:28 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Sep 2017 07:59:28 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 27 Sep 2017 07:59:29 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 27 Sep 2017 07:59:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Sep 2017 08:03:50 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Sep 2017 08:03:51 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Sep 2017 08:03:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 27 Sep 2017 08:03:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Sep 2017 08:03:52 GMT
EXPOSE 3000/tcp
# Wed, 27 Sep 2017 08:03:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68db9f47da095ece11878aa880ab3bfb1c4aad36a1e0ac32db26fc6625446fe`  
		Last Modified: Wed, 27 Sep 2017 07:01:36 GMT  
		Size: 8.8 MB (8761272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefc796d582aa0b78bac9047366c8dc18625b7af23d2b1803356844f2cb71033`  
		Last Modified: Wed, 27 Sep 2017 07:01:33 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734915eeeb8e051ff3d845f2eb15a0ba0a21037be705b28a343564f69d4593ee`  
		Last Modified: Wed, 27 Sep 2017 07:01:41 GMT  
		Size: 23.0 MB (22989186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a81a44497fbcb90ff7772ca6f69b31ca6b599630716ddb92bc7ba67960ce386`  
		Last Modified: Wed, 27 Sep 2017 07:01:33 GMT  
		Size: 677.1 KB (677115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955e38ff8a43fe172ec55ff49afce91ff4b7733e496282cebe3b81b6b932bea6`  
		Last Modified: Wed, 27 Sep 2017 07:01:33 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5db33fa6db8930d7e9880e94a69499bdb46fd3121930374f60ee7f3ad600f39`  
		Last Modified: Wed, 27 Sep 2017 08:18:18 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f818a517cc97f203d476261ac83c5398cb22adbc3b7a12915cd2ba0e684891`  
		Last Modified: Wed, 27 Sep 2017 08:18:21 GMT  
		Size: 14.1 MB (14134496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e515b395f973a981617ebc3631f6729e0811e73ddceb791fd5be39275e463b2`  
		Last Modified: Wed, 27 Sep 2017 08:18:16 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60cf4e666331f599a3471d3e620787c55310a8dee9f22d8973387066605cc04c`  
		Last Modified: Wed, 27 Sep 2017 08:18:16 GMT  
		Size: 7.3 KB (7309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d134d85582ff3cc11b2c07bb63c0af369f28dcfc6b1854d55bdfb0422f5a703`  
		Last Modified: Wed, 27 Sep 2017 08:18:32 GMT  
		Size: 54.3 MB (54315935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26122836b263dd25d841619fae87d3ab85b247def3b18937805eaec627f844b`  
		Last Modified: Wed, 27 Sep 2017 08:18:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ad668321f83a67a59da7363a9dac8398f2061ace99651358cd445046597072`  
		Last Modified: Wed, 27 Sep 2017 08:18:16 GMT  
		Size: 2.4 MB (2448731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028e8461597cbaa2d43b587e1cf060b837a286462b1413de5eb577d3c5517864`  
		Last Modified: Wed, 27 Sep 2017 08:18:34 GMT  
		Size: 75.7 MB (75685263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a7528f84b01830e9b206d750e4398a477fad46c0308a87dbbfb3dd18f9d0a8`  
		Last Modified: Wed, 27 Sep 2017 08:18:14 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:06820eb4bedf754eba3ebea46f0ca23835e2eb0dd0606020c0332cae4cc9280d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230871289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49fb4d2740c0527377ab6bc3cc98d0e9ac2e8305bdb3e9514f2ec34acd69d512`
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
# Fri, 15 Sep 2017 21:05:12 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:14:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:14:38 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:14:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:14:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:14:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:14:45 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:09:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:10:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:10:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:10:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:10:25 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:10:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:12:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:12:13 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:12:13 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:12:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:21:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:21:12 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:21:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:21:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:21:14 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:21:15 GMT
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
	-	`sha256:4701b4eb71e0bf3510ce8bd387030399076be6d2b7d7c70235a0e9606429ac1e`  
		Last Modified: Fri, 15 Sep 2017 21:47:51 GMT  
		Size: 21.8 MB (21750577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb93f9be68692b4eac0dc3435da90d25d39009154df31632f387573c9b80446c`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 677.0 KB (677045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1647270beb201a12dc9cd7abe56bc867eb838e86f9b92011b94d2c1ad2f50546`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654788505f045a0e535c07635c91eeef67187d94a57280d032b8b24db51948a8`  
		Last Modified: Fri, 15 Sep 2017 22:55:53 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dfbc29dae937a15d07d60c711044c0787741fe07df7d49e679a3b3da77b4d4`  
		Last Modified: Fri, 15 Sep 2017 22:55:57 GMT  
		Size: 14.5 MB (14462497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f59e1e5cf52317d5f8d55df817f9e87a418780886559e28f7b19d865164cbd`  
		Last Modified: Fri, 15 Sep 2017 22:55:50 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde8bc116920fc8b2488b02c3dfd4f2f1be49a4baf387ba02b27232db5fe3609`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413a3a69546761330aa8d2767d9ee938f3caa68ef3c0c3dd72ad10bcc384ca9f`  
		Last Modified: Fri, 15 Sep 2017 22:56:07 GMT  
		Size: 55.8 MB (55773415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579c10bafe342aec743a53d904f5a2d25d352152d3f1354e8192a9599c37a285`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae16e7953f4e8e621bf3ee5e9dbc7d5539f188a6f4156a0c264e61781d2c90f`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 2.4 MB (2448157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ada8031b2e74fd4b92099c5b013efe16f9049aae5ae1aeaa60fcc403a45f5d`  
		Last Modified: Fri, 15 Sep 2017 22:56:09 GMT  
		Size: 76.0 MB (76016684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f26b35af18f59b7132fbc3049274d729bc9892bae5c46b3d7a34cc1f5ef9dae`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:97610b480e27499c67b66e568ef09792d08d9f700f1d99a1da2e5ff708bf6e17
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.8 MB (242760970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d2b0ba157cdf8889878f1ac798c6c664771dd1eac967d1f101337df5188b60`
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
# Fri, 15 Sep 2017 20:14:57 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:14:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:14:57 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:19:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:20:28 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:20:29 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:20:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:20:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:20:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:20:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:20:30 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:31:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:32:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:32:31 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:32:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:32:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:32:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:33:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:33:35 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:33:35 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:33:35 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 21:33:35 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 21:33:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:37:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:37:04 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:37:04 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:37:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:37:05 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:37:05 GMT
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
	-	`sha256:7f6446abfb60d4b44b51f5c8263ce26fcd200d4365b611ada3a2695cc0058713`  
		Last Modified: Fri, 15 Sep 2017 21:00:09 GMT  
		Size: 20.8 MB (20783910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6815fd1f469e67724aa1b46b8502edbb30b0f47bb445eb8663a8f98e03ee3363`  
		Last Modified: Fri, 15 Sep 2017 21:00:02 GMT  
		Size: 675.4 KB (675353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2bcd1f3f7d229136471e37b8321a441c443ff10885cf17ea4f3b2550a25bac`  
		Last Modified: Fri, 15 Sep 2017 21:00:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83338d2b41f9ed3d3f3730e410469b19b6d04b81dfc10923c3260ddfc6d7c18d`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9106ac7eab86d7946e2bc866a41c4920448f20efb647f31e6263698c9d6deb`  
		Last Modified: Fri, 15 Sep 2017 21:52:35 GMT  
		Size: 14.8 MB (14817286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f83023ec9f29e9b9a2b5cba13a44ce61f3337e6bd6fdce966a4cde7458fd413`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9269122aa777848e9e94e5575d1da722f30abcb9b9d4705ac157aaf16edfab`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 8.6 KB (8559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0265e52f6e9e050b156af2bbc180a2e52c25eaaaf697c87d64a4ab92ed5caeff`  
		Last Modified: Fri, 15 Sep 2017 21:53:07 GMT  
		Size: 60.1 MB (60115637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9c2db60590d0ac5e272ac5e682233a136132c3681a156a26b30bf4da41776d`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02ca3d3be23f54f0b69ee7e99ee4a535450bdfcc59692b586df4a695f3f46ca`  
		Last Modified: Fri, 15 Sep 2017 21:52:33 GMT  
		Size: 2.4 MB (2447805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fb4e99f5c27492a86fecf096480afde11b7bc05ccbd379a5188fbc46243058`  
		Last Modified: Fri, 15 Sep 2017 21:52:47 GMT  
		Size: 76.0 MB (76027488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d4de27e530e8547294bf6d1b505bbffd0d5ea8d102070083aa922497d86ae`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:f7d28f71c3f19ddf50657598071c288519c94d8068ecde5373d1982b1158cf20
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237527322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b216afe859b7c8f83b8d186955dc927eebda3f207696343cf1c4c1e7c57544`
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
# Fri, 15 Sep 2017 20:31:17 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:31:19 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:31:22 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:45:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:46:02 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:46:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:46:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:46:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:46:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:58:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:59:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:59:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:59:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:59:32 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:59:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:03:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:03:55 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:03:56 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:03:58 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:04:00 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:04:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:20:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:20:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:20:25 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:20:29 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:20:31 GMT
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
	-	`sha256:c5050b595185390551d7a09550e3710a6585d4addece55658689aaa125bc2231`  
		Last Modified: Fri, 15 Sep 2017 21:37:36 GMT  
		Size: 22.2 MB (22238462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326ceb269e5b022d990956f8a669f02da02c3094bb6ec4720618784eaf4d38a`  
		Last Modified: Fri, 15 Sep 2017 21:37:31 GMT  
		Size: 677.1 KB (677118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51ced9be5acfa91c81bb69d720864b3ec47727b1662c4a78311e158c14cde6`  
		Last Modified: Fri, 15 Sep 2017 21:37:30 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9983a85c9c7c976defa4741404c74c06a301d9f4fe57187a255f843767a4fb`  
		Last Modified: Fri, 15 Sep 2017 23:17:05 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d223e69916fddca9157f953fceea07ed5606a39cd1c1d9a52a01a8bd791e1567`  
		Last Modified: Fri, 15 Sep 2017 23:17:08 GMT  
		Size: 14.7 MB (14720580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6edbe513c926f962b7ece75e0fa60afd9374f29ea66822d90ff65e3e174072`  
		Last Modified: Fri, 15 Sep 2017 23:17:04 GMT  
		Size: 469.8 KB (469844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18105ecaa882c60e7e89b00ac117cfd0844dba99ac359b62c3bd3fa85178bcd5`  
		Last Modified: Fri, 15 Sep 2017 23:17:02 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be82616d3a5dbcf14b1e2f7196ca6e8595297cdc8993b2f976a303fca1c41bc`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 58.1 MB (58106039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3996f2f600c0aa1a4ae7d314cad79a3c1c943652f29f60f787d9ace4ee6e85`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99db50c579e97156eac175a1ff5080f9f4bf5604966070d0af48062076ebe8f2`  
		Last Modified: Fri, 15 Sep 2017 23:17:01 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9170b609cac67c0b66d556342c1e544f8ace4f9a982467b40d58b58500e2be`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 76.9 MB (76912066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd16dad7d125c4c8c55249c39aa89acbd24edc6aae9a5225b82a35d50402314`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 1.7 KB (1707 bytes)  
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
$ docker pull redmine@sha256:30e7d09002cef99897e01325a07ae1cfc6be89352237b3d86c12c8d3212e4124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
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

### `redmine:3.4.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:da73337cefdf252d8fdfc0f86c0cc8f21a2fc46d6970e364922441eb4d2e69b1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228185482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda3fbf698ff84ded3a3aac8b05150e976c7a8cfbf9e7e529673b59001d8fc0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:45:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 06:45:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Sep 2017 06:45:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Sep 2017 06:45:26 GMT
ENV RUBY_VERSION=2.4.2
# Wed, 27 Sep 2017 06:45:26 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 27 Sep 2017 06:45:28 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Wed, 27 Sep 2017 06:50:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 27 Sep 2017 06:50:57 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 27 Sep 2017 06:50:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 27 Sep 2017 06:50:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Sep 2017 06:50:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Sep 2017 06:50:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 06:51:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Sep 2017 06:51:00 GMT
CMD ["irb"]
# Wed, 27 Sep 2017 07:57:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Sep 2017 07:58:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:58:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 07:58:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Sep 2017 07:58:27 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Sep 2017 07:58:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Sep 2017 07:59:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:59:28 GMT
ENV RAILS_ENV=production
# Wed, 27 Sep 2017 07:59:28 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Sep 2017 07:59:28 GMT
ENV REDMINE_VERSION=3.4.2
# Wed, 27 Sep 2017 07:59:29 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Wed, 27 Sep 2017 07:59:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Sep 2017 08:03:50 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Sep 2017 08:03:51 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Sep 2017 08:03:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 27 Sep 2017 08:03:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Sep 2017 08:03:52 GMT
EXPOSE 3000/tcp
# Wed, 27 Sep 2017 08:03:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68db9f47da095ece11878aa880ab3bfb1c4aad36a1e0ac32db26fc6625446fe`  
		Last Modified: Wed, 27 Sep 2017 07:01:36 GMT  
		Size: 8.8 MB (8761272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefc796d582aa0b78bac9047366c8dc18625b7af23d2b1803356844f2cb71033`  
		Last Modified: Wed, 27 Sep 2017 07:01:33 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734915eeeb8e051ff3d845f2eb15a0ba0a21037be705b28a343564f69d4593ee`  
		Last Modified: Wed, 27 Sep 2017 07:01:41 GMT  
		Size: 23.0 MB (22989186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a81a44497fbcb90ff7772ca6f69b31ca6b599630716ddb92bc7ba67960ce386`  
		Last Modified: Wed, 27 Sep 2017 07:01:33 GMT  
		Size: 677.1 KB (677115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955e38ff8a43fe172ec55ff49afce91ff4b7733e496282cebe3b81b6b932bea6`  
		Last Modified: Wed, 27 Sep 2017 07:01:33 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5db33fa6db8930d7e9880e94a69499bdb46fd3121930374f60ee7f3ad600f39`  
		Last Modified: Wed, 27 Sep 2017 08:18:18 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f818a517cc97f203d476261ac83c5398cb22adbc3b7a12915cd2ba0e684891`  
		Last Modified: Wed, 27 Sep 2017 08:18:21 GMT  
		Size: 14.1 MB (14134496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e515b395f973a981617ebc3631f6729e0811e73ddceb791fd5be39275e463b2`  
		Last Modified: Wed, 27 Sep 2017 08:18:16 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60cf4e666331f599a3471d3e620787c55310a8dee9f22d8973387066605cc04c`  
		Last Modified: Wed, 27 Sep 2017 08:18:16 GMT  
		Size: 7.3 KB (7309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d134d85582ff3cc11b2c07bb63c0af369f28dcfc6b1854d55bdfb0422f5a703`  
		Last Modified: Wed, 27 Sep 2017 08:18:32 GMT  
		Size: 54.3 MB (54315935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26122836b263dd25d841619fae87d3ab85b247def3b18937805eaec627f844b`  
		Last Modified: Wed, 27 Sep 2017 08:18:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ad668321f83a67a59da7363a9dac8398f2061ace99651358cd445046597072`  
		Last Modified: Wed, 27 Sep 2017 08:18:16 GMT  
		Size: 2.4 MB (2448731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028e8461597cbaa2d43b587e1cf060b837a286462b1413de5eb577d3c5517864`  
		Last Modified: Wed, 27 Sep 2017 08:18:34 GMT  
		Size: 75.7 MB (75685263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a7528f84b01830e9b206d750e4398a477fad46c0308a87dbbfb3dd18f9d0a8`  
		Last Modified: Wed, 27 Sep 2017 08:18:14 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:06820eb4bedf754eba3ebea46f0ca23835e2eb0dd0606020c0332cae4cc9280d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230871289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49fb4d2740c0527377ab6bc3cc98d0e9ac2e8305bdb3e9514f2ec34acd69d512`
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
# Fri, 15 Sep 2017 21:05:12 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:14:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:14:38 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:14:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:14:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:14:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:14:45 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:09:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:10:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:10:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:10:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:10:25 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:10:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:12:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:12:13 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:12:13 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:12:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:21:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:21:12 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:21:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:21:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:21:14 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:21:15 GMT
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
	-	`sha256:4701b4eb71e0bf3510ce8bd387030399076be6d2b7d7c70235a0e9606429ac1e`  
		Last Modified: Fri, 15 Sep 2017 21:47:51 GMT  
		Size: 21.8 MB (21750577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb93f9be68692b4eac0dc3435da90d25d39009154df31632f387573c9b80446c`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 677.0 KB (677045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1647270beb201a12dc9cd7abe56bc867eb838e86f9b92011b94d2c1ad2f50546`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654788505f045a0e535c07635c91eeef67187d94a57280d032b8b24db51948a8`  
		Last Modified: Fri, 15 Sep 2017 22:55:53 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dfbc29dae937a15d07d60c711044c0787741fe07df7d49e679a3b3da77b4d4`  
		Last Modified: Fri, 15 Sep 2017 22:55:57 GMT  
		Size: 14.5 MB (14462497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f59e1e5cf52317d5f8d55df817f9e87a418780886559e28f7b19d865164cbd`  
		Last Modified: Fri, 15 Sep 2017 22:55:50 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde8bc116920fc8b2488b02c3dfd4f2f1be49a4baf387ba02b27232db5fe3609`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413a3a69546761330aa8d2767d9ee938f3caa68ef3c0c3dd72ad10bcc384ca9f`  
		Last Modified: Fri, 15 Sep 2017 22:56:07 GMT  
		Size: 55.8 MB (55773415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579c10bafe342aec743a53d904f5a2d25d352152d3f1354e8192a9599c37a285`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae16e7953f4e8e621bf3ee5e9dbc7d5539f188a6f4156a0c264e61781d2c90f`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 2.4 MB (2448157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ada8031b2e74fd4b92099c5b013efe16f9049aae5ae1aeaa60fcc403a45f5d`  
		Last Modified: Fri, 15 Sep 2017 22:56:09 GMT  
		Size: 76.0 MB (76016684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f26b35af18f59b7132fbc3049274d729bc9892bae5c46b3d7a34cc1f5ef9dae`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; 386

```console
$ docker pull redmine@sha256:97610b480e27499c67b66e568ef09792d08d9f700f1d99a1da2e5ff708bf6e17
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.8 MB (242760970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d2b0ba157cdf8889878f1ac798c6c664771dd1eac967d1f101337df5188b60`
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
# Fri, 15 Sep 2017 20:14:57 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:14:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:14:57 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:19:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:20:28 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:20:29 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:20:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:20:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:20:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:20:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:20:30 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:31:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:32:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:32:31 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:32:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:32:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:32:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:33:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:33:35 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:33:35 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:33:35 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 21:33:35 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 21:33:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:37:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:37:04 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:37:04 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:37:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:37:05 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:37:05 GMT
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
	-	`sha256:7f6446abfb60d4b44b51f5c8263ce26fcd200d4365b611ada3a2695cc0058713`  
		Last Modified: Fri, 15 Sep 2017 21:00:09 GMT  
		Size: 20.8 MB (20783910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6815fd1f469e67724aa1b46b8502edbb30b0f47bb445eb8663a8f98e03ee3363`  
		Last Modified: Fri, 15 Sep 2017 21:00:02 GMT  
		Size: 675.4 KB (675353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2bcd1f3f7d229136471e37b8321a441c443ff10885cf17ea4f3b2550a25bac`  
		Last Modified: Fri, 15 Sep 2017 21:00:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83338d2b41f9ed3d3f3730e410469b19b6d04b81dfc10923c3260ddfc6d7c18d`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9106ac7eab86d7946e2bc866a41c4920448f20efb647f31e6263698c9d6deb`  
		Last Modified: Fri, 15 Sep 2017 21:52:35 GMT  
		Size: 14.8 MB (14817286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f83023ec9f29e9b9a2b5cba13a44ce61f3337e6bd6fdce966a4cde7458fd413`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9269122aa777848e9e94e5575d1da722f30abcb9b9d4705ac157aaf16edfab`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 8.6 KB (8559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0265e52f6e9e050b156af2bbc180a2e52c25eaaaf697c87d64a4ab92ed5caeff`  
		Last Modified: Fri, 15 Sep 2017 21:53:07 GMT  
		Size: 60.1 MB (60115637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9c2db60590d0ac5e272ac5e682233a136132c3681a156a26b30bf4da41776d`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02ca3d3be23f54f0b69ee7e99ee4a535450bdfcc59692b586df4a695f3f46ca`  
		Last Modified: Fri, 15 Sep 2017 21:52:33 GMT  
		Size: 2.4 MB (2447805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fb4e99f5c27492a86fecf096480afde11b7bc05ccbd379a5188fbc46243058`  
		Last Modified: Fri, 15 Sep 2017 21:52:47 GMT  
		Size: 76.0 MB (76027488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d4de27e530e8547294bf6d1b505bbffd0d5ea8d102070083aa922497d86ae`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:f7d28f71c3f19ddf50657598071c288519c94d8068ecde5373d1982b1158cf20
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237527322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b216afe859b7c8f83b8d186955dc927eebda3f207696343cf1c4c1e7c57544`
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
# Fri, 15 Sep 2017 20:31:17 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:31:19 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:31:22 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:45:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:46:02 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:46:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:46:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:46:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:46:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:58:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:59:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:59:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:59:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:59:32 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:59:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:03:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:03:55 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:03:56 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:03:58 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:04:00 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:04:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:20:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:20:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:20:25 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:20:29 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:20:31 GMT
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
	-	`sha256:c5050b595185390551d7a09550e3710a6585d4addece55658689aaa125bc2231`  
		Last Modified: Fri, 15 Sep 2017 21:37:36 GMT  
		Size: 22.2 MB (22238462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326ceb269e5b022d990956f8a669f02da02c3094bb6ec4720618784eaf4d38a`  
		Last Modified: Fri, 15 Sep 2017 21:37:31 GMT  
		Size: 677.1 KB (677118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51ced9be5acfa91c81bb69d720864b3ec47727b1662c4a78311e158c14cde6`  
		Last Modified: Fri, 15 Sep 2017 21:37:30 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9983a85c9c7c976defa4741404c74c06a301d9f4fe57187a255f843767a4fb`  
		Last Modified: Fri, 15 Sep 2017 23:17:05 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d223e69916fddca9157f953fceea07ed5606a39cd1c1d9a52a01a8bd791e1567`  
		Last Modified: Fri, 15 Sep 2017 23:17:08 GMT  
		Size: 14.7 MB (14720580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6edbe513c926f962b7ece75e0fa60afd9374f29ea66822d90ff65e3e174072`  
		Last Modified: Fri, 15 Sep 2017 23:17:04 GMT  
		Size: 469.8 KB (469844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18105ecaa882c60e7e89b00ac117cfd0844dba99ac359b62c3bd3fa85178bcd5`  
		Last Modified: Fri, 15 Sep 2017 23:17:02 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be82616d3a5dbcf14b1e2f7196ca6e8595297cdc8993b2f976a303fca1c41bc`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 58.1 MB (58106039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3996f2f600c0aa1a4ae7d314cad79a3c1c943652f29f60f787d9ace4ee6e85`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99db50c579e97156eac175a1ff5080f9f4bf5604966070d0af48062076ebe8f2`  
		Last Modified: Fri, 15 Sep 2017 23:17:01 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9170b609cac67c0b66d556342c1e544f8ace4f9a982467b40d58b58500e2be`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 76.9 MB (76912066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd16dad7d125c4c8c55249c39aa89acbd24edc6aae9a5225b82a35d50402314`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 1.7 KB (1707 bytes)  
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
$ docker pull redmine@sha256:dd130d1700caf9e978ad7bd6ea2e7436a5e72bae246c2cc972f7c034f05429e7
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
$ docker pull redmine@sha256:06820eb4bedf754eba3ebea46f0ca23835e2eb0dd0606020c0332cae4cc9280d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230871289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49fb4d2740c0527377ab6bc3cc98d0e9ac2e8305bdb3e9514f2ec34acd69d512`
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
# Fri, 15 Sep 2017 21:05:12 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 21:05:13 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:14:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:14:38 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:14:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:14:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:14:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:14:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:14:45 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 22:09:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 22:10:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:10:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 22:10:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 22:10:25 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 22:10:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:12:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:12:13 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:12:13 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:12:14 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:12:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:21:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:21:12 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:21:13 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:21:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:21:14 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:21:15 GMT
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
	-	`sha256:4701b4eb71e0bf3510ce8bd387030399076be6d2b7d7c70235a0e9606429ac1e`  
		Last Modified: Fri, 15 Sep 2017 21:47:51 GMT  
		Size: 21.8 MB (21750577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb93f9be68692b4eac0dc3435da90d25d39009154df31632f387573c9b80446c`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 677.0 KB (677045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1647270beb201a12dc9cd7abe56bc867eb838e86f9b92011b94d2c1ad2f50546`  
		Last Modified: Fri, 15 Sep 2017 21:47:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654788505f045a0e535c07635c91eeef67187d94a57280d032b8b24db51948a8`  
		Last Modified: Fri, 15 Sep 2017 22:55:53 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dfbc29dae937a15d07d60c711044c0787741fe07df7d49e679a3b3da77b4d4`  
		Last Modified: Fri, 15 Sep 2017 22:55:57 GMT  
		Size: 14.5 MB (14462497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f59e1e5cf52317d5f8d55df817f9e87a418780886559e28f7b19d865164cbd`  
		Last Modified: Fri, 15 Sep 2017 22:55:50 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde8bc116920fc8b2488b02c3dfd4f2f1be49a4baf387ba02b27232db5fe3609`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413a3a69546761330aa8d2767d9ee938f3caa68ef3c0c3dd72ad10bcc384ca9f`  
		Last Modified: Fri, 15 Sep 2017 22:56:07 GMT  
		Size: 55.8 MB (55773415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579c10bafe342aec743a53d904f5a2d25d352152d3f1354e8192a9599c37a285`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae16e7953f4e8e621bf3ee5e9dbc7d5539f188a6f4156a0c264e61781d2c90f`  
		Last Modified: Fri, 15 Sep 2017 22:55:49 GMT  
		Size: 2.4 MB (2448157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ada8031b2e74fd4b92099c5b013efe16f9049aae5ae1aeaa60fcc403a45f5d`  
		Last Modified: Fri, 15 Sep 2017 22:56:09 GMT  
		Size: 76.0 MB (76016684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f26b35af18f59b7132fbc3049274d729bc9892bae5c46b3d7a34cc1f5ef9dae`  
		Last Modified: Fri, 15 Sep 2017 22:55:47 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:97610b480e27499c67b66e568ef09792d08d9f700f1d99a1da2e5ff708bf6e17
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.8 MB (242760970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d2b0ba157cdf8889878f1ac798c6c664771dd1eac967d1f101337df5188b60`
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
# Fri, 15 Sep 2017 20:14:57 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:14:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:14:57 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:19:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:20:28 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:20:29 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:20:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:20:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:20:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:20:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:20:30 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:31:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:32:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:32:31 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:32:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:32:35 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:32:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 21:33:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:33:35 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 21:33:35 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 21:33:35 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 21:33:35 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 21:33:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 21:37:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 21:37:04 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 21:37:04 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 21:37:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 21:37:05 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 21:37:05 GMT
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
	-	`sha256:7f6446abfb60d4b44b51f5c8263ce26fcd200d4365b611ada3a2695cc0058713`  
		Last Modified: Fri, 15 Sep 2017 21:00:09 GMT  
		Size: 20.8 MB (20783910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6815fd1f469e67724aa1b46b8502edbb30b0f47bb445eb8663a8f98e03ee3363`  
		Last Modified: Fri, 15 Sep 2017 21:00:02 GMT  
		Size: 675.4 KB (675353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2bcd1f3f7d229136471e37b8321a441c443ff10885cf17ea4f3b2550a25bac`  
		Last Modified: Fri, 15 Sep 2017 21:00:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83338d2b41f9ed3d3f3730e410469b19b6d04b81dfc10923c3260ddfc6d7c18d`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9106ac7eab86d7946e2bc866a41c4920448f20efb647f31e6263698c9d6deb`  
		Last Modified: Fri, 15 Sep 2017 21:52:35 GMT  
		Size: 14.8 MB (14817286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f83023ec9f29e9b9a2b5cba13a44ce61f3337e6bd6fdce966a4cde7458fd413`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 480.6 KB (480569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9269122aa777848e9e94e5575d1da722f30abcb9b9d4705ac157aaf16edfab`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 8.6 KB (8559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0265e52f6e9e050b156af2bbc180a2e52c25eaaaf697c87d64a4ab92ed5caeff`  
		Last Modified: Fri, 15 Sep 2017 21:53:07 GMT  
		Size: 60.1 MB (60115637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9c2db60590d0ac5e272ac5e682233a136132c3681a156a26b30bf4da41776d`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02ca3d3be23f54f0b69ee7e99ee4a535450bdfcc59692b586df4a695f3f46ca`  
		Last Modified: Fri, 15 Sep 2017 21:52:33 GMT  
		Size: 2.4 MB (2447805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fb4e99f5c27492a86fecf096480afde11b7bc05ccbd379a5188fbc46243058`  
		Last Modified: Fri, 15 Sep 2017 21:52:47 GMT  
		Size: 76.0 MB (76027488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d4de27e530e8547294bf6d1b505bbffd0d5ea8d102070083aa922497d86ae`  
		Last Modified: Fri, 15 Sep 2017 21:52:31 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:f7d28f71c3f19ddf50657598071c288519c94d8068ecde5373d1982b1158cf20
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237527322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b216afe859b7c8f83b8d186955dc927eebda3f207696343cf1c4c1e7c57544`
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
# Fri, 15 Sep 2017 20:31:17 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:31:19 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:31:22 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:45:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:46:02 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:46:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:46:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:46:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:46:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:46:33 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:58:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 15 Sep 2017 21:59:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 21:59:23 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 21:59:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 21:59:32 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 15 Sep 2017 21:59:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 15 Sep 2017 22:03:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 22:03:55 GMT
ENV RAILS_ENV=production
# Fri, 15 Sep 2017 22:03:56 GMT
WORKDIR /usr/src/redmine
# Fri, 15 Sep 2017 22:03:58 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 15 Sep 2017 22:04:00 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 15 Sep 2017 22:04:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 15 Sep 2017 22:20:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 15 Sep 2017 22:20:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 15 Sep 2017 22:20:25 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 15 Sep 2017 22:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 15 Sep 2017 22:20:29 GMT
EXPOSE 3000/tcp
# Fri, 15 Sep 2017 22:20:31 GMT
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
	-	`sha256:c5050b595185390551d7a09550e3710a6585d4addece55658689aaa125bc2231`  
		Last Modified: Fri, 15 Sep 2017 21:37:36 GMT  
		Size: 22.2 MB (22238462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326ceb269e5b022d990956f8a669f02da02c3094bb6ec4720618784eaf4d38a`  
		Last Modified: Fri, 15 Sep 2017 21:37:31 GMT  
		Size: 677.1 KB (677118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51ced9be5acfa91c81bb69d720864b3ec47727b1662c4a78311e158c14cde6`  
		Last Modified: Fri, 15 Sep 2017 21:37:30 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9983a85c9c7c976defa4741404c74c06a301d9f4fe57187a255f843767a4fb`  
		Last Modified: Fri, 15 Sep 2017 23:17:05 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d223e69916fddca9157f953fceea07ed5606a39cd1c1d9a52a01a8bd791e1567`  
		Last Modified: Fri, 15 Sep 2017 23:17:08 GMT  
		Size: 14.7 MB (14720580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6edbe513c926f962b7ece75e0fa60afd9374f29ea66822d90ff65e3e174072`  
		Last Modified: Fri, 15 Sep 2017 23:17:04 GMT  
		Size: 469.8 KB (469844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18105ecaa882c60e7e89b00ac117cfd0844dba99ac359b62c3bd3fa85178bcd5`  
		Last Modified: Fri, 15 Sep 2017 23:17:02 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be82616d3a5dbcf14b1e2f7196ca6e8595297cdc8993b2f976a303fca1c41bc`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 58.1 MB (58106039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3996f2f600c0aa1a4ae7d314cad79a3c1c943652f29f60f787d9ace4ee6e85`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99db50c579e97156eac175a1ff5080f9f4bf5604966070d0af48062076ebe8f2`  
		Last Modified: Fri, 15 Sep 2017 23:17:01 GMT  
		Size: 2.4 MB (2448734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9170b609cac67c0b66d556342c1e544f8ace4f9a982467b40d58b58500e2be`  
		Last Modified: Fri, 15 Sep 2017 23:17:16 GMT  
		Size: 76.9 MB (76912066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd16dad7d125c4c8c55249c39aa89acbd24edc6aae9a5225b82a35d50402314`  
		Last Modified: Fri, 15 Sep 2017 23:17:00 GMT  
		Size: 1.7 KB (1707 bytes)  
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
