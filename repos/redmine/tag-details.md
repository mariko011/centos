<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3.1.7`](#redmine317)
-	[`redmine:3.1`](#redmine31)
-	[`redmine:3.1.7-passenger`](#redmine317-passenger)
-	[`redmine:3.1-passenger`](#redmine31-passenger)
-	[`redmine:3.2.6`](#redmine326)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.6-passenger`](#redmine326-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3.3`](#redmine333)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3`](#redmine3)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:3.3.3-passenger`](#redmine333-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:5ec04f4b15ac780e27d89b5aa17d24255d52319390f707b4fc9ac9c071fc82ca
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241512798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a004f023cd2b935a052b5de5d2da72b8a22fa9d60f4612c606b2cb8357d797c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:28:40 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 14 Jun 2017 02:29:04 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 14 Jun 2017 02:29:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:32:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:32:19 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:03:55 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:03:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:03:57 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:03:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5e651d20e30e96cc7d2c3c692a2a2d4c4a2b6fda09dc2b6644460f93b716b8`  
		Last Modified: Wed, 14 Jun 2017 21:34:02 GMT  
		Size: 2.3 MB (2281372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd51767d37a6807c7a5e4e9d59e31b46313a6151b4d881604db424dae596db23`  
		Last Modified: Wed, 14 Jun 2017 21:34:34 GMT  
		Size: 67.5 MB (67522576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92705826f9b6ce2fbc7893291ec582ec8948e5594caa1d34ca38d911c405eb35`  
		Last Modified: Thu, 22 Jun 2017 21:07:51 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:5ec04f4b15ac780e27d89b5aa17d24255d52319390f707b4fc9ac9c071fc82ca
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241512798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a004f023cd2b935a052b5de5d2da72b8a22fa9d60f4612c606b2cb8357d797c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:28:40 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 14 Jun 2017 02:29:04 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 14 Jun 2017 02:29:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:32:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:32:19 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:03:55 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:03:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:03:57 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:03:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5e651d20e30e96cc7d2c3c692a2a2d4c4a2b6fda09dc2b6644460f93b716b8`  
		Last Modified: Wed, 14 Jun 2017 21:34:02 GMT  
		Size: 2.3 MB (2281372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd51767d37a6807c7a5e4e9d59e31b46313a6151b4d881604db424dae596db23`  
		Last Modified: Wed, 14 Jun 2017 21:34:34 GMT  
		Size: 67.5 MB (67522576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92705826f9b6ce2fbc7893291ec582ec8948e5594caa1d34ca38d911c405eb35`  
		Last Modified: Thu, 22 Jun 2017 21:07:51 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:9077f4ea68b38cf9e2758a35a6985978525d563c458013d16fe5c1bdc5d0cf16
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 MB (260254151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4fb018325a156eea640c03685bfc42c4e8c7c834c2d691f9300a77b8511e1c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:28:40 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 14 Jun 2017 02:29:04 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 14 Jun 2017 02:29:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:32:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:32:19 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:03:55 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:03:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:03:57 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:03:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 22 Jun 2017 21:04:23 GMT
ENV PASSENGER_VERSION=5.1.5
# Thu, 22 Jun 2017 21:04:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 21:04:48 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 22 Jun 2017 21:04:48 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5e651d20e30e96cc7d2c3c692a2a2d4c4a2b6fda09dc2b6644460f93b716b8`  
		Last Modified: Wed, 14 Jun 2017 21:34:02 GMT  
		Size: 2.3 MB (2281372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd51767d37a6807c7a5e4e9d59e31b46313a6151b4d881604db424dae596db23`  
		Last Modified: Wed, 14 Jun 2017 21:34:34 GMT  
		Size: 67.5 MB (67522576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92705826f9b6ce2fbc7893291ec582ec8948e5594caa1d34ca38d911c405eb35`  
		Last Modified: Thu, 22 Jun 2017 21:07:51 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72ef3e7cb7ecb46fc683b2ec01f6419e65a974ee98a5e7757142dfc74862897`  
		Last Modified: Thu, 22 Jun 2017 21:08:49 GMT  
		Size: 14.5 MB (14517896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de47b37be6268deda190f37d61b2f92edc718795be97ec91b79eec0a34eed2`  
		Last Modified: Thu, 22 Jun 2017 21:08:48 GMT  
		Size: 4.2 MB (4223457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:9077f4ea68b38cf9e2758a35a6985978525d563c458013d16fe5c1bdc5d0cf16
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 MB (260254151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4fb018325a156eea640c03685bfc42c4e8c7c834c2d691f9300a77b8511e1c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:28:40 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 14 Jun 2017 02:29:04 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 14 Jun 2017 02:29:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:32:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:32:19 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:03:55 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:03:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:03:57 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:03:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 22 Jun 2017 21:04:23 GMT
ENV PASSENGER_VERSION=5.1.5
# Thu, 22 Jun 2017 21:04:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 21:04:48 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 22 Jun 2017 21:04:48 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5e651d20e30e96cc7d2c3c692a2a2d4c4a2b6fda09dc2b6644460f93b716b8`  
		Last Modified: Wed, 14 Jun 2017 21:34:02 GMT  
		Size: 2.3 MB (2281372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd51767d37a6807c7a5e4e9d59e31b46313a6151b4d881604db424dae596db23`  
		Last Modified: Wed, 14 Jun 2017 21:34:34 GMT  
		Size: 67.5 MB (67522576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92705826f9b6ce2fbc7893291ec582ec8948e5594caa1d34ca38d911c405eb35`  
		Last Modified: Thu, 22 Jun 2017 21:07:51 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72ef3e7cb7ecb46fc683b2ec01f6419e65a974ee98a5e7757142dfc74862897`  
		Last Modified: Thu, 22 Jun 2017 21:08:49 GMT  
		Size: 14.5 MB (14517896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de47b37be6268deda190f37d61b2f92edc718795be97ec91b79eec0a34eed2`  
		Last Modified: Thu, 22 Jun 2017 21:08:48 GMT  
		Size: 4.2 MB (4223457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.6`

```console
$ docker pull redmine@sha256:e6a5e6860fd55b140e5f7802b9e52158f9b06bf0b0148a2d53e9156329dcb098
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250727909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c563ce7288701d164325cae4c15b28ff3b0deeaa796331a9d42bcfb6f98058`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:34:47 GMT
ENV REDMINE_VERSION=3.2.6
# Wed, 14 Jun 2017 02:34:48 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Wed, 14 Jun 2017 02:34:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:37:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:37:32 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:05:14 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:05:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:05:15 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:05:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576d81d180031babe9deeec205cbaff2544ba42ba4403d79ffd5236c73da68d8`  
		Last Modified: Wed, 14 Jun 2017 21:36:37 GMT  
		Size: 2.3 MB (2345895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2758486575b6a058fa2fa5bf9c1f8e21c19a569d92fe24569f3638370992b3`  
		Last Modified: Wed, 14 Jun 2017 21:36:52 GMT  
		Size: 76.7 MB (76673165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d212f5811bca52f5c063c202db2b9e48cd9d5452f6213606560a7de41ee7bb`  
		Last Modified: Thu, 22 Jun 2017 21:09:47 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:e6a5e6860fd55b140e5f7802b9e52158f9b06bf0b0148a2d53e9156329dcb098
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250727909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c563ce7288701d164325cae4c15b28ff3b0deeaa796331a9d42bcfb6f98058`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:34:47 GMT
ENV REDMINE_VERSION=3.2.6
# Wed, 14 Jun 2017 02:34:48 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Wed, 14 Jun 2017 02:34:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:37:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:37:32 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:05:14 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:05:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:05:15 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:05:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576d81d180031babe9deeec205cbaff2544ba42ba4403d79ffd5236c73da68d8`  
		Last Modified: Wed, 14 Jun 2017 21:36:37 GMT  
		Size: 2.3 MB (2345895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2758486575b6a058fa2fa5bf9c1f8e21c19a569d92fe24569f3638370992b3`  
		Last Modified: Wed, 14 Jun 2017 21:36:52 GMT  
		Size: 76.7 MB (76673165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d212f5811bca52f5c063c202db2b9e48cd9d5452f6213606560a7de41ee7bb`  
		Last Modified: Thu, 22 Jun 2017 21:09:47 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.6-passenger`

```console
$ docker pull redmine@sha256:73dd0a7320eaa601504a52d8fc0590ede0ea026bf8eca386959b34a321d794fa
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.6-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269469162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c80f66776abe5eb1d82101895b84ac060cb2317e0dfc051a57cb2a8f384b4e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:34:47 GMT
ENV REDMINE_VERSION=3.2.6
# Wed, 14 Jun 2017 02:34:48 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Wed, 14 Jun 2017 02:34:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:37:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:37:32 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:05:14 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:05:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:05:15 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:05:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 22 Jun 2017 21:05:41 GMT
ENV PASSENGER_VERSION=5.1.5
# Thu, 22 Jun 2017 21:05:58 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 21:06:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 22 Jun 2017 21:06:01 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576d81d180031babe9deeec205cbaff2544ba42ba4403d79ffd5236c73da68d8`  
		Last Modified: Wed, 14 Jun 2017 21:36:37 GMT  
		Size: 2.3 MB (2345895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2758486575b6a058fa2fa5bf9c1f8e21c19a569d92fe24569f3638370992b3`  
		Last Modified: Wed, 14 Jun 2017 21:36:52 GMT  
		Size: 76.7 MB (76673165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d212f5811bca52f5c063c202db2b9e48cd9d5452f6213606560a7de41ee7bb`  
		Last Modified: Thu, 22 Jun 2017 21:09:47 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3177c8155024d4ea4f48cac76c33fd2191c413aa1f240cac2d662717c4b7a560`  
		Last Modified: Thu, 22 Jun 2017 21:10:48 GMT  
		Size: 14.5 MB (14517797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b786e804af009e6694f2ddfe5384f0d3b7191efbbb00b463e45e14d3b3e6c91a`  
		Last Modified: Thu, 22 Jun 2017 21:10:45 GMT  
		Size: 4.2 MB (4223456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:73dd0a7320eaa601504a52d8fc0590ede0ea026bf8eca386959b34a321d794fa
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269469162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c80f66776abe5eb1d82101895b84ac060cb2317e0dfc051a57cb2a8f384b4e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:34:47 GMT
ENV REDMINE_VERSION=3.2.6
# Wed, 14 Jun 2017 02:34:48 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Wed, 14 Jun 2017 02:34:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:37:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:37:32 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:05:14 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:05:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:05:15 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:05:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 22 Jun 2017 21:05:41 GMT
ENV PASSENGER_VERSION=5.1.5
# Thu, 22 Jun 2017 21:05:58 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 21:06:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 22 Jun 2017 21:06:01 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576d81d180031babe9deeec205cbaff2544ba42ba4403d79ffd5236c73da68d8`  
		Last Modified: Wed, 14 Jun 2017 21:36:37 GMT  
		Size: 2.3 MB (2345895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2758486575b6a058fa2fa5bf9c1f8e21c19a569d92fe24569f3638370992b3`  
		Last Modified: Wed, 14 Jun 2017 21:36:52 GMT  
		Size: 76.7 MB (76673165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d212f5811bca52f5c063c202db2b9e48cd9d5452f6213606560a7de41ee7bb`  
		Last Modified: Thu, 22 Jun 2017 21:09:47 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3177c8155024d4ea4f48cac76c33fd2191c413aa1f240cac2d662717c4b7a560`  
		Last Modified: Thu, 22 Jun 2017 21:10:48 GMT  
		Size: 14.5 MB (14517797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b786e804af009e6694f2ddfe5384f0d3b7191efbbb00b463e45e14d3b3e6c91a`  
		Last Modified: Thu, 22 Jun 2017 21:10:45 GMT  
		Size: 4.2 MB (4223456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.3`

```console
$ docker pull redmine@sha256:5e8574868a1d87a816f4c0052cfa2de2b6ec216d5a3fbce48c17e5cfebff70d2
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250770861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a8261964bc8630db43195fcf3a0a3ae4e3e30555cfb70214ff62a2a79c25db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_VERSION=3.3.3
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Wed, 14 Jun 2017 02:39:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:42:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:42:20 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:06:26 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:06:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:06:28 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:06:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db04ac5956e64fbc2db71af59bb25fcdd3982333f7bb12c9667c70c1d54f154`  
		Last Modified: Wed, 14 Jun 2017 21:38:51 GMT  
		Size: 2.4 MB (2388310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef87d2175ec94d846f0a3528df2a094fae34c1d41799060dd5dad1eb9811936`  
		Last Modified: Wed, 14 Jun 2017 21:39:06 GMT  
		Size: 76.7 MB (76673701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad64936b539efa1dc1da15ed94a0fadd3741dbb7e571d84862d90ad6e1062b7`  
		Last Modified: Thu, 22 Jun 2017 21:11:45 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:5e8574868a1d87a816f4c0052cfa2de2b6ec216d5a3fbce48c17e5cfebff70d2
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250770861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a8261964bc8630db43195fcf3a0a3ae4e3e30555cfb70214ff62a2a79c25db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_VERSION=3.3.3
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Wed, 14 Jun 2017 02:39:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:42:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:42:20 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:06:26 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:06:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:06:28 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:06:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db04ac5956e64fbc2db71af59bb25fcdd3982333f7bb12c9667c70c1d54f154`  
		Last Modified: Wed, 14 Jun 2017 21:38:51 GMT  
		Size: 2.4 MB (2388310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef87d2175ec94d846f0a3528df2a094fae34c1d41799060dd5dad1eb9811936`  
		Last Modified: Wed, 14 Jun 2017 21:39:06 GMT  
		Size: 76.7 MB (76673701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad64936b539efa1dc1da15ed94a0fadd3741dbb7e571d84862d90ad6e1062b7`  
		Last Modified: Thu, 22 Jun 2017 21:11:45 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:5e8574868a1d87a816f4c0052cfa2de2b6ec216d5a3fbce48c17e5cfebff70d2
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250770861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a8261964bc8630db43195fcf3a0a3ae4e3e30555cfb70214ff62a2a79c25db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_VERSION=3.3.3
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Wed, 14 Jun 2017 02:39:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:42:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:42:20 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:06:26 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:06:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:06:28 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:06:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db04ac5956e64fbc2db71af59bb25fcdd3982333f7bb12c9667c70c1d54f154`  
		Last Modified: Wed, 14 Jun 2017 21:38:51 GMT  
		Size: 2.4 MB (2388310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef87d2175ec94d846f0a3528df2a094fae34c1d41799060dd5dad1eb9811936`  
		Last Modified: Wed, 14 Jun 2017 21:39:06 GMT  
		Size: 76.7 MB (76673701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad64936b539efa1dc1da15ed94a0fadd3741dbb7e571d84862d90ad6e1062b7`  
		Last Modified: Thu, 22 Jun 2017 21:11:45 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:5e8574868a1d87a816f4c0052cfa2de2b6ec216d5a3fbce48c17e5cfebff70d2
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250770861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a8261964bc8630db43195fcf3a0a3ae4e3e30555cfb70214ff62a2a79c25db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_VERSION=3.3.3
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Wed, 14 Jun 2017 02:39:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:42:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:42:20 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:06:26 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:06:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:06:28 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:06:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db04ac5956e64fbc2db71af59bb25fcdd3982333f7bb12c9667c70c1d54f154`  
		Last Modified: Wed, 14 Jun 2017 21:38:51 GMT  
		Size: 2.4 MB (2388310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef87d2175ec94d846f0a3528df2a094fae34c1d41799060dd5dad1eb9811936`  
		Last Modified: Wed, 14 Jun 2017 21:39:06 GMT  
		Size: 76.7 MB (76673701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad64936b539efa1dc1da15ed94a0fadd3741dbb7e571d84862d90ad6e1062b7`  
		Last Modified: Thu, 22 Jun 2017 21:11:45 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.3-passenger`

```console
$ docker pull redmine@sha256:3c73998d7735eb2898853e5044fed6985c0d0b45daff6a07f7b19a5b98575866
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.3-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269512116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771d29a06b253cda9586880edb0ec3571c208364b758fd10c0945ff5a95c0a76`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_VERSION=3.3.3
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Wed, 14 Jun 2017 02:39:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:42:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:42:20 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:06:26 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:06:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:06:28 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:06:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 22 Jun 2017 21:06:54 GMT
ENV PASSENGER_VERSION=5.1.5
# Thu, 22 Jun 2017 21:07:16 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 21:07:18 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 22 Jun 2017 21:07:19 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db04ac5956e64fbc2db71af59bb25fcdd3982333f7bb12c9667c70c1d54f154`  
		Last Modified: Wed, 14 Jun 2017 21:38:51 GMT  
		Size: 2.4 MB (2388310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef87d2175ec94d846f0a3528df2a094fae34c1d41799060dd5dad1eb9811936`  
		Last Modified: Wed, 14 Jun 2017 21:39:06 GMT  
		Size: 76.7 MB (76673701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad64936b539efa1dc1da15ed94a0fadd3741dbb7e571d84862d90ad6e1062b7`  
		Last Modified: Thu, 22 Jun 2017 21:11:45 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d2474cd2fe965e7c571f1fb07cc91f437e0f7ead2b7d6d03b17e613aba16fc`  
		Last Modified: Thu, 22 Jun 2017 21:13:37 GMT  
		Size: 14.5 MB (14517788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1886b8c5921d52048c2baa7a58ccf09aca1c2c782f4a973a4500d0b511e855b`  
		Last Modified: Thu, 22 Jun 2017 21:13:35 GMT  
		Size: 4.2 MB (4223467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:3c73998d7735eb2898853e5044fed6985c0d0b45daff6a07f7b19a5b98575866
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269512116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771d29a06b253cda9586880edb0ec3571c208364b758fd10c0945ff5a95c0a76`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_VERSION=3.3.3
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Wed, 14 Jun 2017 02:39:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:42:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:42:20 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:06:26 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:06:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:06:28 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:06:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 22 Jun 2017 21:06:54 GMT
ENV PASSENGER_VERSION=5.1.5
# Thu, 22 Jun 2017 21:07:16 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 21:07:18 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 22 Jun 2017 21:07:19 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db04ac5956e64fbc2db71af59bb25fcdd3982333f7bb12c9667c70c1d54f154`  
		Last Modified: Wed, 14 Jun 2017 21:38:51 GMT  
		Size: 2.4 MB (2388310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef87d2175ec94d846f0a3528df2a094fae34c1d41799060dd5dad1eb9811936`  
		Last Modified: Wed, 14 Jun 2017 21:39:06 GMT  
		Size: 76.7 MB (76673701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad64936b539efa1dc1da15ed94a0fadd3741dbb7e571d84862d90ad6e1062b7`  
		Last Modified: Thu, 22 Jun 2017 21:11:45 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d2474cd2fe965e7c571f1fb07cc91f437e0f7ead2b7d6d03b17e613aba16fc`  
		Last Modified: Thu, 22 Jun 2017 21:13:37 GMT  
		Size: 14.5 MB (14517788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1886b8c5921d52048c2baa7a58ccf09aca1c2c782f4a973a4500d0b511e855b`  
		Last Modified: Thu, 22 Jun 2017 21:13:35 GMT  
		Size: 4.2 MB (4223467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:3c73998d7735eb2898853e5044fed6985c0d0b45daff6a07f7b19a5b98575866
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269512116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771d29a06b253cda9586880edb0ec3571c208364b758fd10c0945ff5a95c0a76`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_VERSION=3.3.3
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Wed, 14 Jun 2017 02:39:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:42:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:42:20 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:06:26 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:06:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:06:28 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:06:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 22 Jun 2017 21:06:54 GMT
ENV PASSENGER_VERSION=5.1.5
# Thu, 22 Jun 2017 21:07:16 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 21:07:18 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 22 Jun 2017 21:07:19 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db04ac5956e64fbc2db71af59bb25fcdd3982333f7bb12c9667c70c1d54f154`  
		Last Modified: Wed, 14 Jun 2017 21:38:51 GMT  
		Size: 2.4 MB (2388310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef87d2175ec94d846f0a3528df2a094fae34c1d41799060dd5dad1eb9811936`  
		Last Modified: Wed, 14 Jun 2017 21:39:06 GMT  
		Size: 76.7 MB (76673701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad64936b539efa1dc1da15ed94a0fadd3741dbb7e571d84862d90ad6e1062b7`  
		Last Modified: Thu, 22 Jun 2017 21:11:45 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d2474cd2fe965e7c571f1fb07cc91f437e0f7ead2b7d6d03b17e613aba16fc`  
		Last Modified: Thu, 22 Jun 2017 21:13:37 GMT  
		Size: 14.5 MB (14517788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1886b8c5921d52048c2baa7a58ccf09aca1c2c782f4a973a4500d0b511e855b`  
		Last Modified: Thu, 22 Jun 2017 21:13:35 GMT  
		Size: 4.2 MB (4223467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:3c73998d7735eb2898853e5044fed6985c0d0b45daff6a07f7b19a5b98575866
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269512116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771d29a06b253cda9586880edb0ec3571c208364b758fd10c0945ff5a95c0a76`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 18:19:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 18:19:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 12 Jun 2017 18:25:51 GMT
ENV RUBY_MAJOR=2.2
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 12 Jun 2017 18:25:52 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 12 Jun 2017 18:25:53 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 12 Jun 2017 18:28:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 12 Jun 2017 18:28:25 GMT
ENV BUNDLER_VERSION=1.15.1
# Mon, 12 Jun 2017 18:28:26 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 12 Jun 2017 18:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 12 Jun 2017 18:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 18:28:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 12 Jun 2017 18:28:30 GMT
CMD ["irb"]
# Wed, 14 Jun 2017 02:26:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Jun 2017 02:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:26:55 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Jun 2017 02:27:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Jun 2017 02:27:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Jun 2017 02:27:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Jun 2017 02:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 02:28:38 GMT
ENV RAILS_ENV=production
# Wed, 14 Jun 2017 02:28:39 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_VERSION=3.3.3
# Wed, 14 Jun 2017 02:39:38 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Wed, 14 Jun 2017 02:39:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Jun 2017 02:42:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Jun 2017 02:42:20 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 22 Jun 2017 21:06:26 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 22 Jun 2017 21:06:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Jun 2017 21:06:28 GMT
EXPOSE 3000/tcp
# Thu, 22 Jun 2017 21:06:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 22 Jun 2017 21:06:54 GMT
ENV PASSENGER_VERSION=5.1.5
# Thu, 22 Jun 2017 21:07:16 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Jun 2017 21:07:18 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 22 Jun 2017 21:07:19 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbca5114dc89ab2eed1def14cd65e5ce4d6b3aa704ca6225e794822956b130d`  
		Last Modified: Wed, 14 Jun 2017 21:34:23 GMT  
		Size: 10.2 MB (10155053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889a7222002c1cdf6d8da9eb8fd5b5a53baf1624d8a128473f34591d3603124`  
		Last Modified: Wed, 14 Jun 2017 21:34:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c696e579d2a3220a0bef02b125be0426089e2f14db814b590b3183ec6d9a0f`  
		Last Modified: Wed, 14 Jun 2017 21:34:28 GMT  
		Size: 33.8 MB (33826108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcc8f32e7c5607f299fabaae674d854a2f282cb278e47004913bd24110e9af6`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 677.9 KB (677898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff2dfeaeff576bc72835c4993dce43998c1f60220ecf3f29166d3009c7dbe59`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831cd97aca58678fde05561abf4e81977e52cb58fac7aa0a777098a37b5c101`  
		Last Modified: Wed, 14 Jun 2017 21:34:05 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdcbb40078369911c192eaf684c146e6cfbee7b607aa13393ddcee97e4eb1d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:08 GMT  
		Size: 14.4 MB (14421953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d9d0d6f47eb2be24eee5fb03098719f5b35363bf9ec6b24e4f68b21684faf`  
		Last Modified: Wed, 14 Jun 2017 21:34:03 GMT  
		Size: 818.8 KB (818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfc2bd0dada890368a5cc938a1441967c602a70ac60a361219ef42203566fc0`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6880b8454cabe1da0825f49ab648f2ab49581bb6008098e29e7d13ad4c39f0d3`  
		Last Modified: Wed, 14 Jun 2017 21:34:35 GMT  
		Size: 59.2 MB (59229367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8941ede27834776f2bd73e0f1239b4a2447976253899a9a2ca3507cf5db5e`  
		Last Modified: Wed, 14 Jun 2017 21:34:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db04ac5956e64fbc2db71af59bb25fcdd3982333f7bb12c9667c70c1d54f154`  
		Last Modified: Wed, 14 Jun 2017 21:38:51 GMT  
		Size: 2.4 MB (2388310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef87d2175ec94d846f0a3528df2a094fae34c1d41799060dd5dad1eb9811936`  
		Last Modified: Wed, 14 Jun 2017 21:39:06 GMT  
		Size: 76.7 MB (76673701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad64936b539efa1dc1da15ed94a0fadd3741dbb7e571d84862d90ad6e1062b7`  
		Last Modified: Thu, 22 Jun 2017 21:11:45 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d2474cd2fe965e7c571f1fb07cc91f437e0f7ead2b7d6d03b17e613aba16fc`  
		Last Modified: Thu, 22 Jun 2017 21:13:37 GMT  
		Size: 14.5 MB (14517788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1886b8c5921d52048c2baa7a58ccf09aca1c2c782f4a973a4500d0b511e855b`  
		Last Modified: Thu, 22 Jun 2017 21:13:35 GMT  
		Size: 4.2 MB (4223467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
