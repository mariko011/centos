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
$ docker pull redmine@sha256:bd0e9395584a2e2d3df7459e8272460f2e190c4cedc8eb4c3157f3f9d7ba315a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240370985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51cec39ddb8011613a3b46eed7cb20bc3ad6cceedf16b0a47b5fa1810695b688`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:37:07 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:37:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:37:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:37:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:38:00 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:38:04 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:38:04 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 25 Aug 2017 21:38:05 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 25 Aug 2017 21:38:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:40:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:40:41 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:40:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:40:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:40:42 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:40:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060d4c08ffdc17638eb9f32c64c447b28f74d65823bb4ee255a0700423e2f3b0`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a694fb71c8d692233e9eb452155c0fd0095f34252ebcdb072b4c6cb941d48d91`  
		Last Modified: Fri, 25 Aug 2017 21:52:00 GMT  
		Size: 8.5 KB (8488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a163113d72878fe1fe312bb68ddc26b8bf1a5fc100a44f7f1ea507986de85f`  
		Last Modified: Fri, 25 Aug 2017 21:52:14 GMT  
		Size: 59.2 MB (59236279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de7f266b1cd88b87d0f68598f09579190b1bd09589d1c936b7602146d82329d`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0526102c627b0de660c9ca6505c76c7e4ccf0dda892e92b3c1a4d66a02407952`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 2.4 MB (2447798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42d47abb412a486ef5e5ba9ded87ab417c9453b004639e4b7dd0e9c3f40286d`  
		Last Modified: Fri, 25 Aug 2017 21:52:11 GMT  
		Size: 77.0 MB (77045049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15ecd5acf0d9ccfd741762f149e2bcbd6e3c0ca7dc2ddc0ad1cb3075983bb48`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:bd0e9395584a2e2d3df7459e8272460f2e190c4cedc8eb4c3157f3f9d7ba315a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240370985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51cec39ddb8011613a3b46eed7cb20bc3ad6cceedf16b0a47b5fa1810695b688`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:37:07 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:37:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:37:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:37:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:38:00 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:38:04 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:38:04 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 25 Aug 2017 21:38:05 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 25 Aug 2017 21:38:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:40:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:40:41 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:40:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:40:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:40:42 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:40:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060d4c08ffdc17638eb9f32c64c447b28f74d65823bb4ee255a0700423e2f3b0`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a694fb71c8d692233e9eb452155c0fd0095f34252ebcdb072b4c6cb941d48d91`  
		Last Modified: Fri, 25 Aug 2017 21:52:00 GMT  
		Size: 8.5 KB (8488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a163113d72878fe1fe312bb68ddc26b8bf1a5fc100a44f7f1ea507986de85f`  
		Last Modified: Fri, 25 Aug 2017 21:52:14 GMT  
		Size: 59.2 MB (59236279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de7f266b1cd88b87d0f68598f09579190b1bd09589d1c936b7602146d82329d`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0526102c627b0de660c9ca6505c76c7e4ccf0dda892e92b3c1a4d66a02407952`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 2.4 MB (2447798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42d47abb412a486ef5e5ba9ded87ab417c9453b004639e4b7dd0e9c3f40286d`  
		Last Modified: Fri, 25 Aug 2017 21:52:11 GMT  
		Size: 77.0 MB (77045049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15ecd5acf0d9ccfd741762f149e2bcbd6e3c0ca7dc2ddc0ad1cb3075983bb48`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:bd0e9395584a2e2d3df7459e8272460f2e190c4cedc8eb4c3157f3f9d7ba315a
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240370985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51cec39ddb8011613a3b46eed7cb20bc3ad6cceedf16b0a47b5fa1810695b688`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:37:07 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:37:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:37:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:37:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:38:00 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:38:04 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:38:04 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 25 Aug 2017 21:38:05 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 25 Aug 2017 21:38:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:40:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:40:41 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:40:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:40:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:40:42 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:40:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060d4c08ffdc17638eb9f32c64c447b28f74d65823bb4ee255a0700423e2f3b0`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a694fb71c8d692233e9eb452155c0fd0095f34252ebcdb072b4c6cb941d48d91`  
		Last Modified: Fri, 25 Aug 2017 21:52:00 GMT  
		Size: 8.5 KB (8488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a163113d72878fe1fe312bb68ddc26b8bf1a5fc100a44f7f1ea507986de85f`  
		Last Modified: Fri, 25 Aug 2017 21:52:14 GMT  
		Size: 59.2 MB (59236279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de7f266b1cd88b87d0f68598f09579190b1bd09589d1c936b7602146d82329d`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0526102c627b0de660c9ca6505c76c7e4ccf0dda892e92b3c1a4d66a02407952`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 2.4 MB (2447798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42d47abb412a486ef5e5ba9ded87ab417c9453b004639e4b7dd0e9c3f40286d`  
		Last Modified: Fri, 25 Aug 2017 21:52:11 GMT  
		Size: 77.0 MB (77045049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15ecd5acf0d9ccfd741762f149e2bcbd6e3c0ca7dc2ddc0ad1cb3075983bb48`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:bd0e9395584a2e2d3df7459e8272460f2e190c4cedc8eb4c3157f3f9d7ba315a
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240370985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51cec39ddb8011613a3b46eed7cb20bc3ad6cceedf16b0a47b5fa1810695b688`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:37:07 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:37:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:37:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:37:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:38:00 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:38:04 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:38:04 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 25 Aug 2017 21:38:05 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 25 Aug 2017 21:38:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:40:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:40:41 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:40:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:40:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:40:42 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:40:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060d4c08ffdc17638eb9f32c64c447b28f74d65823bb4ee255a0700423e2f3b0`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a694fb71c8d692233e9eb452155c0fd0095f34252ebcdb072b4c6cb941d48d91`  
		Last Modified: Fri, 25 Aug 2017 21:52:00 GMT  
		Size: 8.5 KB (8488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a163113d72878fe1fe312bb68ddc26b8bf1a5fc100a44f7f1ea507986de85f`  
		Last Modified: Fri, 25 Aug 2017 21:52:14 GMT  
		Size: 59.2 MB (59236279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de7f266b1cd88b87d0f68598f09579190b1bd09589d1c936b7602146d82329d`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0526102c627b0de660c9ca6505c76c7e4ccf0dda892e92b3c1a4d66a02407952`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 2.4 MB (2447798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42d47abb412a486ef5e5ba9ded87ab417c9453b004639e4b7dd0e9c3f40286d`  
		Last Modified: Fri, 25 Aug 2017 21:52:11 GMT  
		Size: 77.0 MB (77045049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15ecd5acf0d9ccfd741762f149e2bcbd6e3c0ca7dc2ddc0ad1cb3075983bb48`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.2-passenger`

```console
$ docker pull redmine@sha256:abf0964e53e3fc13b7084b24f4ab18de5ca222c713f82f6d6381d440edb42562
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.2-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259250117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523ac4edaa252d53e5bcf3850307b0e89dfd3fffa9cc525f0adf6b149ef90d85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:37:07 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:37:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:37:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:37:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:38:00 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:38:04 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:38:04 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 25 Aug 2017 21:38:05 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 25 Aug 2017 21:38:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:40:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:40:41 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:40:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:40:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:40:42 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:40:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 21:40:55 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 21:41:21 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:41:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 21:41:22 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060d4c08ffdc17638eb9f32c64c447b28f74d65823bb4ee255a0700423e2f3b0`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a694fb71c8d692233e9eb452155c0fd0095f34252ebcdb072b4c6cb941d48d91`  
		Last Modified: Fri, 25 Aug 2017 21:52:00 GMT  
		Size: 8.5 KB (8488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a163113d72878fe1fe312bb68ddc26b8bf1a5fc100a44f7f1ea507986de85f`  
		Last Modified: Fri, 25 Aug 2017 21:52:14 GMT  
		Size: 59.2 MB (59236279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de7f266b1cd88b87d0f68598f09579190b1bd09589d1c936b7602146d82329d`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0526102c627b0de660c9ca6505c76c7e4ccf0dda892e92b3c1a4d66a02407952`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 2.4 MB (2447798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42d47abb412a486ef5e5ba9ded87ab417c9453b004639e4b7dd0e9c3f40286d`  
		Last Modified: Fri, 25 Aug 2017 21:52:11 GMT  
		Size: 77.0 MB (77045049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15ecd5acf0d9ccfd741762f149e2bcbd6e3c0ca7dc2ddc0ad1cb3075983bb48`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0fcc31be80b364e6bdf5d96173707e52cb565630714c83e2965c74b46c4db6`  
		Last Modified: Fri, 25 Aug 2017 21:52:48 GMT  
		Size: 14.6 MB (14605233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5791a4433412b1154b939762b3da1437b03cbcdf75d5689318ee6e3199acb1`  
		Last Modified: Fri, 25 Aug 2017 21:52:47 GMT  
		Size: 4.3 MB (4273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:abf0964e53e3fc13b7084b24f4ab18de5ca222c713f82f6d6381d440edb42562
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259250117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523ac4edaa252d53e5bcf3850307b0e89dfd3fffa9cc525f0adf6b149ef90d85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:37:07 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:37:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:37:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:37:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:38:00 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:38:04 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:38:04 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 25 Aug 2017 21:38:05 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 25 Aug 2017 21:38:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:40:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:40:41 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:40:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:40:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:40:42 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:40:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 21:40:55 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 21:41:21 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:41:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 21:41:22 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060d4c08ffdc17638eb9f32c64c447b28f74d65823bb4ee255a0700423e2f3b0`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a694fb71c8d692233e9eb452155c0fd0095f34252ebcdb072b4c6cb941d48d91`  
		Last Modified: Fri, 25 Aug 2017 21:52:00 GMT  
		Size: 8.5 KB (8488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a163113d72878fe1fe312bb68ddc26b8bf1a5fc100a44f7f1ea507986de85f`  
		Last Modified: Fri, 25 Aug 2017 21:52:14 GMT  
		Size: 59.2 MB (59236279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de7f266b1cd88b87d0f68598f09579190b1bd09589d1c936b7602146d82329d`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0526102c627b0de660c9ca6505c76c7e4ccf0dda892e92b3c1a4d66a02407952`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 2.4 MB (2447798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42d47abb412a486ef5e5ba9ded87ab417c9453b004639e4b7dd0e9c3f40286d`  
		Last Modified: Fri, 25 Aug 2017 21:52:11 GMT  
		Size: 77.0 MB (77045049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15ecd5acf0d9ccfd741762f149e2bcbd6e3c0ca7dc2ddc0ad1cb3075983bb48`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0fcc31be80b364e6bdf5d96173707e52cb565630714c83e2965c74b46c4db6`  
		Last Modified: Fri, 25 Aug 2017 21:52:48 GMT  
		Size: 14.6 MB (14605233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5791a4433412b1154b939762b3da1437b03cbcdf75d5689318ee6e3199acb1`  
		Last Modified: Fri, 25 Aug 2017 21:52:47 GMT  
		Size: 4.3 MB (4273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:abf0964e53e3fc13b7084b24f4ab18de5ca222c713f82f6d6381d440edb42562
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259250117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523ac4edaa252d53e5bcf3850307b0e89dfd3fffa9cc525f0adf6b149ef90d85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:37:07 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:37:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:37:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:37:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:38:00 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:38:04 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:38:04 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 25 Aug 2017 21:38:05 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 25 Aug 2017 21:38:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:40:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:40:41 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:40:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:40:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:40:42 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:40:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 21:40:55 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 21:41:21 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:41:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 21:41:22 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060d4c08ffdc17638eb9f32c64c447b28f74d65823bb4ee255a0700423e2f3b0`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a694fb71c8d692233e9eb452155c0fd0095f34252ebcdb072b4c6cb941d48d91`  
		Last Modified: Fri, 25 Aug 2017 21:52:00 GMT  
		Size: 8.5 KB (8488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a163113d72878fe1fe312bb68ddc26b8bf1a5fc100a44f7f1ea507986de85f`  
		Last Modified: Fri, 25 Aug 2017 21:52:14 GMT  
		Size: 59.2 MB (59236279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de7f266b1cd88b87d0f68598f09579190b1bd09589d1c936b7602146d82329d`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0526102c627b0de660c9ca6505c76c7e4ccf0dda892e92b3c1a4d66a02407952`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 2.4 MB (2447798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42d47abb412a486ef5e5ba9ded87ab417c9453b004639e4b7dd0e9c3f40286d`  
		Last Modified: Fri, 25 Aug 2017 21:52:11 GMT  
		Size: 77.0 MB (77045049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15ecd5acf0d9ccfd741762f149e2bcbd6e3c0ca7dc2ddc0ad1cb3075983bb48`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0fcc31be80b364e6bdf5d96173707e52cb565630714c83e2965c74b46c4db6`  
		Last Modified: Fri, 25 Aug 2017 21:52:48 GMT  
		Size: 14.6 MB (14605233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5791a4433412b1154b939762b3da1437b03cbcdf75d5689318ee6e3199acb1`  
		Last Modified: Fri, 25 Aug 2017 21:52:47 GMT  
		Size: 4.3 MB (4273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:abf0964e53e3fc13b7084b24f4ab18de5ca222c713f82f6d6381d440edb42562
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259250117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523ac4edaa252d53e5bcf3850307b0e89dfd3fffa9cc525f0adf6b149ef90d85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:49:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:52 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:57 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:04:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:05:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:37:07 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:37:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:37:14 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:37:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:38:00 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:38:04 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:38:04 GMT
ENV REDMINE_VERSION=3.4.2
# Fri, 25 Aug 2017 21:38:05 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Fri, 25 Aug 2017 21:38:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:40:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:40:41 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:40:41 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:40:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:40:42 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:40:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 21:40:55 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 21:41:21 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:41:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 21:41:22 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c803d8289768a7fecca6fd05babc13d0ccba5c0acbda475158068dd54e0c6399`  
		Last Modified: Mon, 07 Aug 2017 23:01:24 GMT  
		Size: 23.3 MB (23264784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878f9fb6e0b848a9a8cece4ed59e19d140dde8af0603c216601e8773cd67234`  
		Last Modified: Tue, 22 Aug 2017 17:54:53 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e83fff10e793d0a36c441e505bfaf7d4919b7747f373690ecb9ae735353d2a3`  
		Last Modified: Tue, 22 Aug 2017 17:54:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc76c45113eec39faa5aede40df29f7ba97a28aec8f5060c64ba6f25f923f9`  
		Last Modified: Tue, 22 Aug 2017 23:20:29 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3434db1db228f8976ace2c8289976364283d5e3685b61ae936ea3edf7270611`  
		Last Modified: Tue, 22 Aug 2017 23:20:31 GMT  
		Size: 14.4 MB (14422181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060d4c08ffdc17638eb9f32c64c447b28f74d65823bb4ee255a0700423e2f3b0`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a694fb71c8d692233e9eb452155c0fd0095f34252ebcdb072b4c6cb941d48d91`  
		Last Modified: Fri, 25 Aug 2017 21:52:00 GMT  
		Size: 8.5 KB (8488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a163113d72878fe1fe312bb68ddc26b8bf1a5fc100a44f7f1ea507986de85f`  
		Last Modified: Fri, 25 Aug 2017 21:52:14 GMT  
		Size: 59.2 MB (59236279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de7f266b1cd88b87d0f68598f09579190b1bd09589d1c936b7602146d82329d`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0526102c627b0de660c9ca6505c76c7e4ccf0dda892e92b3c1a4d66a02407952`  
		Last Modified: Fri, 25 Aug 2017 21:52:01 GMT  
		Size: 2.4 MB (2447798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42d47abb412a486ef5e5ba9ded87ab417c9453b004639e4b7dd0e9c3f40286d`  
		Last Modified: Fri, 25 Aug 2017 21:52:11 GMT  
		Size: 77.0 MB (77045049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15ecd5acf0d9ccfd741762f149e2bcbd6e3c0ca7dc2ddc0ad1cb3075983bb48`  
		Last Modified: Fri, 25 Aug 2017 21:51:59 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0fcc31be80b364e6bdf5d96173707e52cb565630714c83e2965c74b46c4db6`  
		Last Modified: Fri, 25 Aug 2017 21:52:48 GMT  
		Size: 14.6 MB (14605233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5791a4433412b1154b939762b3da1437b03cbcdf75d5689318ee6e3199acb1`  
		Last Modified: Fri, 25 Aug 2017 21:52:47 GMT  
		Size: 4.3 MB (4273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4`

```console
$ docker pull redmine@sha256:47c791297e593e94e9c122e79ba3673c6d6e9c9ab6586c874006695ab8c9e4fe
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251623297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae80391eb052369eaa9016069fe56f640732cee8fa86e14a1564401cbb88bae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:41:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:41:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:41:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:42:26 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:42:26 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:42:26 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 25 Aug 2017 21:42:27 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 25 Aug 2017 21:42:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:44:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:44:57 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:44:58 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:44:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:44:58 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:44:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cdddb19d4279325428e25b1fcfbcfac1f9dc0f6ffb4eefd8379dad29e7bcf9`  
		Last Modified: Fri, 25 Aug 2017 21:53:21 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790f935e1cc5958fd789e27b2976c76c96d763050f5b74c01b3cbac2c46b0af3`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39605a11a369f942d9b081133d8604e13821677b32a568800ce4370f6d9dc5df`  
		Last Modified: Fri, 25 Aug 2017 21:53:30 GMT  
		Size: 59.2 MB (59237359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63314c33f00e6f546e61eff8339fc659c053601b57c2ab01833d2306291f7533`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1746986308e96f7a7bc725cb97b4fd17df8eb04ec2c7ede357f9d2b64636f2`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 2.4 MB (2390085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887f1917540869fdc30e2aaa54c5c69869bc10d4c3117edadb4862db0b89f4f0`  
		Last Modified: Fri, 25 Aug 2017 21:53:29 GMT  
		Size: 77.7 MB (77722240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cf000a5ff182db3556b3cfce5d9cf521775f9117ce5dd193c579dca79b7852`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:47c791297e593e94e9c122e79ba3673c6d6e9c9ab6586c874006695ab8c9e4fe
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251623297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae80391eb052369eaa9016069fe56f640732cee8fa86e14a1564401cbb88bae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:41:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:41:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:41:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:42:26 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:42:26 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:42:26 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 25 Aug 2017 21:42:27 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 25 Aug 2017 21:42:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:44:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:44:57 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:44:58 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:44:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:44:58 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:44:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cdddb19d4279325428e25b1fcfbcfac1f9dc0f6ffb4eefd8379dad29e7bcf9`  
		Last Modified: Fri, 25 Aug 2017 21:53:21 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790f935e1cc5958fd789e27b2976c76c96d763050f5b74c01b3cbac2c46b0af3`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39605a11a369f942d9b081133d8604e13821677b32a568800ce4370f6d9dc5df`  
		Last Modified: Fri, 25 Aug 2017 21:53:30 GMT  
		Size: 59.2 MB (59237359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63314c33f00e6f546e61eff8339fc659c053601b57c2ab01833d2306291f7533`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1746986308e96f7a7bc725cb97b4fd17df8eb04ec2c7ede357f9d2b64636f2`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 2.4 MB (2390085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887f1917540869fdc30e2aaa54c5c69869bc10d4c3117edadb4862db0b89f4f0`  
		Last Modified: Fri, 25 Aug 2017 21:53:29 GMT  
		Size: 77.7 MB (77722240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cf000a5ff182db3556b3cfce5d9cf521775f9117ce5dd193c579dca79b7852`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4-passenger`

```console
$ docker pull redmine@sha256:d54fa41beedec46279f2dfba9808c79bc7522268bbc93ce3509a529808004911
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270502448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c00f121d96f72a9e60bfbe3c3bc189a03ec985d315fa047728b9a276df100f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:41:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:41:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:41:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:42:26 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:42:26 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:42:26 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 25 Aug 2017 21:42:27 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 25 Aug 2017 21:42:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:44:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:44:57 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:44:58 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:44:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:44:58 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:44:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 21:45:03 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 21:45:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:45:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 21:45:30 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cdddb19d4279325428e25b1fcfbcfac1f9dc0f6ffb4eefd8379dad29e7bcf9`  
		Last Modified: Fri, 25 Aug 2017 21:53:21 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790f935e1cc5958fd789e27b2976c76c96d763050f5b74c01b3cbac2c46b0af3`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39605a11a369f942d9b081133d8604e13821677b32a568800ce4370f6d9dc5df`  
		Last Modified: Fri, 25 Aug 2017 21:53:30 GMT  
		Size: 59.2 MB (59237359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63314c33f00e6f546e61eff8339fc659c053601b57c2ab01833d2306291f7533`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1746986308e96f7a7bc725cb97b4fd17df8eb04ec2c7ede357f9d2b64636f2`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 2.4 MB (2390085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887f1917540869fdc30e2aaa54c5c69869bc10d4c3117edadb4862db0b89f4f0`  
		Last Modified: Fri, 25 Aug 2017 21:53:29 GMT  
		Size: 77.7 MB (77722240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cf000a5ff182db3556b3cfce5d9cf521775f9117ce5dd193c579dca79b7852`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0992686bf53edac0f5d813d91faf8e5a4a80218d5dd53b9b245d82ad4de226ce`  
		Last Modified: Fri, 25 Aug 2017 21:53:51 GMT  
		Size: 14.6 MB (14605245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a5b087f82788793d3b2340a7e496028b37a5a2a64ab9d0054d05a65283de70`  
		Last Modified: Fri, 25 Aug 2017 21:53:49 GMT  
		Size: 4.3 MB (4273906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:d54fa41beedec46279f2dfba9808c79bc7522268bbc93ce3509a529808004911
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270502448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c00f121d96f72a9e60bfbe3c3bc189a03ec985d315fa047728b9a276df100f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:41:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:41:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:41:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:42:26 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:42:26 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:42:26 GMT
ENV REDMINE_VERSION=3.3.4
# Fri, 25 Aug 2017 21:42:27 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Fri, 25 Aug 2017 21:42:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:44:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:44:57 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:44:58 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:44:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:44:58 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:44:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 21:45:03 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 21:45:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:45:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 21:45:30 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cdddb19d4279325428e25b1fcfbcfac1f9dc0f6ffb4eefd8379dad29e7bcf9`  
		Last Modified: Fri, 25 Aug 2017 21:53:21 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790f935e1cc5958fd789e27b2976c76c96d763050f5b74c01b3cbac2c46b0af3`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39605a11a369f942d9b081133d8604e13821677b32a568800ce4370f6d9dc5df`  
		Last Modified: Fri, 25 Aug 2017 21:53:30 GMT  
		Size: 59.2 MB (59237359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63314c33f00e6f546e61eff8339fc659c053601b57c2ab01833d2306291f7533`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1746986308e96f7a7bc725cb97b4fd17df8eb04ec2c7ede357f9d2b64636f2`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 2.4 MB (2390085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887f1917540869fdc30e2aaa54c5c69869bc10d4c3117edadb4862db0b89f4f0`  
		Last Modified: Fri, 25 Aug 2017 21:53:29 GMT  
		Size: 77.7 MB (77722240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cf000a5ff182db3556b3cfce5d9cf521775f9117ce5dd193c579dca79b7852`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0992686bf53edac0f5d813d91faf8e5a4a80218d5dd53b9b245d82ad4de226ce`  
		Last Modified: Fri, 25 Aug 2017 21:53:51 GMT  
		Size: 14.6 MB (14605245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a5b087f82788793d3b2340a7e496028b37a5a2a64ab9d0054d05a65283de70`  
		Last Modified: Fri, 25 Aug 2017 21:53:49 GMT  
		Size: 4.3 MB (4273906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7`

```console
$ docker pull redmine@sha256:c8ea7725aa2fd2bafe6ad0c4929c76e5eb48c6328f0ab7a175fecf4313196d90
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251580059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed49d2f25b353d25b0a1250cd9ca4d90c7de4a55fc6648e24dc46f2a33ef8fb1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:41:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:41:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:41:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:42:26 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:42:26 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:45:34 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 25 Aug 2017 21:45:35 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 25 Aug 2017 21:45:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:47:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:48:00 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:48:00 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:48:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:48:01 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:48:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cdddb19d4279325428e25b1fcfbcfac1f9dc0f6ffb4eefd8379dad29e7bcf9`  
		Last Modified: Fri, 25 Aug 2017 21:53:21 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790f935e1cc5958fd789e27b2976c76c96d763050f5b74c01b3cbac2c46b0af3`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39605a11a369f942d9b081133d8604e13821677b32a568800ce4370f6d9dc5df`  
		Last Modified: Fri, 25 Aug 2017 21:53:30 GMT  
		Size: 59.2 MB (59237359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63314c33f00e6f546e61eff8339fc659c053601b57c2ab01833d2306291f7533`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fcfd1b48345fd4345e7fdd9d279a27e477b237a6a41c9a77f914d648f79c44`  
		Last Modified: Fri, 25 Aug 2017 21:54:10 GMT  
		Size: 2.3 MB (2346949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ecb17340458359573a7759bd75dae80b6417d807a51507d382f56b60eeaf10`  
		Last Modified: Fri, 25 Aug 2017 21:54:20 GMT  
		Size: 77.7 MB (77722138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d9683246d75d1c20333a241a5312be138bf7b2d91489e36e35a26ffbc31c64`  
		Last Modified: Fri, 25 Aug 2017 21:54:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:c8ea7725aa2fd2bafe6ad0c4929c76e5eb48c6328f0ab7a175fecf4313196d90
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251580059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed49d2f25b353d25b0a1250cd9ca4d90c7de4a55fc6648e24dc46f2a33ef8fb1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:41:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:41:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:41:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:42:26 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:42:26 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:45:34 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 25 Aug 2017 21:45:35 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 25 Aug 2017 21:45:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:47:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:48:00 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:48:00 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:48:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:48:01 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:48:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cdddb19d4279325428e25b1fcfbcfac1f9dc0f6ffb4eefd8379dad29e7bcf9`  
		Last Modified: Fri, 25 Aug 2017 21:53:21 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790f935e1cc5958fd789e27b2976c76c96d763050f5b74c01b3cbac2c46b0af3`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39605a11a369f942d9b081133d8604e13821677b32a568800ce4370f6d9dc5df`  
		Last Modified: Fri, 25 Aug 2017 21:53:30 GMT  
		Size: 59.2 MB (59237359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63314c33f00e6f546e61eff8339fc659c053601b57c2ab01833d2306291f7533`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fcfd1b48345fd4345e7fdd9d279a27e477b237a6a41c9a77f914d648f79c44`  
		Last Modified: Fri, 25 Aug 2017 21:54:10 GMT  
		Size: 2.3 MB (2346949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ecb17340458359573a7759bd75dae80b6417d807a51507d382f56b60eeaf10`  
		Last Modified: Fri, 25 Aug 2017 21:54:20 GMT  
		Size: 77.7 MB (77722138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d9683246d75d1c20333a241a5312be138bf7b2d91489e36e35a26ffbc31c64`  
		Last Modified: Fri, 25 Aug 2017 21:54:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7-passenger`

```console
$ docker pull redmine@sha256:7c07d5309657065374bfabb5711a38b8bfac1135a92db1a00091bb40c697fb45
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270459227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0809ec07ecd1a87de53b60db7ad43c597c01971ec36126dccfcf510eb28a9c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:41:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:41:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:41:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:42:26 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:42:26 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:45:34 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 25 Aug 2017 21:45:35 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 25 Aug 2017 21:45:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:47:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:48:00 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:48:00 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:48:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:48:01 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:48:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 21:48:06 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 21:48:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:48:32 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 21:48:32 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cdddb19d4279325428e25b1fcfbcfac1f9dc0f6ffb4eefd8379dad29e7bcf9`  
		Last Modified: Fri, 25 Aug 2017 21:53:21 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790f935e1cc5958fd789e27b2976c76c96d763050f5b74c01b3cbac2c46b0af3`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39605a11a369f942d9b081133d8604e13821677b32a568800ce4370f6d9dc5df`  
		Last Modified: Fri, 25 Aug 2017 21:53:30 GMT  
		Size: 59.2 MB (59237359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63314c33f00e6f546e61eff8339fc659c053601b57c2ab01833d2306291f7533`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fcfd1b48345fd4345e7fdd9d279a27e477b237a6a41c9a77f914d648f79c44`  
		Last Modified: Fri, 25 Aug 2017 21:54:10 GMT  
		Size: 2.3 MB (2346949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ecb17340458359573a7759bd75dae80b6417d807a51507d382f56b60eeaf10`  
		Last Modified: Fri, 25 Aug 2017 21:54:20 GMT  
		Size: 77.7 MB (77722138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d9683246d75d1c20333a241a5312be138bf7b2d91489e36e35a26ffbc31c64`  
		Last Modified: Fri, 25 Aug 2017 21:54:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3127b75b46cfdfba996949d7e18fe02f5a84e0a2a3f5323618e50ec2b01118a1`  
		Last Modified: Fri, 25 Aug 2017 21:54:41 GMT  
		Size: 14.6 MB (14605268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5c68ac0ace8155c68a39e87d3c460e2f36fd8ac7b57afa95c667313704549d`  
		Last Modified: Fri, 25 Aug 2017 21:54:39 GMT  
		Size: 4.3 MB (4273900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:7c07d5309657065374bfabb5711a38b8bfac1135a92db1a00091bb40c697fb45
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270459227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0809ec07ecd1a87de53b60db7ad43c597c01971ec36126dccfcf510eb28a9c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:41:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:41:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:41:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:42:26 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:42:26 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:45:34 GMT
ENV REDMINE_VERSION=3.2.7
# Fri, 25 Aug 2017 21:45:35 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Fri, 25 Aug 2017 21:45:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:47:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:48:00 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:48:00 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:48:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:48:01 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:48:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 21:48:06 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 21:48:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:48:32 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 21:48:32 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cdddb19d4279325428e25b1fcfbcfac1f9dc0f6ffb4eefd8379dad29e7bcf9`  
		Last Modified: Fri, 25 Aug 2017 21:53:21 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790f935e1cc5958fd789e27b2976c76c96d763050f5b74c01b3cbac2c46b0af3`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39605a11a369f942d9b081133d8604e13821677b32a568800ce4370f6d9dc5df`  
		Last Modified: Fri, 25 Aug 2017 21:53:30 GMT  
		Size: 59.2 MB (59237359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63314c33f00e6f546e61eff8339fc659c053601b57c2ab01833d2306291f7533`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fcfd1b48345fd4345e7fdd9d279a27e477b237a6a41c9a77f914d648f79c44`  
		Last Modified: Fri, 25 Aug 2017 21:54:10 GMT  
		Size: 2.3 MB (2346949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ecb17340458359573a7759bd75dae80b6417d807a51507d382f56b60eeaf10`  
		Last Modified: Fri, 25 Aug 2017 21:54:20 GMT  
		Size: 77.7 MB (77722138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d9683246d75d1c20333a241a5312be138bf7b2d91489e36e35a26ffbc31c64`  
		Last Modified: Fri, 25 Aug 2017 21:54:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3127b75b46cfdfba996949d7e18fe02f5a84e0a2a3f5323618e50ec2b01118a1`  
		Last Modified: Fri, 25 Aug 2017 21:54:41 GMT  
		Size: 14.6 MB (14605268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5c68ac0ace8155c68a39e87d3c460e2f36fd8ac7b57afa95c667313704549d`  
		Last Modified: Fri, 25 Aug 2017 21:54:39 GMT  
		Size: 4.3 MB (4273900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:dab6b546b89d897976b45047a3261833ec7059717cbcd6ce42cdf60303a763cb
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.0 MB (241985988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f6bf4627b2a6a225571b64c669663b96e82dff9be82a4ebae2dc34ed6aab29`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:41:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:41:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:41:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:42:26 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:42:26 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:48:37 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 25 Aug 2017 21:48:37 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 25 Aug 2017 21:48:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:51:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:51:17 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:51:17 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:51:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:51:18 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:51:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cdddb19d4279325428e25b1fcfbcfac1f9dc0f6ffb4eefd8379dad29e7bcf9`  
		Last Modified: Fri, 25 Aug 2017 21:53:21 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790f935e1cc5958fd789e27b2976c76c96d763050f5b74c01b3cbac2c46b0af3`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39605a11a369f942d9b081133d8604e13821677b32a568800ce4370f6d9dc5df`  
		Last Modified: Fri, 25 Aug 2017 21:53:30 GMT  
		Size: 59.2 MB (59237359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63314c33f00e6f546e61eff8339fc659c053601b57c2ab01833d2306291f7533`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cb7cf0b05f1ee84679f06eb85574e9fbda1c5088b19de37a87ddca64880e28`  
		Last Modified: Fri, 25 Aug 2017 21:54:59 GMT  
		Size: 2.3 MB (2281374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d917395d46fd5b4e5c5c38d0cca38744335c96ed183c89f6e2482cc44b6c222`  
		Last Modified: Fri, 25 Aug 2017 21:55:07 GMT  
		Size: 68.2 MB (68193642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5f44b44414e220d1f123da1a986b70375fd37e11b98ed7af57130f5f2bb8e`  
		Last Modified: Fri, 25 Aug 2017 21:54:58 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:dab6b546b89d897976b45047a3261833ec7059717cbcd6ce42cdf60303a763cb
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.0 MB (241985988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f6bf4627b2a6a225571b64c669663b96e82dff9be82a4ebae2dc34ed6aab29`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:41:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:41:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:41:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:42:26 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:42:26 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:48:37 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 25 Aug 2017 21:48:37 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 25 Aug 2017 21:48:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:51:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:51:17 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:51:17 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:51:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:51:18 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:51:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cdddb19d4279325428e25b1fcfbcfac1f9dc0f6ffb4eefd8379dad29e7bcf9`  
		Last Modified: Fri, 25 Aug 2017 21:53:21 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790f935e1cc5958fd789e27b2976c76c96d763050f5b74c01b3cbac2c46b0af3`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39605a11a369f942d9b081133d8604e13821677b32a568800ce4370f6d9dc5df`  
		Last Modified: Fri, 25 Aug 2017 21:53:30 GMT  
		Size: 59.2 MB (59237359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63314c33f00e6f546e61eff8339fc659c053601b57c2ab01833d2306291f7533`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cb7cf0b05f1ee84679f06eb85574e9fbda1c5088b19de37a87ddca64880e28`  
		Last Modified: Fri, 25 Aug 2017 21:54:59 GMT  
		Size: 2.3 MB (2281374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d917395d46fd5b4e5c5c38d0cca38744335c96ed183c89f6e2482cc44b6c222`  
		Last Modified: Fri, 25 Aug 2017 21:55:07 GMT  
		Size: 68.2 MB (68193642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5f44b44414e220d1f123da1a986b70375fd37e11b98ed7af57130f5f2bb8e`  
		Last Modified: Fri, 25 Aug 2017 21:54:58 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:bba8eef985c00f4d628952f81bdb32995dae601ffc1cc23f215822bd0d9f76a1
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.9 MB (260865205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc80073f35ed45d6e1429a492f389ec5f6a169449edaa359f0745b0952ff91c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:41:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:41:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:41:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:42:26 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:42:26 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:48:37 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 25 Aug 2017 21:48:37 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 25 Aug 2017 21:48:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:51:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:51:17 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:51:17 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:51:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:51:18 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:51:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 21:51:23 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 21:51:49 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:51:50 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 21:51:50 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cdddb19d4279325428e25b1fcfbcfac1f9dc0f6ffb4eefd8379dad29e7bcf9`  
		Last Modified: Fri, 25 Aug 2017 21:53:21 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790f935e1cc5958fd789e27b2976c76c96d763050f5b74c01b3cbac2c46b0af3`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39605a11a369f942d9b081133d8604e13821677b32a568800ce4370f6d9dc5df`  
		Last Modified: Fri, 25 Aug 2017 21:53:30 GMT  
		Size: 59.2 MB (59237359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63314c33f00e6f546e61eff8339fc659c053601b57c2ab01833d2306291f7533`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cb7cf0b05f1ee84679f06eb85574e9fbda1c5088b19de37a87ddca64880e28`  
		Last Modified: Fri, 25 Aug 2017 21:54:59 GMT  
		Size: 2.3 MB (2281374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d917395d46fd5b4e5c5c38d0cca38744335c96ed183c89f6e2482cc44b6c222`  
		Last Modified: Fri, 25 Aug 2017 21:55:07 GMT  
		Size: 68.2 MB (68193642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5f44b44414e220d1f123da1a986b70375fd37e11b98ed7af57130f5f2bb8e`  
		Last Modified: Fri, 25 Aug 2017 21:54:58 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51086564b8d8e7cb4b9ed2b796efc41d0af1ff169d372fc5d48770b2b00a47f6`  
		Last Modified: Fri, 25 Aug 2017 21:55:29 GMT  
		Size: 14.6 MB (14605311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561908680be83ce08714443b9a2def8c95030b1604f7158c655143e8aaede402`  
		Last Modified: Fri, 25 Aug 2017 21:55:27 GMT  
		Size: 4.3 MB (4273906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:bba8eef985c00f4d628952f81bdb32995dae601ffc1cc23f215822bd0d9f76a1
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.9 MB (260865205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc80073f35ed45d6e1429a492f389ec5f6a169449edaa359f0745b0952ff91c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:58:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:52:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:52:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:52:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:52:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:52:20 GMT
CMD ["irb"]
# Tue, 22 Aug 2017 23:09:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 22 Aug 2017 23:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:41:35 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Aug 2017 21:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 Aug 2017 21:41:41 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 Aug 2017 21:41:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 Aug 2017 21:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:42:26 GMT
ENV RAILS_ENV=production
# Fri, 25 Aug 2017 21:42:26 GMT
WORKDIR /usr/src/redmine
# Fri, 25 Aug 2017 21:48:37 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 25 Aug 2017 21:48:37 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 25 Aug 2017 21:48:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 25 Aug 2017 21:51:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:51:17 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 25 Aug 2017 21:51:17 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Fri, 25 Aug 2017 21:51:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Aug 2017 21:51:18 GMT
EXPOSE 3000/tcp
# Fri, 25 Aug 2017 21:51:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 25 Aug 2017 21:51:23 GMT
ENV PASSENGER_VERSION=5.1.8
# Fri, 25 Aug 2017 21:51:49 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Aug 2017 21:51:50 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 25 Aug 2017 21:51:50 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eee0633a817453d90321ebca4828824476b808195e68b493c4355d54a8b900d`  
		Last Modified: Mon, 07 Aug 2017 23:06:09 GMT  
		Size: 33.9 MB (33896462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344dfdd14e29e5befc4a7e4f8a7cbd1ab96d0866b7a8a5bba71d10ecf4970ee6`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 675.3 KB (675335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553fe80bc42ee5ddf943fcf40343d49271c7932b7acc52699b61697ee7f4fae`  
		Last Modified: Tue, 22 Aug 2017 18:00:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e1e244b5cabfd317e7007fb5f7bda721092e3585a1de423ad3a4d9af83b33f`  
		Last Modified: Tue, 22 Aug 2017 23:21:51 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bbb90d2f0c909cbe492fa559fcd55cbb97959a9ffe3c2bcec36aabcf18fa25`  
		Last Modified: Tue, 22 Aug 2017 23:21:54 GMT  
		Size: 14.4 MB (14422234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cdddb19d4279325428e25b1fcfbcfac1f9dc0f6ffb4eefd8379dad29e7bcf9`  
		Last Modified: Fri, 25 Aug 2017 21:53:21 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790f935e1cc5958fd789e27b2976c76c96d763050f5b74c01b3cbac2c46b0af3`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39605a11a369f942d9b081133d8604e13821677b32a568800ce4370f6d9dc5df`  
		Last Modified: Fri, 25 Aug 2017 21:53:30 GMT  
		Size: 59.2 MB (59237359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63314c33f00e6f546e61eff8339fc659c053601b57c2ab01833d2306291f7533`  
		Last Modified: Fri, 25 Aug 2017 21:53:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cb7cf0b05f1ee84679f06eb85574e9fbda1c5088b19de37a87ddca64880e28`  
		Last Modified: Fri, 25 Aug 2017 21:54:59 GMT  
		Size: 2.3 MB (2281374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d917395d46fd5b4e5c5c38d0cca38744335c96ed183c89f6e2482cc44b6c222`  
		Last Modified: Fri, 25 Aug 2017 21:55:07 GMT  
		Size: 68.2 MB (68193642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5f44b44414e220d1f123da1a986b70375fd37e11b98ed7af57130f5f2bb8e`  
		Last Modified: Fri, 25 Aug 2017 21:54:58 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51086564b8d8e7cb4b9ed2b796efc41d0af1ff169d372fc5d48770b2b00a47f6`  
		Last Modified: Fri, 25 Aug 2017 21:55:29 GMT  
		Size: 14.6 MB (14605311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561908680be83ce08714443b9a2def8c95030b1604f7158c655143e8aaede402`  
		Last Modified: Fri, 25 Aug 2017 21:55:27 GMT  
		Size: 4.3 MB (4273906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
