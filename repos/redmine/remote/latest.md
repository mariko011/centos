## `redmine:latest`

```console
$ docker pull redmine@sha256:532ed1650ff38734f048aa37f769b4db181099e366b6c7fab9aec59f7926295c
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
$ docker pull redmine@sha256:440b777cdea961a2c9bc88cc418e852f856151ec7420abfdc1cc56523d9ac106
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241150026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c87247de0175585c76f08092a15e0dc9c562de9ff7b3032816dce54ee32a35a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:25:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:25:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:25:53 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 03:25:54 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 19:54:59 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 25 Oct 2017 19:28:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:32:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:32:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:32:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:32:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:32:05 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 20:26:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 20:26:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:26:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 20:26:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 20:26:59 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 20:27:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 20:27:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 20:27:42 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 20:27:42 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 20:27:42 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 25 Oct 2017 20:27:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 25 Oct 2017 20:27:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 20:30:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 20:30:15 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 25 Oct 2017 20:30:15 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 25 Oct 2017 20:30:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 20:30:15 GMT
EXPOSE 3000/tcp
# Wed, 25 Oct 2017 20:30:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae4685a0b54a3f3e4bea7e2acba998bd2939a40ce0b82e48c5db87ca26eb0f`  
		Last Modified: Tue, 10 Oct 2017 04:01:00 GMT  
		Size: 10.2 MB (10162028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d623a24f11b4bda8413c82f167e6c1dbb002ec90279109aeb45a0bc19d1243b2`  
		Last Modified: Tue, 10 Oct 2017 04:00:55 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffff09909504cacaac9201e21d25c040fb7633231abab154487c27a612e96ffb`  
		Last Modified: Wed, 25 Oct 2017 20:01:55 GMT  
		Size: 24.3 MB (24286429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76a1a06d36442283854b277110a464cf75abf772ad2206b46c8a0ebacb036ef`  
		Last Modified: Wed, 25 Oct 2017 20:01:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ab89d380eb560ef6f04376c1fa61c0ed332596b8c729d25f50ca0987918950`  
		Last Modified: Wed, 25 Oct 2017 20:41:08 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c314d67f5e43fbcc4a5cd4094c703b82b92d5436ddeea374415d266b20dd93`  
		Last Modified: Wed, 25 Oct 2017 20:41:11 GMT  
		Size: 14.7 MB (14650128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a2ef0d1820bff9d9fb3215c279ca13413d2cb602cf97e422d5bb1e63e782ed`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4f02c2d55a18d17690fd1dd1963eeb9ff48b7052b0bc33d87933e3eb9e155d`  
		Last Modified: Wed, 25 Oct 2017 20:41:05 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994674730999ddbc5323141ce35763ca117ac0a0f37e3902efdac0abe5f27d75`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 59.2 MB (59228463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db84569570f9a554474131f28eaaa862ce123e9abc2262fc8c256d33c7bd127`  
		Last Modified: Wed, 25 Oct 2017 20:41:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad28fb2271231fdbbb59ef9e14ca8db6c2362f5b285fd1b50b10c548b63583`  
		Last Modified: Wed, 25 Oct 2017 20:41:06 GMT  
		Size: 2.4 MB (2449718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29652b55913f35e46dfe21cdab929b94ad8e741a426c60a7ed5fd7297def4d83`  
		Last Modified: Wed, 25 Oct 2017 20:41:22 GMT  
		Size: 77.3 MB (77264642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eda9dd7752f9f14eb37d1275d45a8862a828bbbbc7078eefe22b13a1b559ace`  
		Last Modified: Wed, 25 Oct 2017 20:41:03 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:eca71a88c338f76196e4f432e6ce98316e70dac9712be737c96ae182173e5e3d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.4 MB (234363204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0312f3ac0005a902069ba79fdde45e455abbb9f93883db3875adc12f7c25ec82`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:44:40 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 11 Oct 2017 01:38:47 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 26 Oct 2017 01:44:32 GMT
ENV BUNDLER_VERSION=1.15.4
# Thu, 26 Oct 2017 01:50:37 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 26 Oct 2017 01:50:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 01:50:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 01:50:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 01:50:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 01:50:39 GMT
CMD ["irb"]
# Thu, 26 Oct 2017 02:31:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 26 Oct 2017 02:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Oct 2017 02:32:14 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 02:32:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 02:32:17 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 26 Oct 2017 02:32:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 26 Oct 2017 02:33:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Oct 2017 02:33:19 GMT
ENV RAILS_ENV=production
# Thu, 26 Oct 2017 02:33:19 GMT
WORKDIR /usr/src/redmine
# Thu, 26 Oct 2017 02:33:20 GMT
ENV REDMINE_VERSION=3.4.3
# Thu, 26 Oct 2017 02:33:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Thu, 26 Oct 2017 02:33:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 26 Oct 2017 02:37:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 02:37:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 26 Oct 2017 02:37:57 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Thu, 26 Oct 2017 02:37:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:37:57 GMT
EXPOSE 3000/tcp
# Thu, 26 Oct 2017 02:37:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6a5f581a144c584f790f5bcab7c80f47ab7f7c7bedf4253a63bc3170a71a18`  
		Last Modified: Thu, 26 Oct 2017 02:12:54 GMT  
		Size: 24.1 MB (24052813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753550ff129ed35940aa1f1a39022964530ea964bbd3669629c4e9a6990902a2`  
		Last Modified: Thu, 26 Oct 2017 02:12:45 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c4bf822d66bd09c0064d786c82f08e80021eea8e9dce741066605cab626965`  
		Last Modified: Thu, 26 Oct 2017 02:49:02 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4407870c59f56f81ac8703009a761b4b7589040244da40978147ac13d8b00e68`  
		Last Modified: Thu, 26 Oct 2017 02:49:06 GMT  
		Size: 14.3 MB (14347480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2fc2e039b2f5a16216c9fdfc20755b259d7786f148d96aafb53ba26efa2d0e`  
		Last Modified: Thu, 26 Oct 2017 02:49:01 GMT  
		Size: 491.1 KB (491126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5556472cbdf10660f1a9e7352ca403288426a219c53f3af1cb5f24bef64e7efc`  
		Last Modified: Thu, 26 Oct 2017 02:49:00 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c6bd384d76f10f527ebcace8456a8e0f1d4385476b09fafea79b962eeec38c`  
		Last Modified: Thu, 26 Oct 2017 02:49:18 GMT  
		Size: 56.6 MB (56571491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a807d889798b79b8139c8c0e9bf58e9cbde12a3334c8cfba2c7c365a26d1b7`  
		Last Modified: Thu, 26 Oct 2017 02:48:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c21a1c6462374ff4528f0eacee0c762a75c203f902351d8dc295424d0589aa`  
		Last Modified: Thu, 26 Oct 2017 02:49:00 GMT  
		Size: 2.5 MB (2450382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ff40d9092c46ca4e98ba5dbd63e16ae96a32c14defde9db0c346457b386e00`  
		Last Modified: Thu, 26 Oct 2017 02:49:19 GMT  
		Size: 76.4 MB (76445488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b99e9af8242b082a295c80f2192b3b59bfb89b32d18e9c00056d4f38e3860df`  
		Last Modified: Thu, 26 Oct 2017 02:48:59 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:ced0a7dd07a5043e34ae8ee5285de06a2a72025124b11a58d27f4c5cb705c0c3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228660155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9887736230a7c849a06767b6524c166b2cfefec13b29eedae5c385197e59171`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:34:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:34:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:34:10 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 11 Oct 2017 01:27:08 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 26 Oct 2017 01:32:36 GMT
ENV BUNDLER_VERSION=1.15.4
# Thu, 26 Oct 2017 01:38:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 26 Oct 2017 01:38:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 01:38:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 01:38:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 01:38:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 01:38:07 GMT
CMD ["irb"]
# Thu, 26 Oct 2017 02:20:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 26 Oct 2017 02:20:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Oct 2017 02:20:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 02:21:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 02:21:02 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 26 Oct 2017 02:21:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 26 Oct 2017 02:21:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Oct 2017 02:21:59 GMT
ENV RAILS_ENV=production
# Thu, 26 Oct 2017 02:21:59 GMT
WORKDIR /usr/src/redmine
# Thu, 26 Oct 2017 02:22:00 GMT
ENV REDMINE_VERSION=3.4.3
# Thu, 26 Oct 2017 02:22:00 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Thu, 26 Oct 2017 02:22:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 26 Oct 2017 02:26:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 02:26:14 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 26 Oct 2017 02:26:15 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Thu, 26 Oct 2017 02:26:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:26:15 GMT
EXPOSE 3000/tcp
# Thu, 26 Oct 2017 02:26:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45e4d864a6c60ee4b4a2032ca433fc05d96194e7180016527572da21c44f227`  
		Last Modified: Tue, 10 Oct 2017 01:02:32 GMT  
		Size: 8.8 MB (8761230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30bf1114e281150fe7b59eee2ce7a038a378c4970714ec63009a763b78eb919`  
		Last Modified: Tue, 10 Oct 2017 01:02:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fb19e6981ea4e09eac7df35b1f5c55ed6cac54812fea7c331b433cad26f049`  
		Last Modified: Thu, 26 Oct 2017 02:00:33 GMT  
		Size: 23.9 MB (23927512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06eace18095ad7c692e1b0b97004294648289ca22bd7d9f5b72cefdfeda510c`  
		Last Modified: Thu, 26 Oct 2017 02:00:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf6c0abd21e31c5f21b8a2f681a8095d11616ee338796d5dc2506a8c958428b`  
		Last Modified: Thu, 26 Oct 2017 02:37:10 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58572de2b9849230b4794b0ffec165f114460b6586f8e732d7031920a408f8a`  
		Last Modified: Thu, 26 Oct 2017 02:37:14 GMT  
		Size: 14.1 MB (14134414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a280e5f7615d8afce9591249b187d92b6426d92988e75927cacc583c8983e9`  
		Last Modified: Thu, 26 Oct 2017 02:37:09 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d6e9a070bcc2aee5c0484fa7f40f5bb6a52efbcb7fa08efcf6d2b0f384890b`  
		Last Modified: Thu, 26 Oct 2017 02:37:09 GMT  
		Size: 7.3 KB (7305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409685bd9fa10ed7eb3fc818f36b2adb0c1439ce1cbecd0b4e3c70f07773765b`  
		Last Modified: Thu, 26 Oct 2017 02:37:24 GMT  
		Size: 54.3 MB (54305834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9731daa652394744f5df29874348f49592ee56a80c72960612f765404f054392`  
		Last Modified: Thu, 26 Oct 2017 02:37:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f444608ddc203026d05d2f70b18387a1313aefdea7ee0c991311d36db1c39759`  
		Last Modified: Thu, 26 Oct 2017 02:37:09 GMT  
		Size: 2.5 MB (2450383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9de5402f9673aa88a2369f6e8111708c636a2c51e5caa3b9f4bc3c635707a0`  
		Last Modified: Thu, 26 Oct 2017 02:37:25 GMT  
		Size: 75.9 MB (75907530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0861cf3744cdf8adae65afb5f9a3772eb6f4053fb9fa2ceab70c694f2c60affe`  
		Last Modified: Thu, 26 Oct 2017 02:37:08 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:63e4a42fa5dd1f81c69e0f7b6520c7e3c24fa5b5d68a944d22abb86e3cd25b9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233183766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee21a02f62876e168c75723057cdb9f14c007780c3a3fb06a4cf6ac8ffd47b90`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 07:42:50 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 21:05:58 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 25 Oct 2017 21:16:24 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 21:25:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 21:25:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 21:25:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 21:25:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 21:25:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 21:25:43 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 22:29:10 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 25 Oct 2017 22:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 22:29:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 22:29:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 22:29:44 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 25 Oct 2017 22:29:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 25 Oct 2017 22:31:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 22:31:33 GMT
ENV RAILS_ENV=production
# Wed, 25 Oct 2017 22:31:33 GMT
WORKDIR /usr/src/redmine
# Wed, 25 Oct 2017 22:31:34 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 25 Oct 2017 22:31:35 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 25 Oct 2017 22:31:40 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 25 Oct 2017 22:40:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Oct 2017 22:40:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 25 Oct 2017 22:40:39 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Wed, 25 Oct 2017 22:40:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 22:40:40 GMT
EXPOSE 3000/tcp
# Wed, 25 Oct 2017 22:40:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c54b8368203f28b7207a99333dc238caa2c9b11f0935fc10f9565f5a9fc143a`  
		Last Modified: Wed, 25 Oct 2017 22:03:50 GMT  
		Size: 24.3 MB (24255252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ecb5fa9b9801c4a21f352aa630954dee52f04996154586c5c142ab79e69943`  
		Last Modified: Wed, 25 Oct 2017 22:03:40 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39549f730d5e7f2f0c0aead41f55fd8070f60a23c02f071e45a54c986bbe2ae`  
		Last Modified: Wed, 25 Oct 2017 23:07:15 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbdd47b2da251852f50f63493e4e5ee39ce29ef5d61f41a608279fcba690f9ed`  
		Last Modified: Wed, 25 Oct 2017 23:07:19 GMT  
		Size: 14.5 MB (14462452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82ce82b5479e0b7ad469925223bf9674f67cdbf058de627e1ab573cf704f472`  
		Last Modified: Wed, 25 Oct 2017 23:07:13 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b222818f0c7808be0fcdcfb900cfd585ebb42dcb89f223dbb991cbab25c2ca2`  
		Last Modified: Wed, 25 Oct 2017 23:07:12 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d51d9e7b1dac7bc735acf6ea5d07306965ed90ccbae8a1eda645673ad1009d`  
		Last Modified: Wed, 25 Oct 2017 23:07:30 GMT  
		Size: 55.8 MB (55758866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92e9f8ef9fea9878b4c48ba43a9815ca2c68f0e567b44f133f049958591e865`  
		Last Modified: Wed, 25 Oct 2017 23:07:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44161f6f63fc7db30514b95642516ae5a55e89baaf48378c41f3c28d32287c52`  
		Last Modified: Wed, 25 Oct 2017 23:07:13 GMT  
		Size: 2.4 MB (2449726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798a805fd78d4ccd7f9e6893dce78f114775af8baf383c6ec103dbbf1a9f02ce`  
		Last Modified: Wed, 25 Oct 2017 23:07:35 GMT  
		Size: 76.5 MB (76514120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f0f90b5deab06f60c35d0133a99c115fd40e0bc55bd14222df66fec5ab7d09`  
		Last Modified: Wed, 25 Oct 2017 23:07:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:503ce1a57888a21965ed143ce0543f98d892df5b261d00d3be2e6d0c5fd27eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (245022410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6305ebb19f1e8511bc982146fef6940b0de596c37e3e82cb2dee102b10f7781b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 02:52:31 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 11 Oct 2017 02:51:07 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 02:55:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 02:55:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 02:55:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 02:55:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 02:55:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 02:55:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 02:55:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 02:55:18 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 03:38:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 03:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:40:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 03:40:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 03:41:47 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 03:41:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 03:42:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:52 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 03:42:52 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Oct 2017 10:13:11 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 17 Oct 2017 10:13:11 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 17 Oct 2017 10:13:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Oct 2017 10:16:50 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Oct 2017 10:16:51 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Oct 2017 10:16:51 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Tue, 17 Oct 2017 10:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Oct 2017 10:16:51 GMT
EXPOSE 3000/tcp
# Tue, 17 Oct 2017 10:16:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba4461fd927012d1938de69de5d27ae8add55f99c55be1098189bb35511e88f`  
		Last Modified: Wed, 11 Oct 2017 03:17:44 GMT  
		Size: 22.6 MB (22598176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69537ee4170b8771ca53c24056f571d76c3f9f5067bdf5abebcbdf87d6af9f67`  
		Last Modified: Wed, 11 Oct 2017 03:17:38 GMT  
		Size: 677.1 KB (677068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b4c7a6bc93522218f28ce745b80ac8b3c78749643dd36e278d0f910163fa8a`  
		Last Modified: Wed, 11 Oct 2017 03:17:37 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4b8387ce9858c3e99caea74b8f20b0a7051287c2426516c4c1e6d8e0b2a804`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cc3351a90dfde06e7645f199e9b1aa513e3f38a88ad1fa81fac964b0b98297`  
		Last Modified: Wed, 11 Oct 2017 04:06:38 GMT  
		Size: 14.8 MB (14817228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594f8cfe4fc80f46f20f0919fc87ca20d0a6c7767547291912baf2547483cfaa`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411aef0f934fe996af96c32325227bc6ecc569c7e5f64b845b0ce34e6ded51d3`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 8.6 KB (8561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b82e5dac927531b5efb33244e6c1c66b340cfd99ecbf4fa559717dcfbe813a`  
		Last Modified: Wed, 11 Oct 2017 04:06:52 GMT  
		Size: 60.1 MB (60116216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823bd57eff395647bfa4d441c9d17543a7f3b9869a28e3907d2100ef91cd7d76`  
		Last Modified: Wed, 11 Oct 2017 04:06:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3681a8d37029104de1f39ace51c9cbebcb7d51af3068778fd3ddbc12b7f2c93d`  
		Last Modified: Tue, 17 Oct 2017 10:26:41 GMT  
		Size: 2.4 MB (2449732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f14ca7905bce3bec524b8e2351cda56d4f55b7ead0d304885c6da28d01e305`  
		Last Modified: Tue, 17 Oct 2017 10:26:54 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea997d58c1713a64d7b4d628891cc0c713ed44e8b4c15715e998f9b1ab3d0588`  
		Last Modified: Tue, 17 Oct 2017 10:26:39 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:f6ddb2d19ef9296ee8f9bc4e5f0dfcb49bca0cb127b7e9c2dc4dfca6b2676138
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.8 MB (239848372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375f18b81a09ba64e7aa62b679035640c7ccf111e443825f41ffdda9eb5e9986`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:57:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:57:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 05:57:44 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 05:57:46 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 05:57:49 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 11 Oct 2017 00:45:39 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 26 Oct 2017 00:51:03 GMT
ENV BUNDLER_VERSION=1.15.4
# Thu, 26 Oct 2017 01:00:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 26 Oct 2017 01:00:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 01:00:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 01:00:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 01:00:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 01:00:22 GMT
CMD ["irb"]
# Thu, 26 Oct 2017 02:01:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 26 Oct 2017 02:02:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Oct 2017 02:02:57 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 02:03:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 02:03:11 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 26 Oct 2017 02:03:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 26 Oct 2017 02:08:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Oct 2017 02:08:09 GMT
ENV RAILS_ENV=production
# Thu, 26 Oct 2017 02:08:13 GMT
WORKDIR /usr/src/redmine
# Thu, 26 Oct 2017 02:08:17 GMT
ENV REDMINE_VERSION=3.4.3
# Thu, 26 Oct 2017 02:08:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Thu, 26 Oct 2017 02:08:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 26 Oct 2017 02:26:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Oct 2017 02:27:00 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 26 Oct 2017 02:27:03 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Thu, 26 Oct 2017 02:27:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:27:11 GMT
EXPOSE 3000/tcp
# Thu, 26 Oct 2017 02:27:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40a8df7f5d8f2418b2f12762edbef8533b5871c7aaca1937e8db1d1506897ef`  
		Last Modified: Tue, 10 Oct 2017 06:49:02 GMT  
		Size: 10.1 MB (10133017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68873b9b142821a59413ab21afce04b7492c1b99141626f4d3d3fca54a1ffff1`  
		Last Modified: Tue, 10 Oct 2017 06:48:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234a10679dad6800ec813519024bcd8cb1dd7ba04bcdc3a9a2df2fc98413fd46`  
		Last Modified: Thu, 26 Oct 2017 01:40:49 GMT  
		Size: 24.7 MB (24742479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b295cb0202920b948027cb71d97fdc62f130cac411672679dadb52bad142074`  
		Last Modified: Thu, 26 Oct 2017 01:40:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e6e45d6fe414b1deeaff5bb5b214027414ae099550afec6df93150840bbcbf`  
		Last Modified: Thu, 26 Oct 2017 03:04:17 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c325946e2b2ca34aead3ed293b568d19a303225683268c1e38c444f6ed450070`  
		Last Modified: Thu, 26 Oct 2017 03:04:19 GMT  
		Size: 14.7 MB (14720332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544a39f9201c20403580787988c95441673f65f0990718e212850641b2df6a`  
		Last Modified: Thu, 26 Oct 2017 03:04:14 GMT  
		Size: 469.8 KB (469849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9980eae3e511297fe5125fd441e2e0af6638910fcd7fb2dd54b9dfa46eae5c65`  
		Last Modified: Thu, 26 Oct 2017 03:04:15 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d54934aca771f7ceb98f7153a2f4980ebf2c9d9915f0ee610b8c96313985b0`  
		Last Modified: Thu, 26 Oct 2017 03:04:27 GMT  
		Size: 58.1 MB (58099186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204a1e2ff1cd9325023b484b2c324991773eef6ffae3c0dea3f3d6dd9a3e6791`  
		Last Modified: Thu, 26 Oct 2017 03:04:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77a3a90bb24ad2cb73863a8c872e18e86e25e30e9b845042fd0c4368a628edb`  
		Last Modified: Thu, 26 Oct 2017 03:04:13 GMT  
		Size: 2.5 MB (2450378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a40614ef98ee9dceee5653d56bc0f80841ebf7ff5d6f4472f2cdd910932412`  
		Last Modified: Thu, 26 Oct 2017 03:04:27 GMT  
		Size: 77.4 MB (77410364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1750e6d08b1fc4f3b62ff76804860007a05b8d2be3f541f4f0715656ab5abae0`  
		Last Modified: Thu, 26 Oct 2017 03:04:11 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:082bf7770ac57a9ec171a28fe5ef709740f78ce475cbddbacb38f8230da84dc3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243907843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7b14ef67517fca50df8b12b5d442e26edcf99fae1fdb9c8c50dc40713ef41c`
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
# Wed, 11 Oct 2017 08:38:58 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 11 Oct 2017 08:42:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 11 Oct 2017 08:42:05 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 11 Oct 2017 08:42:06 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 11 Oct 2017 08:42:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Oct 2017 08:42:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Oct 2017 08:42:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Oct 2017 08:42:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Oct 2017 08:42:07 GMT
CMD ["irb"]
# Wed, 11 Oct 2017 09:13:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 11 Oct 2017 09:13:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:13:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Oct 2017 09:13:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 11 Oct 2017 09:13:37 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 11 Oct 2017 09:13:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 11 Oct 2017 09:14:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 09:14:16 GMT
ENV RAILS_ENV=production
# Wed, 11 Oct 2017 09:14:16 GMT
WORKDIR /usr/src/redmine
# Mon, 16 Oct 2017 22:43:30 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 16 Oct 2017 22:43:30 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 16 Oct 2017 22:43:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 16 Oct 2017 22:46:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Oct 2017 22:46:21 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 16 Oct 2017 22:46:21 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 16 Oct 2017 22:46:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Oct 2017 22:46:21 GMT
EXPOSE 3000/tcp
# Mon, 16 Oct 2017 22:46:22 GMT
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
	-	`sha256:d79f10ac661107b1c17ce82ec3ed131023f4a06b79a5c119ae05b20af6953809`  
		Last Modified: Wed, 11 Oct 2017 08:54:52 GMT  
		Size: 24.0 MB (24000410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9403ce092cb47d6c70b0582624e997319e5d6c7ded38cf5909102530ea7fe598`  
		Last Modified: Wed, 11 Oct 2017 08:54:47 GMT  
		Size: 677.1 KB (677061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f7c6b4a54414f2cec58f0363ba83ee56c3c80835c29d0143a1dab7abadb694`  
		Last Modified: Wed, 11 Oct 2017 08:54:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad958ba7fdac3a70d5ea80fa8eb781082162819d7baefb66126989f9f0152352`  
		Last Modified: Wed, 11 Oct 2017 09:23:03 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40be906db369610147c71459702712ff880e62139bb63c3c004edcea5aba1f5b`  
		Last Modified: Wed, 11 Oct 2017 09:23:05 GMT  
		Size: 14.8 MB (14814991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e000eef5d6a6547cb974a9b0846308fd93d960ec10c9b10e0dd731528cf18e`  
		Last Modified: Wed, 11 Oct 2017 09:23:02 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c3194a6b46c8a69734daf7cbd0d708b8443159f7140263b1d195ed6db7db27`  
		Last Modified: Wed, 11 Oct 2017 09:23:02 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa20e1100fcf8a7f5860477328ba42eb5c8b5f66d0b7ac088a4059b6367dbcd`  
		Last Modified: Wed, 11 Oct 2017 09:23:13 GMT  
		Size: 59.1 MB (59092147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda5b253e7f91933107cdbc1f156a05d2184d6b52e945549a663d6b666804cb5`  
		Last Modified: Wed, 11 Oct 2017 09:23:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfe996cf4a965d8629a3c1bcb0dfaa9813ca66e9a47e4e9c0c02506be9c168a`  
		Last Modified: Mon, 16 Oct 2017 22:52:30 GMT  
		Size: 2.4 MB (2449723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7e403a5af91dd1e6f074f8797161e88771b4ee2a68bb77d10a997f02779088`  
		Last Modified: Mon, 16 Oct 2017 22:52:40 GMT  
		Size: 79.6 MB (79624660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d514a1c6fd8fdeaaf7d7efd805b28ea4ebe787ccd3bb9aa75dc4d913b24385`  
		Last Modified: Mon, 16 Oct 2017 22:52:29 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
