## `redmine:latest`

```console
$ docker pull redmine@sha256:5bc43b910a05f7c5c64e9fea7772b31494d803db56a2f3cb9f67f89fd85251ba
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
